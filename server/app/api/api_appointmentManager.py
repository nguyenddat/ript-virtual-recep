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
from app.helper.update_expired import update_expired_status
from app.services.AppointmentManager import AppointmentManager

router = APIRouter()

def check_role(role):
    if role == "student":
        return SinhVien
    elif role == "officer":
        return CanBo
    return Khach

@router.get("/api/appointments/stats/by-user")
def get_appointments_by_user(current_user = Depends(login_required),
                             permission: PermissionRequired = Depends(PermissionRequired("admin")),
                             cccd_id: str,
                             role: Optional[str] = None,
                             trang_thai: Optional[str] = None,
                             start_date: Optional[date] = None,
                             end_date: Optional[date] = None,
                             db = Depends(get_db)):
    update_expired_status()
    payload = AppointmentManager.get_appointment_by_user(
        cccd_id = cccd_id,
        role = role,
        trang_thai = trang_thai,
        start_date = start_date,
        end_date = end_date
    )
    return {"success": True, "payload": payload, "error": None}
            
@router.post("/api/appointments/create")
def create_appointments(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin")),
    data: Dict[str, Union[List[str], str]]
):
    AppointmentManager.post_appointment(data)
    return {"success": True, "error": None}

@router.get("/api/appointments/stats/by-month")
def get_appointments_by_month(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    return AppointmentManager.get_appointment_by_month()

@router.get("/api/appointments/stats/all-month")
def get_appointments_all_month(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    return AppointmentManager.get_appointment_all_month()

@router.get("/api/appointments/stats/by-department")
def get_appoiments_by_department(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    return AppointmentManager.get_most_appointment_department()

@router.get("/api/appointments/stats/by-week")
def get_appointments_by_week(
    current_user = Depends(login_required),
    permission: PermissionRequired = Depends(PermissionRequired("admin"))
):
    return AppointmentManager.get_appointment_by_week()

@router.get("/download/qr/{filename}")
def download_qr(filename: str):
    file_path = os.path.join(QR_manager.qr_dir, filename)
    if not file_path.exists():
        raise HTTPException(status_code=404, detail="File không tồn tại")
    return FileResponse(file_path, media_type="image/png", filename=filename)

@router.get("/download/pdf/{filename}")
def download_pdf(filename: str):
    file_path = os.path.join(QRManager.pdf_dir, filename)
    if not file_path.exists():
        raise HTTPException(status_code=404, detail="File không tồn tại")
    return FileResponse(file_path, media_type="application/pdf", filename=filename)

@router.post("/check-appointment/")
async def check_appointment(file: UploadFile = File(...)):
    if file.content_type not in ["image/png", "image/jpeg"]:
        raise HTTPException(status_code=400, detail="Chỉ hỗ trợ các định dạng ảnh PNG và JPEG")

    file_bytes = await file.read()
    appointment_id = QR_manager.decode_qr_code(file_bytes)
    
    if not appointment_id.isdigit():
        raise HTTPException(status_code=400, detail="Dữ liệu QR code không hợp lệ")
    
    payload = {}
    with next(get_db()) as db:
        cuoc_hen = db.query(CuocHen).filter(CuocHen.id == int(appointment_id)).first()
        if not cuoc_hen:
            raise HTTPException(status_code=404, detail="Không tìm thấy lịch hẹn")
        payload.update({
            "id": cuoc_hen.id,
            "ngay_gio_bat_dau": cuoc_hen.ngay_gio_bat_dau,
            "ngay_gio_ket_thuc": cuoc_hen.ngay_gio_ket_thuc,
            "muc_dich": cuoc_hen.muc_dich,
            "trang_thai": cuoc_hen.trang_thai,
            "ghi_chu": cuoc_hen.ghi_chu,
        })
        lich_hens = db.query(LichHen).filter(LichHen.cuoc_hen_id == int(appointment_id)).all()
        nguoi_hen = {}
        nguoi_duoc_hen = []
        for lich_hen in lich_hens:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
            base_role = check_role(nguoi_dung.vai_tro)
            thong_tin = db.query(base_role).filter(base_role.cccd_id == nguoi_dung.cccd_id).first()
            if lich_hen.nguoi_hen is True:
                nguoi_hen = {
                    "cccd_id": thong_tin.cccd_id,
                    "ho_ten": thong_tin.ho_ten,
                    "gioi_tinh": thong_tin.gioi_tinh,
                    "email": thong_tin.email,
                    "vai_tro": nguoi_dung.vai_tro
                }
            else:
                nguoi_duoc_hen.append({
                    "cccd_id": thong_tin.cccd_id,
                    "ho_ten": thong_tin.ho_ten,
                    "gioi_tinh": thong_tin.gioi_tinh,
                    "email": thong_tin.email,
                    "vai_tro": nguoi_dung.vai_tro
                })
        payload.update({"nguoi_hen": nguoi_hen})
        payload.update({"nguoi_duoc_hen": nguoi_duoc_hen})
        return {"success": True, "payload": payload, "error": None}
                