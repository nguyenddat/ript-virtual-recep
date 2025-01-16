import ssl
import smtplib
from abc import ABC, abstractmethod
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import logging
from .. helper.email_template import *
logger = logging.getLogger(__name__)
from .. core.config import settings
import os
class EmailManager(ABC):
    def __init__(self):
        self.HOST = "smtp.gmail.com"
        self.PORT = 465
        self._admin_account = settings.KIOSK_EMAIL
        self._admin_password = settings.KIOSK_PASSWORD

        self.template: str = None
        
    @abstractmethod
    def set_template(self):
        pass
    
    @abstractmethod
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, nguoi_duoc_hen, muc_dich, ghi_chu, trang_thai):
        pass        
    
class Create_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
    
    def set_template(self):
        self.template = get_create_appointment_template()
        
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, nguoi_duoc_hen, muc_dich, ghi_chu, trang_thai = None):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO CUỘC HẸN MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            ho_ten_nguoi_duoc_hen, 
            nguoi_dat_hen, 
            ngay_dat_hen, 
            nguoi_duoc_hen, 
            muc_dich, 
            ghi_chu
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string())
    def send_email(self, email, recipient_name, html_content):
            """Phương thức để gửi email tạo cuộc hẹn."""
            test_mode = os.getenv('TEST_MODE', 'False').lower() in ('true', '1', 't')
            if test_mode:
                email = os.getenv('TEST_EMAIL', 'dinhtran29092005@gmail.com')
            
            recipients = [self._admin_account, email]
            msg = MIMEMultipart('alternative')
            msg["Subject"] = "THÔNG BÁO TẠO CUỘC HẸN MỚI"
            msg["From"] = self._admin_account
            msg["To"] = ", ".join(recipients)
            msg.attach(MIMEText(html_content, 'html'))
            try:
                with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
                    sv.login(self._admin_account, self._admin_password)
                    sv.sendmail(self._admin_account, [email], msg.as_string())
                logger.info(f"Create appointment email sent to {email}")
            except smtplib.SMTPException as e:
                logger.error(f"Error sending create appointment email to {email}: {e}")

class Cancel_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
        
    def set_template(self):
        self.template = get_cancel_appointment_template()
        
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, muc_dich, ghi_chu, trang_thai=None):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO HỦY CUỘC HẸN"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            ho_ten_nguoi_duoc_hen, 
            nguoi_dat_hen, 
            ngay_dat_hen,
            muc_dich, 
            ghi_chu
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string())

class Update_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()

    def set_template(self):
        self.template = get_update_appointment_template()
        
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, nguoi_duoc_hen, muc_dich, ghi_chu, trang_thai):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO CUỘC HẸN MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            ho_ten_nguoi_duoc_hen, 
            nguoi_dat_hen, 
            ngay_dat_hen, 
            nguoi_duoc_hen, 
            muc_dich, 
            ghi_chu,
            trang_thai
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string())
class ClassSchedule_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
    
    def set_template(self):
        self.template = get_class_schedule_template()
        
    def annouce(self, email, recipient_name, ten_sinh_vien, ten_lop_hoc, thoi_gian, giang_vien, dia_diem, ghi_chu):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO LỊCH HỌC MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            recipient_name,      
            ten_sinh_vien,     
            ten_lop_hoc,        
            thoi_gian,          
            giang_vien,         
            dia_diem,           
            ghi_chu             
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string())
    def send_email(self, email, recipient_name, html_content):
        """Phương thức để gửi email với nội dung HTML tùy chỉnh."""
        test_mode = os.getenv('TEST_MODE', 'False').lower() in ('true', '1', 't')
        if test_mode:
            email = os.getenv('TEST_EMAIL', 'dinhtran29092005@gmail.com')
        
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO LỊCH HỌC MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        msg.attach(MIMEText(html_content, 'html'))
        try:
            with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
                sv.login(self._admin_account, self._admin_password)
                sv.sendmail(self._admin_account, [email], msg.as_string())
            logger.info(f"Class schedule email sent to {email}")
        except smtplib.SMTPException as e:
            logger.error(f"Error sending class schedule email to {email}: {e}")
class TeachingSchedule_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
    
    def set_template(self):
        self.template = get_teaching_schedule_template()
        
    def annouce(self, email, ten_nguoi_nhan,ten_giang_vien, khoa_hoc, thoi_gian, dia_diem, ghi_chu):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO LỊCH GIẢNG DẠY MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            ten_nguoi_nhan,
            ten_giang_vien,
            khoa_hoc,
            thoi_gian,
            dia_diem,
            ghi_chu
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string())

class EventNotification_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
    
    def set_template(self):
        self.template = get_event_notification_template()
        
    def annouce(self, email,ten_nguoi_nhan, ten_su_kien, ngay, thoi_gian, dia_diem, mo_ta):
        recipients = [self._admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO SỰ KIỆN MỚI"
        msg["From"] = self._admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.template.format(
            ten_nguoi_nhan,
            ten_su_kien,
            ngay,
            thoi_gian,
            dia_diem,
            mo_ta
        )
        msg.attach(MIMEText(html_content, 'html'))        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self._admin_account, self._admin_password)
            sv.sendmail(self._admin_account, recipients, msg.as_string()) 
class_schedule_email_manager = ClassSchedule_EmailManager()
teaching_schedule_email_manager = TeachingSchedule_EmailManager()
event_notification_email_manager = EventNotification_EmailManager()           
create_email_manager = Create_EmailManager()
cancel_email_manager = Cancel_EmailManager()
update_email_manager = Update_EmailManager()