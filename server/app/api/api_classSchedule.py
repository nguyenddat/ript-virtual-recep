import os
import shutil
from datetime import datetime
from typing import Optional

from sqlalchemy.orm import Session
from fastapi import APIRouter, HTTPException, status, UploadFile, File, Depends

from app.db.base import get_db

from app.services import ClassSchedule

from app.helper.login_manager import PermissionRequired, login_required 

from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.can_bo_lop_tin_chi import CanBo_LopTinChi
from app.models.nhom_tin_chi import NhomTinChi
from app.models.sinh_vien_nhom_tin_chi import SinhVien_NhomTinChi
from app.models.lich_hoc import LichHoc
from app.models.lop_tin_chi import LopTinChi
from app.models.hoc_phan import HocPhan

router = APIRouter()
class_schedule = ClassSchedule.ClassSchedule()

@router.post("/api/class-calendar/post")
def post_class_schedule(file: UploadFile = File(...),
                        current_user = Depends(login_required),
                        permission: PermissionRequired = Depends(PermissionRequired("admin"))):
    if not file:
        raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = "No file found")
        
    if file.content_type != "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
        raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail= f"Supported formats: {class_schedule.supported_format}")
    
    file_dir = os.path.join(os.getcwd(), "app", "data", "ClassSchedule", "ClassSchedule.xlsx")
    try:
        with open(file_dir, "wb") as buffer:
            shutil.copyfileobj(file.file, buffer)
        class_schedule.schedule_parser(file_dir)
        return {"success": True, "error": None}
    except Exception as err:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=err)

@router.get("/api/class-calendar/get/by-role")
def classCalendar_byRole(
    cccd_id: str,
    role: str, 
    ngay_bat_dau: Optional[str],
    ngay_ket_thuc: Optional[str],
    db: Session = Depends(get_db)):
    
    role = role.strip().lower()
    roles = ["student", "officer"]
    if role not in roles:
        raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = f"Chỉ hỗ trợ role: {roles}")
    
    if role == "student":
        check_base_role = db.query(SinhVien).filter(SinhVien.cccd_id == cccd_id).first()
        if not check_base_role:
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy thông tin của {cccd_id}")

        payload = []
        sinhvien_nhomtinchis = db.query(SinhVien_NhomTinChi).filter(SinhVien_NhomTinChi.ma_sinh_vien == check_base_role.ma_sinh_vien).all()
        for sinhvien_nhomtinchi in sinhvien_nhomtinchis:
            ma_nhom_tin_chi = sinhvien_nhomtinchi.ma_nhom_tin_chi
            nhom_tin_chi = db.query(NhomTinChi).filter(NhomTinChi.ma_nhom_tin_chi == ma_nhom_tin_chi).first()
            lop_tin_chi = db.query(LopTinChi).filter(LopTinChi.ma_lop_tin_chi == nhom_tin_chi.ma_lop_tin_chi).first()
            hoc_phan = db.query(HocPhan).filter(HocPhan.ma_hoc_phan == lop_tin_chi.ma_hoc_phan).first()
            canbo_loptinchi = db.query(CanBo_LopTinChi).filter(CanBo_LopTinChi.ma_lop_tin_chi == lop_tin_chi.ma_lop_tin_chi).first()
            can_bo = db.query(CanBo).filter(CanBo.ma_can_bo == canbo_loptinchi.ma_can_bo).first()
            lich_hocs = db.query(LichHoc).filter(LichHoc.ma_nhom_tin_chi == nhom_tin_chi.ma_nhom_tin_chi)

            lich_hocs = lich_hocs.all()
            loai_lich = "Lịch học" if ma_nhom_tin_chi.endswith("00") else "Lịch thực hành"
            hocPhan = {
                "ma_hoc_phan": hoc_phan.ma_hoc_phan,
                "ten_hoc_phan": hoc_phan.ten_hoc_phan,
                "so_tin_chi": hoc_phan.so_tin_chi
            }
            canBo = {
                "ma_can_bo": can_bo.ma_can_bo,
                "ho_ten": can_bo.ho_ten,
                "email": can_bo.email
            }

            payload += [{
                "hoc_phan": hocPhan,
                "loai_lich": loai_lich,
                "ngay_gio_bat_dau": lich_hoc.ngay_gio_bat_dau,
                "ngay_gio_ket_thuc": lich_hoc.ngay_gio_ket_thuc,
                "tiet_bat_dau": lich_hoc.tiet_bat_dau,
                "so_tiet": lich_hoc.so_tiet,
                "phong": lich_hoc.phong,
                "nha": lich_hoc.nha,
                "can_bo": canBo
            } for lich_hoc in lich_hocs]
        
        temp = []
        for _ in payload:
            if ngay_bat_dau:
                ngay_bat_dau_date = datetime.strptime(ngay_bat_dau, "%d-%m-%Y")
                if datetime.strptime(_["ngay_gio_bat_dau"].split()[0], "%d/%m/%Y") < ngay_bat_dau_date:
                    continue
            if ngay_ket_thuc:
                ngay_ket_thuc_date = datetime.strptime(ngay_ket_thuc, "%d-%m-%Y")
                if datetime.strptime(_["ngay_gio_ket_thuc"].split()[0], "%d/%m/%Y") > ngay_ket_thuc_date:
                   continue
            temp.append(_)
        print(len(temp))
        return {"success": True, "payload": temp, "error": None}
    else:
        check_base_role = db.query(CanBo.ma_can_bo).filter(CanBo.cccd_id == cccd_id).first()
        if not check_base_role:
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, details = f"Không tìm thấy thông tin của {cccd_id}")
        
        payload = []
        canbo_loptinchis = db.query(CanBo_LopTinChi).filter(CanBo_LopTinChi.ma_can_bo == check_base_role.ma_can_bo).all()
        for canbo_loptinchi in canbo_loptinchis:
            ma_lop_tin_chi = canbo_loptinchi.ma_lop_tin_chi
            lop_tin_chi = db.query(LopTinChi).filter(LopTinChi.ma_lop_tin_chi == ma_lop_tin_chi).first()
            hoc_phan = db.query(HocPhan).filter(HocPhan.ma_hoc_phan == lop_tin_chi.ma_hoc_phan).first()
            nhom_tin_chis = db.query(NhomTinChi).filter(NhomTinChi.ma_lop_tin_chi == ma_lop_tin_chi).all()
            for nhom_tin_chi in nhom_tin_chis:
                ma_nhom_tin_chi = nhom_tin_chi.ma_nhom_tin_chi
                loai_lich = "Lịch học" if nhom_tin_chi.endswith("00") else "Lịch thực hành"
                lich_hocs = db.query(LichHoc).filter(LichHoc.ma_nhom_tin_chi == ma_nhom_tin_chi).all()
                payload += [{
                    "hoc_phan": {
                      "ma_hoc_phan": hoc_phan.ma_hoc_phan,
                      "ten_hoc_phan": hoc_phan.ten_hoc_phan,
                      "so_tin_chi": hoc_phan.so_tin_chi  
                    },
                    "ngay_gio_bat_dau": lich_hoc.gio_bat_dau,
                    "ngay_gio_ket_thuc": lich_hoc.gio_ket_thuc,
                    "tiet_bat_dau": lich_hoc.tiet_bat_dau,
                    "so_tiet": lich_hoc.so_tiet,
                    "phong": lich_hoc.phong,
                    "nha": lich_hoc.nha
                } for lich_hoc in lich_hocs]
        temp = []
        for _ in payload:
            if ngay_bat_dau:
                ngay_bat_dau_date = datetime.strptime(ngay_bat_dau, "%d-%m-%Y")
                if datetime.strptime(_["ngay_gio_bat_dau"].split()[0], "%d/%m/%Y") < ngay_bat_dau_date:
                    continue
            if ngay_ket_thuc:
                ngay_ket_thuc_date = datetime.strptime(ngay_ket_thuc, "%d-%m-%Y")
                if datetime.strptime(_["ngay_gio_ket_thuc"].split()[0], "%d/%m/%Y") > ngay_ket_thuc_date:
                   continue
        print(len(temp))
        return {"success": True, "payload": temp, "error": None}
