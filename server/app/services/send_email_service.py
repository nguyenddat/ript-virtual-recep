# server/app/services/send_email_service.py

import os
from datetime import datetime, timedelta
from sqlalchemy.orm import Session
import random
from .EmailManager import (
    create_email_manager,
    cancel_email_manager,
    update_email_manager,
    class_schedule_email_manager,
    teaching_schedule_email_manager,
    event_notification_email_manager
)
from app.helper.email_template import (
    get_create_appointment_template,
    get_cancel_appointment_template,
    get_update_appointment_template,
    get_class_schedule_template,
    get_teaching_schedule_template,
    get_event_notification_template
)
from app.models import (
    SinhVien,
    LichHoc,
    CuocHen,
    LichHen,
    SuKien,
    NhomTinChi,
    LopTinChi,
    HocPhan,
    NguoiDung,
    # Add other models as needed
)

TEST_EMAIL = 'dinhtran29092005@gmail.com'

class SendMailServices:
    @staticmethod
    def get_target_dates():
        """
        Returns a list of target dates (today and tomorrow) in 'dd/mm/YYYY' format.
        """
        today = datetime.now()
        tomorrow = today + timedelta(days=1)
        return [today.strftime("%d/%m/%Y"), tomorrow.strftime("%d/%m/%Y")]

    @staticmethod
    def send_all_emails(db: Session, target_dates: list):
        """
        Orchestrates the sending of all types of emails.
        """
        try:
            SendMailServices.send_class_schedule_emails(db, target_dates)
            SendMailServices.send_appointment_emails(db, target_dates)
            SendMailServices.send_event_emails(db, target_dates)
        except Exception as e:
            # Ideally, log the exception here
            raise e  # Let the calling function handle the exception

    @staticmethod
    def send_class_schedule_emails(db: Session, target_dates: list):
        try:
            # Fetch students with class schedules on target dates
            sinh_vien_list = db.query(SinhVien).join(SinhVien.nhom_tin_chi).join(NhomTinChi.lop_tin_chi).join(LopTinChi.lich_hoc).filter(
                LichHoc.ngay_gio_bat_dau.like(f"{target_dates[0]}%") | LichHoc.ngay_gio_bat_dau.like(f"{target_dates[1]}%")
            ).distinct().all()

            for sinh_vien in sinh_vien_list:
                for date in target_dates:
                    lich_hoc_list = db.query(LichHoc).join(NhomTinChi).join(LopTinChi).join(HocPhan).filter(
                        NhomTinChi.ma_lop_tin_chi == LopTinChi.ma_lop_tin_chi,
                        LopTinChi.ma_hoc_phan == HocPhan.ma_hoc_phan,
                        SinhVien.ma_sinh_vien == sinh_vien.ma_sinh_vien,
                        LichHoc.ngay_gio_bat_dau.like(f"{date}%")
                    ).all()

                    for lich_hoc in lich_hoc_list:
                        # Assume each class has at least one lecturer
                        giang_vien = (
                            lich_hoc.nhom_tin_chi.lop_tin_chi.can_bo_lop_tin_chi[0].can_bo.ho_ten
                            if lich_hoc.nhom_tin_chi.lop_tin_chi.can_bo_lop_tin_chi
                            else "Không xác định"
                        )

                        # Get and format email template
                        template = get_class_schedule_template()
                        html_content = template.format(
                            sinh_vien.ho_ten,  # Student Name
                            sinh_vien.ho_ten,  # Student Name (repeated?)
                            lich_hoc.nhom_tin_chi.lop_tin_chi.hoc_phan.ten_hoc_phan,  # Course Name
                            f"{lich_hoc.ngay_gio_bat_dau.split()[1]} - {lich_hoc.ngay_gio_ket_thuc.split()[1]}",  # Time
                            giang_vien,  # Lecturer Name
                            f"{lich_hoc.phong}, {lich_hoc.nha}",  # Location
                            lich_hoc.ghi_chu if lich_hoc.ghi_chu else "Không có ghi chú."  # Notes
                        )

                        # Send email to actual student email
                        class_schedule_email_manager.send_email(
                            email=sinh_vien.email,  # Assuming SinhVien has an 'email' field
                            recipient_name=sinh_vien.ho_ten,
                            html_content=html_content
                        )
        except Exception as e:
            # Log the exception as needed
            raise e  # Propagate the exception

    @staticmethod
    def send_appointment_emails(db: Session, target_dates: list):
        try:
            # Fetch appointments on target dates
            cuoc_hen_list = db.query(CuocHen).filter(
                CuocHen.ngay_gio_bat_dau.like(f"{target_dates[0]}%") | CuocHen.ngay_gio_bat_dau.like(f"{target_dates[1]}%")
            ).all()

            for cuoc_hen in cuoc_hen_list:
                lich_hen_list = db.query(LichHen).filter(
                    LichHen.lich_hen_id == cuoc_hen.id
                ).all()

                for lich_hen in lich_hen_list:
                    nguoi_dung = lich_hen.nguoi_dung
                    if nguoi_dung:
                        # Determine appointment type based on status
                        if cuoc_hen.trang_thai == "pending":
                            template = get_create_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,                # Recipient Name
                                "Hệ Thống",                       # Sender Name
                                cuoc_hen.ngay_gio_bat_dau,         # Start Datetime
                                nguoi_dung.ho_ten,                # Recipient Name (repeated?)
                                cuoc_hen.muc_dich,                # Purpose
                                cuoc_hen.ghi_chu if cuoc_hen.ghi_chu else "Không có ghi chú."  # Notes
                            )

                            create_email_manager.send_email(
                                email=nguoi_dung.email,  # Assuming NguoiDung has an 'email' field
                                recipient_name=nguoi_dung.ho_ten,
                                html_content=html_content
                            )
                        elif cuoc_hen.trang_thai == "canceled":
                            template = get_cancel_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,
                                "Hệ Thống",
                                cuoc_hen.ngay_gio_bat_dau,
                                cuoc_hen.muc_dich,
                                cuoc_hen.ghi_chu if cuoc_hen.ghi_chu else "Không có ghi chú."
                            )

                            cancel_email_manager.send_email(
                                email=nguoi_dung.email,
                                recipient_name=nguoi_dung.ho_ten,
                                html_content=html_content
                            )
                        elif cuoc_hen.trang_thai == "confirmed":
                            template = get_update_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,
                                nguoi_dung.ho_ten,
                                nguoi_dung.ho_ten,
                                cuoc_hen.muc_dich,
                                cuoc_hen.ghi_chu if cuoc_hen.ghi_chu else "Không có ghi chú.",
                                cuoc_hen.trang_thai
                            )

                            update_email_manager.send_email(
                                email=nguoi_dung.email,
                                recipient_name=nguoi_dung.ho_ten,
                                html_content=html_content
                            )
        except Exception as e:
            # Log the exception as needed
            raise e

    @staticmethod
    def send_event_emails(db: Session, target_dates: list):
        try:
            # Fetch events on target dates
            su_kien_list = db.query(SuKien).filter(
                SuKien.ngay_gio_bat_dau.like(f"{target_dates[0]}%") | SuKien.ngay_gio_bat_dau.like(f"{target_dates[1]}%")
            ).all()

            for su_kien in su_kien_list:
                nguoi_dung_su_kien_list = su_kien.nguoi_dung_su_kien
                for nguoi_dung_su_kien in nguoi_dung_su_kien_list:
                    nguoi_dung = nguoi_dung_su_kien.nguoi_dung
                    if nguoi_dung:
                        template = get_event_notification_template()
                        html_content = template.format(
                            nguoi_dung.ho_ten,                                     # Recipient Name
                            su_kien.ten_su_kien,                                   # Event Name
                            su_kien.ngay_gio_bat_dau.split()[0],                   # Event Date
                            f"{su_kien.ngay_gio_bat_dau.split()[1]} - {su_kien.ngay_gio_ket_thuc.split()[1]}",  # Event Time
                            su_kien.dia_diem,                                      # Location
                            su_kien.ghi_chu if su_kien.ghi_chu else "Không có mô tả."  # Description
                        )

                        event_notification_email_manager.send_email(
                            email=nguoi_dung.email,
                            recipient_name=nguoi_dung.ho_ten,
                            html_content=html_content
                        )
        except Exception as e:
            # Log the exception as needed
            raise e
    @staticmethod
    def generate_random_class_schedules(student: SinhVien, target_dates: list):
        """
        Tạo các lịch học ngẫu nhiên cho người dùng giả cho các ngày mục tiêu.
        Trả về một danh sách các lịch học dưới dạng dictionary.
        """
        random_schedules = []
        subjects = ["Toán", "Vật Lý", "Hóa Học", "Tin Học", "Sinh Học"]
        locations = ["Phòng 101", "Phòng 202", "Phòng 303", "Phòng 404"]
        lecturers = ["Giáo sư A", "Giáo sư B", "Giáo sư C"]

        for date in target_dates:
            # Giả định mỗi ngày có từ 1 đến 3 buổi học
            num_classes = random.randint(1, 3)
            for _ in range(num_classes):
                class_time_start = random.choice(["08:00", "10:00", "13:00", "15:00"])
                class_duration = 2  # 2 tiếng
                start_dt = datetime.strptime(f"{date} {class_time_start}", "%d/%m/%Y %H:%M")
                end_dt = start_dt + timedelta(hours=class_duration)
                schedule = {
                    "ten_hoc_phan": random.choice(subjects),
                    "thoi_gian_bat_dau": start_dt.strftime("%d/%m/%Y %H:%M"),
                    "thoi_gian_ket_thuc": end_dt.strftime("%d/%m/%Y %H:%M"),
                    "giang_vien": random.choice(lecturers),
                    "dia_diem": random.choice(locations),
                    "ghi_chu": "Không có ghi chú." if random.choice([True, False]) else "Lớp bị hoãn."
                }
                random_schedules.append(schedule)
        return random_schedules

    @staticmethod
    def send_class_schedule_email_single(student: SinhVien, schedules: list):
        """
        Gửi email lịch học cho một người dùng duy nhất với các lịch học được cung cấp.
        """
        try:
            template = get_class_schedule_template()
            html_content = f"<html><body><p>Chào {student.ho_ten or 'Bạn'},</p><p>Đây là lịch học của bạn:</p><ul>"

            for schedule in schedules:
                # Kiểm tra từng trường để đảm bảo không có giá trị None
                ten_hoc_phan = schedule.get('ten_hoc_phan') or "Không xác định"
                thoi_gian_bat_dau = schedule.get('thoi_gian_bat_dau') or "Không xác định"
                thoi_gian_ket_thuc = schedule.get('thoi_gian_ket_thuc') or "Không xác định"
                giang_vien = schedule.get('giang_vien') or "Không xác định"
                dia_diem = schedule.get('dia_diem') or "Không xác định"
                ghi_chu = schedule.get('ghi_chu') or "Không có ghi chú."

                # Kiểm tra định dạng thời gian
                try:
                    start_time = thoi_gian_bat_dau.split()[1]
                except IndexError:
                    start_time = "Không xác định"
                try:
                    end_time = thoi_gian_ket_thuc.split()[1]
                except IndexError:
                    end_time = "Không xác định"

                html_content += f"""
                <li>
                    <strong>Môn học:</strong> {ten_hoc_phan}<br>
                    <strong>Thời gian:</strong> {start_time} - {end_time}<br>
                    <strong>Giảng viên:</strong> {giang_vien}<br>
                    <strong>Địa điểm:</strong> {dia_diem}<br>
                    <strong>Ghi chú:</strong> {ghi_chu}
                </li><br>
                """

            html_content += "</ul><p>Chúc bạn học tập tốt!</p></body></html>"

            # Gửi email tới email của người dùng giả
            class_schedule_email_manager.send_email(
                email=student.email,  # Sử dụng email của người dùng giả
                recipient_name=student.ho_ten or 'Bạn',
                html_content=html_content
            )
        except Exception as e:
            # Log lỗi nếu cần
            raise e 
