from datetime import datetime
from fastapi import HTTPException, status

from app.db.base import get_db

from app.models.khach import Khach
from app.models.nguoi_dung import NguoiDung

from app.helper.login_manager import create_new_user

def update_existing_guest(db, khach, personal_data):
    khach.ho_ten = personal_data["Name"]
    khach.gioi_tinh = personal_data["Gender"]
    khach.ngay_sinh = personal_data["DOB"]
    khach.data = True
    
    db.commit()
    print(f"Cập nhật khách có sẵn: {personal_data['Identity Code']}")

def create_new_guest(db, personal_data):
    khach_moi = Khach(
        cccd_id=personal_data["Identity Code"],
        ho_ten=personal_data["Name"],
        gioi_tinh=personal_data["Gender"],
        ngay_sinh=personal_data["DOB"],
        data=True
    )
    db.add(khach_moi)
    print(f"Tạo khách mới: {personal_data['Identity Code']}")
    db.commit()
    db.refresh(khach_moi)
    
    create_new_user(db, personal_data["Identity Code"], personal_data["Identity Code"], "guest")    
    
def update_guest(personal_data):
    with next(get_db()) as db:
        khach = db.query(Khach).filter(
            Khach.cccd_id == personal_data["Identity Code"]
        ).first()
        
        if khach:
            update_existing_guest(db, khach, personal_data)
        else:
            create_new_guest(db, personal_data)
