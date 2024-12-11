import os
import time
import asyncio
import logging
import shutil
from typing import List, AnyStr, Dict, Union

from sqlalchemy import update
from fastapi import APIRouter, WebSocket, WebSocketDisconnect, HTTPException, status, WebSocketException

from app.services import ConnectionManager, ImageManager, ModelManager, ExtractCCCD

from app.db.base import get_db

from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach

from app.schemas.face_recognition.update_identity_data import *
from app.schemas.base import ResponseSchemaBase

router = APIRouter()
connection_manager = ConnectionManager.ConnectionManager()
image_manager = ImageManager.ImageManager()
model_manager = ModelManager.ModelManager()
TIMEOUT = 10
logger = logging.getLogger(__name__)

@router.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):
    try:
        await connection_manager.connect(websocket)
        id_cccd: str = None
        t0 = time.time()
        try:    
            id_cccd = await asyncio.wait_for(
            websocket.receive_text(),
            timeout = TIMEOUT - (time.time() - t0)
            )
        except asyncio.TimeoutError:
            await websocket.close(code=status.WS_1008_POLICY_VIOLATION)
            raise WebSocketException(code=status.WS_1008_POLICY_VIOLATION, reason = "Không nhận được ip cccd sau 10s")
            
        connection_manager.update(websocket, id_cccd)
        while True:
            data = await websocket.receive_text()
            try:
                result = model_manager.predict(data, image_manager)
                print(result)
                await connection_manager.send_response({"success": True, "event": "webcam", "payload": result}, websocket)
            except Exception as err:
                await connection_manager.send_response({"success": False, "event": "webcam", "payload": [],
                    "error": {
                        "code": status.HTTP_400_BAD_REQUEST,
                        "message": err
                    }
                }, websocket) 
    except WebSocketDisconnect:
        connection_manager.disconnect(websocket)
    except:
        connection_manager.disconnect(websocket)
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail=Exception)

@router.post("/api/get-identity")
async def get_identity(data: List[AnyStr]):
    global decoded_data
    try:
        # cccd_id = data["ip_cccd"]
        websocket: WebSocket = []
        for ws, id in connection_manager.get_active_connections().items():
            if id == "kiosk_1":
                websocket.append(ws)
        if len(websocket) == 0:
            raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Không tìm thấy websocket nào")

        # cccd_data = data["data"]
        decoded_data = ExtractCCCD.extract_data(data)
        print(decoded_data)
        await connection_manager.broadcast_some({
                "success": True,
                "event": "cccd",
                "payload": decoded_data,
                "error": None
            },
            websocket_list = websocket)
        return {"success": True, "error": None}
    except Exception as err:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=err)
    finally:
        with next(get_db()) as db:
            search = db.query(SinhVien).filter(SinhVien.cccd_id == decoded_data["Identity Code"]).first() \
            or \
            db.query(CanBo).filter(CanBo.cccd_id == decoded_data["Identity Code"]).first()\
            or \
            db.query(Khach).filter(Khach.cccd_id == decoded_data["Identity Code"]).first()
            
            if search:
                search.ngay_sinh = decoded_data["DOB"]
                search.gioi_tinh = decoded_data["Gender"]
                db.commit()
                db.refresh(search)

@router.post('/api/identity-data/update')
async def post_personal_img(data: IdentityDataUpdateRequest):
    # Kiểm tra dữ liệu đầu vào
    if not data:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Không có dữ liệu"
        )

    # Trích xuất dữ liệu từ request
    b64_img = data.b64_img
    personal_data = data.cccd
    role = data.role
    personal_id = personal_data.get('Identity Code', '')

    # Kiểm tra tính hợp lệ của dữ liệu
    if not personal_id or not role:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Thiếu thông tin định danh"
        )

    # Cập nhật thêm thông tin vai trò và phòng ban
    personal_data['role'] = role
    if role != "guest":
        personal_data['department_code'] = data.department_code
        personal_data['personal_code'] = data.personal_code
    
    # Xác định đường dẫn lưu trữ
    save_img_path = os.path.join(os.getcwd(), "app", "data", f"{personal_id}")
    static_dir = os.path.join(os.getcwd(), "app", "static", "data", f"{personal_id}")

    # Xác định đường dẫn lưu trữ
    save_img_path = os.path.join(os.getcwd(), "app", "data", f"{personal_id}")
    static_dir = os.path.join(os.getcwd(), "app", "static", "data", f"{personal_id}")

    # Xóa dữ liệu cũ nếu đã tồn tại
    for path in [save_img_path, static_dir]:
        if os.path.exists(path):
            shutil.rmtree(path)        
    model_manager.delete_data(personal_id)
    
    try:
        # Tạo thư mục mới
        os.makedirs(save_img_path)
        os.makedirs(static_dir)

        # Lưu ảnh
        for id, img in enumerate(b64_img):
            # Đường dẫn lưu ảnh
            img_path = os.path.join(save_img_path, f'{personal_id}_{id}.png')
            static_img_path = os.path.join(static_dir, f'{personal_id}_{id}.png')
            
            # Lưu ảnh
            image_manager.save_img_from_base64(img, img_path)
            image_manager.save_img_from_base64(img, static_img_path)            
            print(f"Lưu thành công ảnh: {personal_id}_{id}.png")

        # Cập nhật dữ liệu mô hình
        model_manager.update_data(save_img_path, image_manager, personal_data)

        return ResponseSchemaBase().success_response()

    except Exception as e:
        # Xóa dữ liệu nếu cập nhật lỗi
        for path in [save_img_path, static_dir]:
            if os.path.exists(path):
                shutil.rmtree(path)        
        model_manager.delete_data(personal_id)

        # Xử lý ngoại lệ chung
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Lỗi xử lý: {str(e)}"
        )
