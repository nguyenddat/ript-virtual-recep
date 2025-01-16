# server/app/api/test_send_mail.py

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from app.db.base import get_db
from app.models import SinhVien
from app.services.send_email_service import SendMailServices
from datetime import datetime, timedelta
import random

router = APIRouter()

@router.post("/test_send_mail", tags=["Test"])
async def test_send_mail(db: Session = Depends(get_db)):
    """
    Endpoint để gửi email lịch học ngẫu nhiên đến email giả.
    """
    try:
        # Tạo người dùng giả
        fake_student_email = "dinhtran29092005@gmail.com"
        fake_student_name = "Nguyễn Văn Test"

        # Kiểm tra xem người dùng đã tồn tại chưa
        existing_student = db.query(SinhVien).filter(SinhVien.email == fake_student_email).first()
        if not existing_student:
            fake_student = SinhVien(
                ho_ten=fake_student_name,
                email=fake_student_email,
                cccd_id="123456789012",
                gioi_tinh="nam",
                ma_sinh_vien="B23DCCC038"
                
                # Điền các trường khác nếu cần
            )
            db.add(fake_student)
            db.commit()
            db.refresh(fake_student)
        else:
            fake_student = existing_student

        # Tạo lịch học ngẫu nhiên cho hôm nay và ngày mai
        target_dates = SendMailServices.get_target_dates()
        random_schedules = SendMailServices.generate_random_class_schedules(fake_student, target_dates)

        # Gửi email
        SendMailServices.send_class_schedule_email_single(fake_student, random_schedules)

        return {"message": "Đã gửi email lịch học ngẫu nhiên thành công."}
    except Exception as e:
        # Log lỗi ở đây nếu cần
        raise HTTPException(status_code=500, detail=f"Đã xảy ra lỗi: {str(e)}")
