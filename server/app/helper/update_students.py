from datetime import datetime
from fastapi import HTTPException, status

from app.db.base import get_db

from app.models.sinh_vien import SinhVien
from app.models.nguoi_dung import NguoiDung
from app.models.lop_hanh_chinh import LopHanhChinh

from app.helper.login_manager import create_new_user

def update_existing_student(db, sinh_vien, lop_hanh_chinh, personal_data):
    if sinh_vien.cccd_id != personal_data["Identity Code"]:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, 
            detail="Đã tồn tại sinh viên nhưng yêu cầu sai cccd-id"
        )
    
    sinh_vien.ho_ten = personal_data["Name"]
    sinh_vien.ngay_sinh = personal_data["DOB"]
    sinh_vien.gioi_tinh = personal_data["Gender"]
    sinh_vien.id_lop_hanh_chinh = lop_hanh_chinh.id
    sinh_vien.data = True
    
    db.commit()
    print(f"Cập nhật thông tin cho sinh viên có sẵn: {personal_data['Identity Code']}")
    db.refresh(sinh_vien)

def create_new_student(db, lop_hanh_chinh, personal_data):
    check = db.query(SinhVien).filter(
        SinhVien.cccd_id == personal_data["Identity Code"]
    ).first()
    
    if check:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, 
            detail="Đã tồn tại sinh viên nhưng yêu cầu sai mã sinh viên"
        )
    
    sinh_vien_moi = SinhVien(
        ma_sinh_vien=personal_data["personal_code"],
        ho_ten=personal_data["Name"],
        gioi_tinh=personal_data["Gender"],
        ngay_sinh=personal_data["DOB"],
        id_lop_hanh_chinh=lop_hanh_chinh.id,
        cccd_id=personal_data["Identity Code"],
        data=True
    )
    db.add(sinh_vien_moi)
    print(f"Tạo sinh viên mới: {personal_data['Identity Code']}")
    db.commit()
    db.refresh(sinh_vien_moi)
    
    create_new_user(db, personal_data["Identity Code"], personal_data["Identity Code"], "student")    

def update_student(personal_data):
    with next(get_db()) as db:
        lop_hanh_chinh = db.query(LopHanhChinh).filter(
            LopHanhChinh.id == personal_data["department_code"]
        ).first()
        
        if not lop_hanh_chinh:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, 
                detail=f"Không tìm thấy mã lớp hành chính: {personal_data['department_code']}"
            )
        
        sinh_vien = db.query(SinhVien).filter(
            SinhVien.ma_sinh_vien == personal_data["personal_code"]
        ).first()
        
        if sinh_vien:
            update_existing_student(db, sinh_vien, lop_hanh_chinh, personal_data)
        else:
            create_new_student(db, lop_hanh_chinh, personal_data)
