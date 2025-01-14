import os
from sqlalchemy import and_
from typing import Optional, List, Dict, Union
from datetime import datetime, date
from fastapi import APIRouter, HTTPException, status, UploadFile, File, Depends
from fastapi.responses import FileResponse
from .. services.QRmanager import *
from app.db.base import get_db

from app.models.sinh_vien import SinhVien
from app.models.nguoi_dung import NguoiDung
from app.models.lich_hen import LichHen
from app.models.phong_ban import PhongBan
from app.models.can_bo import CanBo
from app.models.cuoc_hen import CuocHen
from app.models.khach import Khach

from app.helper.update_expired import update_expired_status, update_finish_status
from app.helper.login_manager import PermissionRequired, login_required 

from app.services.AppointmentManager import AppointmentManager

router = APIRouter()

@router.get("/api/appointments/stats/by-user")
def get_appointments_by_user(current_user = Depends(login_required),
                             db = Depends(get_db)):
    update_expired_status()
    update_finish_status()
    payload = AppointmentManager.get_appointment_by_user(
        user = current_user,
        db = db
    )   
    return {"success": True, "payload": payload, "error": None}
            
@router.post("/api/appointments/create")
def create_appointments(
    data: Dict[str, Union[List[str], str]],
    current_user = Depends(login_required)
):
    AppointmentManager.post_appointment(data)
    return {"success": True, "error": None}

@router.post("/api/appointments/create/public")
def create_appointments(data: Dict[str, Union[List[str], str]]):
    AppointmentManager.post_appointment_public(data)
    return {"success": True, "error": None}
    
@router.get("/api/appointments/stats/by-month")
def get_appointments_by_month(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    try:
        return {
            "success": True,
            "payload": AppointmentManager.get_appointment_by_month()
        }
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = "Lỗi lấy dữ liệu by-month")
    
@router.get("/api/appointments/stats/all-month")
def get_appointments_all_month(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    try:
        return {
            "success": True, 
            "payload": AppointmentManager.get_appointment_all_month()
        }
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = "Lỗi lấy dữ liệu all-month")        

@router.get("/api/appointments/stats/by-department")
def get_appoiments_by_department(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    try:
        return {
            "success": True, 
            "payload": AppointmentManager.get_most_appointment_department()
        }
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = "Lỗi lấy dữ liệu by-department")        

@router.get("/api/appointments/get")
def get_appointments_all(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))    
):
    return {
        "success": True, 
        "payload": AppointmentManager.get_all_appointment()
    }

@router.get("/api/appointments/download-qr-code")
def download_qr(
    id: str,
    current_user = Depends(login_required),
    db = Depends(get_db)
):
    cuoc_hen = AppointmentManager.check_appointment(db = db, id = id, user = current_user)
    if not cuoc_hen:
        raise HTTPException(status_code = status.HTTP_403_FORBIDDEN, detail = "Bạn không có cuộc hẹn này")
    qr_path = os.path.join(os.getcwd(), "app", cuoc_hen.qr_path)
    return FileResponse(qr_path, media_type="image/png")

@router.post("/api/appointments/check-appointment/")
async def check_appointment(file: UploadFile = File(...), db= Depends(get_db)):
    if file.content_type not in ["image/png", "image/jpeg", "image/jpg"]:
        raise HTTPException(status_code=400, detail="Chỉ hỗ trợ định dạng PNG, JPEG, JPG.")

    try:
        file_bytes = await file.read()  
        appointment_id = QR_manager.decode_qr_code(file_bytes)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
    except Exception as e:
        # Trả về thông báo lỗi cụ thể hơn
        raise HTTPException(status_code=500, detail=f"Lỗi khi xử lý file ảnh: {str(e)}")
    
    # Kiểm tra lịch hẹn
    try:
        appointment = AppointmentManager.checkin_appointment(db=db, id=appointment_id)
    except HTTPException as e:
        raise e
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Lỗi khi kiểm tra lịch hẹn: {str(e)}")
    
    return appointment