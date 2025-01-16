# server/app/services/send_email_service.py

import os
from datetime import datetime, timedelta
from sqlalchemy.orm import db

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
    # Thêm các models khác nếu cần
)

# Định nghĩa email kiểm tra
TEST_EMAIL = 'dinhtran29092005@gmail.com'

def get_target_dates():
    """Trả về danh sách các ngày mục tiêu (hôm nay và ngày mai) dưới định dạng 'dd/mm/YYYY'."""
    today = datetime.now()
    tomorrow = today + timedelta(days=1)
    return [today.strftime("%d/%m/%Y"), tomorrow.strftime("%d/%m/%Y")]
class SendMailServices(object):
    staticmethod
    def send_class_schedule_emails(db, target_dates):
        try:
            # Truy xuất tất cả sinh viên có lịch học trong ngày hôm nay và ngày mai
            sinh_vien_list = db.query(SinhVien).join(SinhVien.nhom_tin_chi).join(NhomTinChi.lop_tin_chi).join(LopTinChi.lich_hoc).filter(
                LichHoc.ngay_gio_bat_dau.like(f"{'%'}%")  # Điều kiện lọc sẽ được áp dụng sau
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
                        # Giả định mỗi lớp có một giảng viên
                        giang_vien = lich_hoc.nhom_tin_chi.lop_tin_chi.can_bo_lop_tin_chi[0].can_bo.ho_ten if lich_hoc.nhom_tin_chi.lop_tin_chi.can_bo_lop_tin_chi else "Không xác định"

                        # Lấy template và format nội dung email
                        template = get_class_schedule_template()
                        html_content = template.format(
                            sinh_vien.ho_ten,  # {}
                            sinh_vien.ho_ten,  # {}
                            lich_hoc.nhom_tin_chi.lop_tin_chi.hoc_phan.ten_hoc_phan,  # {}
                            f"{lich_hoc.ngay_gio_bat_dau.split()[1]} - {lich_hoc.ngay_gio_ket_thuc.split()[1]}",  # {}
                            giang_vien,  # {}
                            f"{lich_hoc.phong}, {lich_hoc.nha}",  # {}
                            lich_hoc.ghi_chu if lich_hoc.ghi_chu else "Không có ghi chú."  # {}
                        )

                        # Gửi email tới TEST_EMAIL thay vì sinh viên thực tế
                        class_schedule_email_manager.send_email(
                            email=TEST_EMAIL,
                            recipient_name='Tester',
                            html_content=html_content
                        )
        except Exception as e:
            raise e  # Ném lại ngoại lệ để API có thể xử lý
    staticmethod
    def send_appointment_emails(db: db, target_dates):
        try:
            # Truy xuất tất cả cuộc hẹn trong ngày hôm nay và ngày mai
            cuoc_hen_list = db.query(CuocHen).filter(
                CuocHen.ngay_gio_bat_dau.like(f"{'%'}%")  # Điều kiện lọc sẽ được áp dụng sau
            ).all()

            for cuoc_hen in cuoc_hen_list:
                # Kiểm tra nếu cuộc hẹn thuộc ngày mục tiêu
                bat_dau_ngay = cuoc_hen.ngay_gio_bat_dau.split()[0]
                if bat_dau_ngay not in target_dates:
                    continue

                lich_hen_list = db.query(LichHen).filter(
                    LichHen.lich_hen_id == cuoc_hen.id
                ).all()

                for lich_hen in lich_hen_list:
                    nguoi_dung = lich_hen.nguoi_dung
                    if nguoi_dung:
                        # Xác định loại cuộc hẹn dựa trên trạng thái
                        if cuoc_hen.trang_thai == "pending":
                            # Sử dụng template tạo cuộc hẹn
                            template = get_create_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,         # {}
                                "Hệ Thống",                # {}
                                cuoc_hen.ngay_gio_bat_dau,  # {}
                                nguoi_dung.ho_ten,         # {}
                                cuoc_hen.muc_dich,         # {}
                                cuoc_hen.ghi_chu           # {}
                            )

                            # Gửi email tới TEST_EMAIL
                            create_email_manager.send_email(
                                email=TEST_EMAIL,
                                recipient_name='Tester',
                                html_content=html_content
                            )
                        elif cuoc_hen.trang_thai == "canceled":
                            # Sử dụng template hủy cuộc hẹn
                            template = get_cancel_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,         # {}
                                "Hệ Thống",                # {}
                                cuoc_hen.ngay_gio_bat_dau,  # {}
                                cuoc_hen.muc_dich,         # {}
                                cuoc_hen.ghi_chu           # {}
                            )

                            # Gửi email tới TEST_EMAIL
                            cancel_email_manager.send_email(
                                email=TEST_EMAIL,
                                recipient_name='Tester',
                                html_content=html_content
                            )
                        elif cuoc_hen.trang_thai == "confirmed":
                            # Sử dụng template cập nhật cuộc hẹn
                            template = get_update_appointment_template()
                            html_content = template.format(
                                nguoi_dung.ho_ten,         # {}
                                nguoi_dung.ho_ten,         # {}
                                nguoi_dung.ho_ten,         # {}
                                cuoc_hen.muc_dich,         # {}
                                cuoc_hen.ghi_chu,          # {}
                                cuoc_hen.trang_thai        # {}
                            )

                            # Gửi email tới TEST_EMAIL
                            update_email_manager.send_email(
                                email=TEST_EMAIL,
                                recipient_name='Tester',
                                html_content=html_content
                            )
        except Exception as e:
            raise e  # Ném lại ngoại lệ để API có thể xử lý
    staticmethod
    def send_event_emails(db: db, target_dates):
        try:
            # Truy xuất tất cả sự kiện trong ngày hôm nay và ngày mai
            su_kien_list = db.query(SuKien).filter(
                SuKien.ngay_gio_bat_dau.like(f"{'%'}%")  # Điều kiện lọc sẽ được áp dụng sau
            ).all()

            for su_kien in su_kien_list:
                # Kiểm tra nếu sự kiện thuộc ngày mục tiêu
                bat_dau_ngay = su_kien.ngay_gio_bat_dau.split()[0]
                if bat_dau_ngay not in target_dates:
                    continue

                nguoi_dung_su_kien_list = su_kien.nguoi_dung_su_kien
                for nguoi_dung_su_kien in nguoi_dung_su_kien_list:
                    nguoi_dung = nguoi_dung_su_kien.nguoi_dung
                    if nguoi_dung:
                        # Sử dụng template thông báo sự kiện
                        template = get_event_notification_template()
                        html_content = template.format(
                            nguoi_dung.ho_ten,             # {}
                            su_kien.ten_su_kien,           # {}
                            su_kien.ngay_gio_bat_dau.split()[0],  # {}
                            f"{su_kien.ngay_gio_bat_dau.split()[1]} - {su_kien.ngay_gio_ket_thuc.split()[1]}",  # {}
                            su_kien.dia_diem,               # {}
                            su_kien.ghi_chu if su_kien.ghi_chu else "Không có mô tả."  # {}
                        )
                        # Gửi email tới TEST_EMAIL
                        event_notification_email_manager.send_email(
                            email=TEST_EMAIL,
                            recipient_name='Tester',
                            html_content=html_content
                        )
        except Exception as e:
            raise e  # Ném lại ngoại lệ để API có thể xử lý
