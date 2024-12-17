from datetime import datetime
from fastapi import HTTPException, status

from app.db.base import get_db

from app.models.can_bo import CanBo
from app.models.nguoi_dung import NguoiDung
from app.models.phong_ban import PhongBan

from app.helper.login_manager import create_new_user

def update_existing_officer(db, can_bo, phong_ban, personal_data):
    if can_bo.cccd_id != personal_data["Identity Code"]:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, 
            detail="Đã tồn tại cán bộ nhưng yêu cầu sai cccd-id"
        )
    
    can_bo.ho_ten = personal_data["Name"]
    can_bo.ngay_sinh = personal_data["DOB"]
    can_bo.gioi_tinh = personal_data["Gender"]
    can_bo.phong_ban_id = phong_ban.id
    can_bo.data = True
    
    db.commit()
    print(f"Cập nhật thông tin cho cán bộ có sẵn: {personal_data['Identity Code']}")
    db.refresh(can_bo)

def create_new_officer(db, phong_ban, personal_data):
    check = db.query(CanBo).filter(
        CanBo.cccd_id == personal_data["Identity Code"]
    ).first()
    
    if check:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, 
            detail="Đã tồn tại cán bộ nhưng yêu cầu sai mã cán bộ"
        )
    
    can_bo_moi = CanBo(
        ma_can_bo=personal_data["personal_code"],
        ho_ten=personal_data["Name"],
        phong_ban_id=phong_ban.id,
        cccd_id=personal_data["Identity Code"],
        gioi_tinh=personal_data["Gender"],
        ngay_sinh=personal_data["DOB"],
        data=True
    )
    db.add(can_bo_moi)
    print(f"Tạo cán bộ mới: {personal_data['Identity Code']}")    
    db.commit()
    db.refresh(can_bo_moi)
    
    create_new_user(db, personal_data["Identity Code"], personal_data["Identity Code"], "officer")

def update_officer(personal_data):
    with next(get_db()) as db:
        phong_ban = db.query(PhongBan).filter(
            PhongBan.id == personal_data["department_code"]
        ).first()
        
        if not phong_ban:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, 
                detail=f"Không tìm thấy mã phòng ban: {personal_data['department_code']}"
            )
        
        can_bo = db.query(CanBo).filter(
            CanBo.ma_can_bo == personal_data["personal_code"]
        ).first()
        
        if can_bo:
            update_existing_officer(db, can_bo, phong_ban, personal_data)
        else:
            create_new_officer(db, phong_ban, personal_data)