import os

from fastapi import APIRouter, Depends, status, HTTPException
from sqlalchemy import literal, func
from sqlalchemy.orm import Session
from typing import Optional

from app.db.base import get_db
from app.models.phong_ban import PhongBan
from app.models.can_bo import CanBo
from app.models.sinh_vien import SinhVien
from app.models.khach import Khach
from app.models.nguoi_dung import NguoiDung
from app.models.lop_hanh_chinh import LopHanhChinh

router = APIRouter()

@router.get("/api/administrative-class/get")
def get_administrative_class(db = Depends(get_db)):
    try:
        lop_hanh_chinhs = db.query(LopHanhChinh).all()
        payload = [{
            "id": lop_hanh_chinh.id,
            "ten_lop_hanh_chinh": lop_hanh_chinh.ten_lop_hanh_chinh
        } for lop_hanh_chinh in lop_hanh_chinhs]
        
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail = Exception)

@router.get("/api/departments/get")
def get_departments(db = Depends(get_db)):
    try:
        phong_bans = db.query(PhongBan).all()
        payload = [{
            "id": phong_ban.id,
            "ma_phong_ban": phong_ban.id,
            "ten_phong_ban": phong_ban.ten_phong_ban
        } for phong_ban in phong_bans]
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail = Exception)
            
            
@router.get("/api/officer/get/by-departments")
def get_officer_by_departments(phong_ban_id: Optional[int] = None, db = Depends(get_db)):
    try:
        payload = []
        base_query = db.query(CanBo)
        if phong_ban_id:
            phong_ban = db.query(PhongBan).filter(PhongBan.id == phong_ban_id).first()
            if not phong_ban:
                return False 
                # raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tồn tại phòng ban: {str(phong_ban_id)}")

            base_query = base_query.filter(CanBo.phong_ban_id == phong_ban.id)
        can_bos = base_query.all()
        for _ in can_bos:
            data = _.data
            can_bo = {
                "ma_can_bo": _.ma_can_bo,
                "phong_ban_id": _.phong_ban_id,
                "ho_ten": _.ho_ten,
                "cccd_id": _.cccd_id,
                "gioi_tinh": _.gioi_tinh,
                "email": _.email,
                "data": data,
                "b64": []
            }
            if data:
                data_path = os.path.join(os.getcwd(), "app", "data", can_bo["cccd_id"])
                for file in os.listdir(data_path):
                    if file.endswith(".txt"):
                        with open(os.path.join(data_path, file), "r") as f:
                            can_bo["b64"].append(f.read())
            payload.append(can_bo)
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = Exception)
        
@router.get("/api/identity-data/get")
def get_identityData(db: Session = Depends(get_db)):
    try:
        payload = []
        sinh_viens = db.query(SinhVien).filter(SinhVien.data.is_(True)).all()
        for _ in sinh_viens:
            nguoi_dung = {
                "name": _.ho_ten,
                "identity_code": _.cccd_id,
                "role": "student",
                "dob": _.ngay_sinh,
                "gender": _.gioi_tinh,
                "b64": []
            }
            cccd_id = _.cccd_id
            data_path = os.path.join(os.getcwd(), "app", "data", cccd_id)
            for file in os.listdir(data_path):
                if file.endswith("base64.txt"):
                    with open(os.path.join(data_path, file), "r") as f:
                        nguoi_dung["b64"].append(f.read())
            payload.append(nguoi_dung)

        can_bos = db.query(CanBo).filter(CanBo.data.is_(True)).all()
        for _ in can_bos:
            nguoi_dung = {
                "name": _.ho_ten,
                "identity_code": _.cccd_id,
                "role": _.role,
                "dob": _.ngay_sinh,
                "gender": _.gioi_tinh,
                "b64": []
            }
            cccd_id = _.cccd_id
            data_path = os.path.join(os.getcwd(), "app", "data", cccd_id)
            for file in os.listdir(data_path):
                if file.endswith(".txt"):
                    with open(os.path.join(data_path, file), "r") as f:
                        nguoi_dung["b64"].append(f.read())
            payload.append(nguoi_dung)

        khachs = db.query(Khach).filter(Khach.data.is_(True)).all()
        for _ in khachs:
            nguoi_dung = {
                "name": _.ho_ten,
                "identity_code": _.cccd_id,
                "role": _.role,
                "dob": _.ngay_sinh,
                "gender": _.gioi_tinh,
                "b64": []
            }
            cccd_id = _.cccd_id
            data_path = os.path.join(os.getcwd(), "app", "data", cccd_id)
            for file in os.listdir(data_path):
                if file.endswith(".txt"):
                    with open(os.path.join(data_path, file), "r") as f:
                        nguoi_dung["b64"].append(f.read())
            payload.append(nguoi_dung)
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = str(Exception))
