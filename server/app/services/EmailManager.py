import ssl
import smtplib
from abc import ABC, abstractmethod
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

from app.helper.email_template import *

from app.core.config import settings

class EmailManager(ABC):
    def __init__(self):
        self.HOST = "smtp.gmail.com"
        self.PORT = 465
        self.__admin_account = settings.KIOSK_EMAIL
        self.__admin_password = settings.KIOSK_PASSWORD

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
        recipients = [self.__admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO CUỘC HẸN MỚI"
        msg["From"] = self.__admin_account
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
            sv.login(self.__admin_account, self.__admin_password)
            sv.sendmail(self.__admin_account, recipients, msg.as_string())

class Cancel_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()
        
    def set_template(self):
        self.template = get_cancel_appointment_template()
        
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, nguoi_duoc_hen, muc_dich, ghi_chu, trang_thai = None):
        recipients = [self.__admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO CUỘC HẸN MỚI"
        msg["From"] = self.__admin_account
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
            sv.login(self.__admin_account, self.__admin_password)
            sv.sendmail(self.__admin_account, recipients, msg.as_string())
    
class Update_EmailManager(EmailManager):
    def __init__(self):
        super().__init__()
        self.set_template()

    def set_template(self):
        self.template = get_update_appointment_template()
        
    def annouce(self, email, ho_ten_nguoi_duoc_hen, nguoi_dat_hen, ngay_dat_hen, nguoi_duoc_hen, muc_dich, ghi_chu, trang_thai):
        recipients = [self.__admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = "THÔNG BÁO CUỘC HẸN MỚI"
        msg["From"] = self.__admin_account
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
            sv.login(self.__admin_account, self.__admin_password)
            sv.sendmail(self.__admin_account, recipients, msg.as_string())
            
create_email_manager = Create_EmailManager()
cancel_email_manager = Cancel_EmailManager()
update_email_manager = Update_EmailManager()