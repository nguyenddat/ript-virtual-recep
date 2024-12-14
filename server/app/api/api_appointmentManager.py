import os
from sqlalchemy import and_
from typing import Optional, List, Dict, Union
from datetime import datetime, date
from fastapi import APIRouter, HTTPException, status, UploadFile, File, Depends
from fastapi.responses import FileResponse

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

# def check_role(role):
#     if role == "student":
#         return SinhVien
#     elif role == "officer":
#         return CanBo
#     return Khach

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
    cuoc_hen = AppointmentManager.check_appointment(db = db,
                                                    id = id, 
                                                    user = current_user)
    if not cuoc_hen:
        raise HTTPException(status_code = status.HTTP_403_FORBIDDEN, detail = "Bạn không có cuộc hẹn này")
    qr_path = os.path.join(os.getcwd(), "app", cuoc_hen.qr_path)
    return FileResponse(qr_path, media_type="image/png")

@router.post("/api/appointments/check-appointment/")
def check_appointment(data: str,
                      db = Depends(get_db)):
    
    appointment_id = QR_manager.decode_qr_code(file_bytes)
    
    if not appointment_id.isdigit():
        raise HTTPException(status_code=400, detail="Dữ liệu QR code không hợp lệ")
    
    return AppointmentManager.checkin_appointment(db = db, id = appointment_id)