import os
import shutil

from fastapi import APIRouter, Depends, status, HTTPException
from sqlalchemy import literal, func, case, and_, text, column
from sqlalchemy.orm import Session
from typing import Optional

from app.helper.login_manager import PermissionRequired, login_required
from app.helper.face_recognition_helpers import get_base_role
from app.db.base import get_db
from app.models.phong_ban import PhongBan
from app.models.can_bo import CanBo
from app.models.sinh_vien import SinhVien
from app.models.khach import Khach
from app.models.nguoi_dung import NguoiDung
from app.models.lop_hanh_chinh import LopHanhChinh

router = APIRouter()
STATIC_DIR = os.path.join(os.getcwd(), "app", "static", "data")
os.makedirs(STATIC_DIR, exist_ok = True)

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
def get_officer_by_departments(current_user = Depends(login_required), 
                               phong_ban_id: Optional[int] = None, 
                               db = Depends(get_db)):
    payload = []
    base_query = db.query(CanBo)
    if phong_ban_id:
        phong_ban = db.query(PhongBan).filter(PhongBan.id == phong_ban_id).first()
        if not phong_ban:
            return {"success": False}
            # raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tồn tại phòng ban: {str(phong_ban_id)}")
        base_query = base_query.filter(CanBo.phong_ban_id == phong_ban.id)
    try:
        can_bos = base_query.all()
        for _ in can_bos:
            can_bo = {
                "ma_can_bo": _.ma_can_bo,
                "phong_ban_id": _.phong_ban_id,
                "ho_ten": _.ho_ten,
                "cccd_id": _.cccd_id,
                "gioi_tinh": _.gioi_tinh,
                "email": _.email
            }
            payload.append(can_bo)
        return {"success": True, "payload": payload, "error": None}
    except:
        raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = Exception)
        
@router.get("/api/identity-data/get")
def get_identityData(current_user = Depends(login_required),
                        permission: PermissionRequired = Depends(PermissionRequired("admin")),
                        data: bool = True,
                        role: Optional[str] = None,
                        department_code: Optional[int] = None,
                        db: Session = Depends(get_db)):
    payload = []
    base_query = db.query(NguoiDung)
    if role:
        base_query = base_query.filter(NguoiDung.vai_tro == role)
    nguoi_dungs = base_query.filter(NguoiDung.vai_tro != "admin").all()
    for nguoi_dung in nguoi_dungs:
        base_role = get_base_role(nguoi_dung)
        query = db.query(base_role,
            case(
                (nguoi_dung.vai_tro == "student", LopHanhChinh.id),
                else_ = PhongBan.id
            ).label("department_id"),
            case(
                (nguoi_dung.vai_tro == "student", LopHanhChinh.ten_lop_hanh_chinh),
                else_ = PhongBan.ten_phong_ban
            ).label("department_name")
        ).outerjoin(
            LopHanhChinh, LopHanhChinh.id == base_role.id_lop_hanh_chinh
        ).outerjoin(
            PhongBan, PhongBan.id == base_role.phong_ban_id
        ).filter(
            and_(            
                base_role.cccd_id == nguoi_dung.cccd_id,
                base_role.data.is_(True)
            )
        ).first()
        
        if query:
            nguoi_dung_return = {
                "name": query.ho_ten,
                "role": query.vai_tro,
                "dob": query.ngay_sinh,
                "gender": query.gioi_tinh,
                "img": [],
                "department": {
                    "department_id": query.department_id,
                    "department_name": query.department_name
                }
            }
        
        if data:
            user_static_dir = os.path.join(STATIC_DIR, nguoi_dung.cccd_id)
            for file in os.listdir(user_static_dir):
                if file.endswith(".png"):
                    static_url_path = f"/static/data/{nguoi_dung.cccd_id}/{file}"
                    nguoi_dung_return["img"].append(static_url_path)
        
        payload.append(nguoi_dung_return)
    return {"success": True, "payload": payload, "error": None}
        
    #     infor = db.query(base_role).filter(base_role.cccd_id == nguoi_dung.cccd_id, base_role.data.is_(data)).first()
    #     if not infor:
    #         continue
    #     nguoi_dung_return = {
    #         "name": infor.ho_ten,
    #         "role": nguoi_dung.vai_tro,
    #         "dob": infor.ngay_sinh,
    #         "gender": infor.gioi_tinh,
    #         "img": []
    #     }
    #     if nguoi_dung_return["role"] != "guest":
    #         table = roles[nguoi_dung.vai_tro][1]
    #         if nguoi_dung_return["role"] == "student":
    #             lop_hanh_chinh = db.query(table).filter(table.id == infor.id_lop_hanh_chinh).first()
    #             nguoi_dung_return["department"] = {
    #                 "department_id": lop_hanh_chinh.id,
    #                 "department_name": lop_hanh_chinh.ten_lop_hanh_chinh
    #             }
    #         else:
    #             phong_ban = db.query(table).filter(table.id == infor.phong_ban_id).first()
    #             nguoi_dung_return["department"] = {
    #                 "department_id": phong_ban.id,
    #                 "department_name": phong_ban.ten_phong_ban
    #             }
    #     if data:
    #         user_static_dir = os.path.join(STATIC_DIR, infor.cccd_id)
    #         os.makedirs(user_static_dir, exist_ok = True)
    #         for file in os.listdir(user_static_dir):
    #             if file.endswith(".png"):
    #                 static_url_path = f"/static/data/{infor.cccd_id}/{file}"
    #                 nguoi_dung_return["img"].append(static_url_path)

    #     payload.append(nguoi_dung_return)
    # return {"success": True, "payload": payload, "error": None}
