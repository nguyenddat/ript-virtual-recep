import os
from sqlalchemy import and_
from typing import Optional, List, Dict, Union
from datetime import datetime, date
from fastapi import APIRouter, HTTPException, status, UploadFile, File, Depends
from fastapi.responses import FileResponse

from db.base import get_db
from models.sinh_vien import SinhVien
from models.nguoi_dung import NguoiDung
from models.lich_hen import LichHen
from models.phong_ban import PhongBan
from models.can_bo import CanBo
from models.cuoc_hen import CuocHen
from models.khach import Khach
from helper.update_expired import update_expired_status
from services.QRmanager import QRManager
from services.EmailManager import EmailManager

router = APIRouter()
QR_manager = QRManager()
email_manager = EmailManager()

def check_role(role):
    if role == "student":
        return SinhVien
    elif role == "officer":
        return CanBo
    return Khach

@router.get("/api/appointments/stats/by-user")
def get_appointments_by_user(
    cccd_id: str,
    role: Optional[str] = None,
    trang_thai: Optional[str] = None,
    start_date: Optional[date] = None,
    end_date: Optional[date] = None,
    db = Depends(get_db)):
    update_expired_status()
    if (role is not None) and (role not in ("guest", "student", "officer")):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f"Không tồn tại vai trò {role}")
    
    payload = []
    base_query_nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id)
    check_nguoi_dung = base_query_nguoi_dung.first()
    if not check_nguoi_dung:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Không tồn tại thông tin người dùng")
            
    lich_hens = db.query(LichHen).filter(LichHen.cccd_id == check_nguoi_dung.cccd_id).all()
    for lich_hen in lich_hens:
        base_query = db.query(CuocHen).filter(CuocHen.id == lich_hen.lich_hen_id)
        if trang_thai: base_query.filter(CuocHen.trang_thai == trang_thai)
        if start_date: base_query.filter(CuocHen.ngay_gio_bat_dau >= start_date)
        if end_date: base_query.filter(CuocHen.ngay_gio_ket_thuc <= end_date)
        
        cuoc_hen = base_query.first()
        if cuoc_hen:
            payload.append({
                "id": cuoc_hen.id,
                "ngay_gio_bat_dau": cuoc_hen.ngay_gio_bat_dau,
                "ngay_gio_ket_thuc": cuoc_hen.ngay_gio_ket_thuc,
                "dia_diem": cuoc_hen.dia_diem,
                "trang_thai": cuoc_hen.trang_thai,
                "muc_dich": cuoc_hen.muc_dich,
                "ghi_chu": cuoc_hen.ghi_chu
            })
    return {"success": True, "payload": payload, "error": None}
    # except:
    #     raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=Exception)
        
@router.get("/api/appointments/stats/by-departments")
def get_appointments_by_departments(
    id: str,
    trang_thai: str = None,
    start_date: Optional[date] = None,
    end_date: Optional[date] = None
):
    update_expired_status()
    try:
        payload = {}
        with next(get_db()) as db:
            check_phong_ban = db.query(PhongBan).filter(PhongBan.id == id).first()
            if not check_phong_ban:
                raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f"Không có thông tin phòng ban {id}")
            payload.update({
                "phong_ban": {
                    "id": check_phong_ban.id,
                    "ten_phong_ban": check_phong_ban.ten_phong_ban,
                    "ma_phong_ban": check_phong_ban.ma_phong_ban
                }
            })
            
            can_bos = db.query(CanBo).filter(CanBo.phong_ban_id == check_phong_ban.id).all()
            lich_hens = []
            for can_bo in can_bos:
                lich_hen = db.query(LichHen).filter(LichHen.cccd_id == can_bo.cccd_id).all()
                lich_hens += lich_hen
            
            res = []
            for lich_hen in lich_hens:
                base_query = db.query(CuocHen).filter(CuocHen.id == lich_hen.cuoc_hen_id)
                filters = []
                if start_date: filters.append(LichHen.ngay_hen >= start_date)
                if end_date: filters.append(LichHen.ngay_hen <= end_date)
                if trang_thai: filters.append(LichHen.trang_thai == trang_thai)
                if filters: base_query = base_query.filter(and_(*filters))
            
                cuoc_hen = base_query.first()
                res.append({
                    "id": cuoc_hen.id,
                    "ngay_gio_bat_dau": cuoc_hen.ngay_gio_bat_dau,
                    "ngay_gio_ket_thuc": cuoc_hen.ngay_gio_ket_thuc,
                    "dia_diem": cuoc_hen.dia_diem,
                    "trang_thai": cuoc_hen.trang_thai,
                    "muc_dich": cuoc_hen.muc_dich,
                    "ghi_chu": cuoc_hen.ghi_chu
                })
        payload.update({"lich_hen": res})
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=Exception)
    
@router.get("/api/appointments/stats/by-status")
def get_appointments_by_officer(
    trang_thai: str,
    start_date: Optional[date] = None,
    end_date: Optional[date] = None
):
    update_expired_status()
    payload = []
    if trang_thai not in ("pending", "confirmed", "canceled", "expired", "finished"):
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail=f"Không tồn tại trạng thái: {trang_thai}")
    try:        
        with next(get_db()) as db:        
            query = db.query(LichHen).filter(LichHen.trang_thai == trang_thai)
            
            filters = []
            if start_date: filters.append(LichHen.ngay_hen >= start_date)
            if end_date: filters.append(LichHen.ngay_hen <= end_date)
            if filters: query = query.filter(and_(*filters))
            
            lich_hens = query.all()
            payload = [{
                    "id": lich_hen.id,
                    "ngay_gio_bat_dau": lich_hen.ngay_gio_bat_dau,
                    "ngay_gio_ket_thuc": lich_hen.ngay_gio_ket_thuc,
                    "dia_diem": lich_hen.dia_diem,
                    "trang_thai": lich_hen.trang_thai,
                    "muc_dich": lich_hen.muc_dich,
                    "ghi_chu": lich_hen.ghi_chu
                } for lich_hen in lich_hens]
        return {"success": True, "payload": payload, "error": None}   
    except:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=Exception)

@router.post("/api/appointments/create")
def create_appointments(
    data: Dict[str, Union[List[str], str]]
):
    with next(get_db()) as db:
        cccd_nguoi_hen, cccd_nguoi_duoc_hen = data["cccd_nguoi_hen"], data["cccd_nguoi_duoc_hen"]
        ngay_gio_bat_dau, ngay_gio_ket_thuc = data["ngay_gio_bat_dau"], data["ngay_gio_ket_thuc"]
        dia_diem, muc_dich = data["dia_diem"], data["muc_dich"]
        ghi_chu = data["ghi_chu"] or None
        cuoc_hen_moi = CuocHen(
            ngay_gio_bat_dau = ngay_gio_bat_dau,
            ngay_gio_ket_thuc = ngay_gio_ket_thuc,
            dia_diem = dia_diem,
            muc_dich = muc_dich,
            ghi_chu = ghi_chu
        )
        db.add(cuoc_hen_moi)
        db.commit()
        db.refresh(cuoc_hen_moi)
        
        lich_hen_khach = LichHen(cccd_id = cccd_nguoi_hen, lich_hen_id = cuoc_hen_moi.id, nguoi_hen = True)
        db.add(lich_hen_khach)
        db.commit()
        db.refresh(lich_hen_khach)
        
        nguoi_hen_role = (db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_hen).first()).vai_tro
        nguoi_hen_base_role = check_role(nguoi_hen_role)
        nguoi_hen = db.query(nguoi_hen_base_role).filter(nguoi_hen_base_role.cccd_id == cccd_nguoi_hen).first()
        
        nguoi_duoc_hen_role = [(check_role(_.vai_tro), _.cccd_id) for _ in db.query(NguoiDung).filter(NguoiDung.cccd_id.in_(cccd_nguoi_duoc_hen)).all()]
        nguoi_duoc_hen = [db.query(base_role).filter(base_role.cccd_id == cccd_id).first() for base_role, cccd_id in nguoi_duoc_hen_role]
        
        qr_filename = f"qr_{cuoc_hen_moi.id}.png"
        pdf_filename = f"cuocHen_{cuoc_hen_moi.id}.pdf"
        qr_path = QR_manager.generate_qr_code(str(cuoc_hen_moi.id), qr_filename)
        pdf_path = QR_manager.generate_pdf({
            "cuoc_hen_id": cuoc_hen_moi.id,
            "khach_hen": nguoi_hen.ho_ten,
            "cccd_khach_hen": nguoi_hen.cccd_id,
            # "email_khach_hen": nguoi_hen.email,
            "nguoi_duoc_hen": [_.ho_ten for _ in nguoi_duoc_hen],
            "ngay_gio_bat_dau": ngay_gio_bat_dau,
            "ngay_gio_ket_thuc": ngay_gio_ket_thuc,
            "muc_dich": muc_dich,
            "ghi_chu": ghi_chu,
            "dia_diem": dia_diem
        }, qr_path, pdf_filename)
        
        cuoc_hen_moi.qr_path = qr_path
        cuoc_hen_moi.pdf_path = pdf_path
        db.commit()
        db.refresh(cuoc_hen_moi)
        
        # email_manager.annouce(email = nguoi_hen.email, 
        #                       can_bo = ", ".join([_.ho_ten for _ in nguoi_duoc_hen]), 
        #                       nguoi_dat_hen = nguoi_hen.ho_ten,
        #                       ngay_dat_hen= f"{cuoc_hen_moi.ngay_gio_bat_dau}-{cuoc_hen_moi.ngay_gio_ket_thuc}", 
        #                       muc_dich = muc_dich, 
        #                       ghi_chu = ghi_chu, 
        #                       trang_thai = "pending")
        for _ in nguoi_duoc_hen:
            print(_.email)
            email_manager.annouce(email = _.email, 
                        can_bo = ", ".join([_.ho_ten for _ in nguoi_duoc_hen]), 
                        nguoi_dat_hen = nguoi_hen.ho_ten,
                        ngay_dat_hen= f"{cuoc_hen_moi.ngay_gio_bat_dau}-{cuoc_hen_moi.ngay_gio_ket_thuc}", 
                        muc_dich = muc_dich, 
                        ghi_chu = ghi_chu, 
                        trang_thai = "pending")
            
        
    return {"success": True,"error": None}

@router.put("/api/appointments/update/by-user")
def update_appointments(
    cccd_id: Optional[str],
    id: str,
    trang_thai: Optional[str] = None,
    ghi_chu: Optional[str] = None
):
    update_expired_status()
    with next(get_db()) as db:
        check_user = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
        if not check_user:
            raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail=f"Không tồn tại thông tin người dùng: {cccd_id}")        
        
        lich_hens = db.query(LichHen).filter(LichHen.cccd_id == check_user.id).all()
        for lich_hen in lich_hens:
            base_query = db.query(CuocHen).filter(CuocHen.id == lich_hen.cuoc_hen_id)
            kwargs = {}
            if trang_thai: kwargs["trang_thai"] = trang_thai
            if ghi_chu: kwargs["ghi_chu"] = ghi_chu
            if not kwargs:
                raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Không có thông tin nào cập nhật")
                    
            base_query.update(kwargs)
            db.commit()
    
    return {"success": True, "error": None}

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
                