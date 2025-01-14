# import os
# import time
# import asyncio
# import logging
# import shutil
# from typing import List, AnyStr, Dict, Union

# from sqlalchemy import update
# from fastapi import APIRouter, WebSocket, WebSocketDisconnect, HTTPException, status, WebSocketException

# from app.services.ConnectionManager import connection_manager
# from app.services.ImageManager import image_manager
# from app.services.ModelManager import model_manager
# from app.services.ExtractCCCD import extract_data

# from app.db.base import get_db

# from app.models.sinh_vien import SinhVien
# from app.models.can_bo import CanBo
# from app.models.khach import Khach

# from app.schemas.face_recognition.UpdateIdentityData import *
# from app.schemas.base import ResponseSchemaBase

# router = APIRouter()
# TIMEOUT = 10
# logger = logging.getLogger(__name__)

# @router.websocket("/ws")
# async def websocket_endpoint(websocket: WebSocket):
#     try:
#         await connection_manager.connect(websocket)
#         id_cccd: str = None
#         t0 = time.time()
#         try:    
#             id_cccd = await asyncio.wait_for(
#             websocket.receive_text(),
#             timeout = TIMEOUT - (time.time() - t0)
#             )
#         except asyncio.TimeoutError:
#             await websocket.close(code=status.WS_1008_POLICY_VIOLATION)
#             raise WebSocketException(code=status.WS_1008_POLICY_VIOLATION, reason = "Không nhận được ip cccd sau 10s")
            
#         connection_manager.update(websocket, id_cccd)
#         while True:
#             data = await websocket.receive_text()
#             try:
#                 result = model_manager.predict(data)
#                 print(result)
#                 await connection_manager.send_response({"success": True, "event": "webcam", "payload": result}, websocket)
#             except Exception as err:
#                 await connection_manager.send_response({"success": False, "event": "webcam", "payload": [],
#                     "error": {
#                         "code": status.HTTP_400_BAD_REQUEST,
#                         "message": err
#                     }
#                 }, websocket) 
#     except WebSocketDisconnect:
#         connection_manager.disconnect(websocket)
#     except:
#         connection_manager.disconnect(websocket)
#         raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail=Exception)

# @router.post("/api/get-identity")
# async def get_identity(data: List[AnyStr]):
#     global decoded_data
#     try:
#         websocket: WebSocket = []
#         for ws, id in connection_manager.get_active_connections().items():
#             if id == "kiosk_1":
#                 websocket.append(ws)
#         if len(websocket) == 0:
#             raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Không tìm thấy websocket nào")

#         decoded_data = extract_data(data)
#         print(decoded_data)
#         await connection_manager.broadcast_some({
#                 "success": True,
#                 "event": "cccd",
#                 "payload": decoded_data,
#                 "error": None
#             },
#             websocket_list = websocket)
#         return {"success": True, "error": None}
#     except Exception as err:
#         raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=err)
#     finally:
#         with next(get_db()) as db:
#             search = db.query(SinhVien).filter(SinhVien.cccd_id == decoded_data["Identity Code"]).first() \
#             or \
#             db.query(CanBo).filter(CanBo.cccd_id == decoded_data["Identity Code"]).first()\
#             or \
#             db.query(Khach).filter(Khach.cccd_id == decoded_data["Identity Code"]).first()
            
#             if search:
#                 search.ngay_sinh = decoded_data["DOB"]
#                 search.gioi_tinh = decoded_data["Gender"]
#                 db.commit()
#                 db.refresh(search)

# @router.post('/api/identity-data/update', response_model = ResponseSchemaBase)
# async def post_personal_img(data: IdentityDataUpdateRequest):
#     if not data:
#         raise HTTPException(
#             status_code=status.HTTP_400_BAD_REQUEST,
#             detail="Không có dữ liệu"
#         )

#     b64_img = data.b64_img
#     personal_data = data.cccd
#     role = data.role
#     personal_id = personal_data.get('Identity Code')

#     if not personal_id or not role:
#         raise HTTPException(
#             status_code=status.HTTP_400_BAD_REQUEST,
#             detail="Thiếu thông tin định danh"
#         )

#     personal_data['role'] = role
#     if role != "guest":
#         personal_data['department_code'] = data.department_code
#         personal_data['personal_code'] = data.personal_code
    
#     save_img_path = os.path.join(os.getcwd(), "app", "data", f"{personal_id}")
#     static_dir = os.path.join(os.getcwd(), "app", "static", "data", f"{personal_id}")

#     save_img_path = os.path.join(os.getcwd(), "app", "data", f"{personal_id}")
#     static_dir = os.path.join(os.getcwd(), "app", "static", "data", f"{personal_id}")

#     for path in [save_img_path, static_dir]:
#         if os.path.exists(path):
#             shutil.rmtree(path)        
#     model_manager.delete_data(personal_id)
    
#     try:
#         os.makedirs(save_img_path)
#         os.makedirs(static_dir)

#         for id, img in enumerate(b64_img):
#             img_path = os.path.join(save_img_path, f'{personal_id}_{id}.png')
#             static_img_path = os.path.join(static_dir, f'{personal_id}_{id}.png')
            
#             image_manager.save_img_from_base64(img, img_path)
#             image_manager.save_img_from_base64(img, static_img_path)            
#             print(f"Lưu thành công ảnh: {personal_id}_{id}.png")

#         model_manager.update_data(save_img_path, personal_data)

#         return {"success": True}

#     except Exception as e:
#         for path in [save_img_path, static_dir]:
#             if os.path.exists(path):
#                 shutil.rmtree(path)        
#         model_manager.delete_data(personal_id)

#         raise HTTPException(
#             status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
#             detail=f"Lỗi xử lý: {str(e)}"
#         )
