import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import ssl

class EmailManager(object):
    
    def __init__(self):
        self.HOST = "smtp.gmail.com"
        self.PORT = 465
        self.__admin_account = "riptkiosk@gmail.com"
        self.__admin_password = "qwrk jmtk ytes fmfy"
        self.subject = "NHẮC NHỞ CÓ LỊCH HẸN"
        self.mail_template_sender = """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #4a90e2;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .appointment-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #4a90e2;
                    width: 150px;
                    display: inline-block;
                }}
                .status {{
                    background-color: #ff9800;
                    color: white;
                    padding: 3px 8px;
                    border-radius: 3px;
                    font-size: 0.9em;
                }}
                .footer {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                    font-style: italic;
                }}
                .signature {{
                    margin-top: 15px;
                    padding-top: 15px;
                    border-top: 1px solid #eee;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO LỊCH HẸN</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Chúng tôi xin nhắc nhở về lịch hẹn của quý khách với thông tin chi tiết như sau:</p>
                
                <div class="appointment-info">
                    <div class="info-row">
                        <span class="label">Người đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Thời gian:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Người được đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Mục đích:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Trạng thái:</span> 
                        <span class="status">{}</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Xin vui lòng kiểm tra thông tin và sớm xác nhận trạng thái đối với lịch hẹn. 
                    Chúng tôi mong đợi được phục vụ quý khách và hy vọng cuộc hẹn sẽ diễn ra suôn sẻ.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý lịch hẹn</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """

    def annouce(self, email, can_bo, nguoi_dat_hen, ngay_dat_hen, muc_dich, ghi_chu, trang_thai):
        recipients = [self.__admin_account, email]
        msg = MIMEMultipart('alternative')
        msg["Subject"] = self.subject
        msg["From"] = self.__admin_account
        msg["To"] = ", ".join(recipients)
        html_content = self.mail_template_sender.format(
            can_bo, nguoi_dat_hen, ngay_dat_hen, 
            can_bo, muc_dich, ghi_chu, trang_thai
        )
        msg.attach(MIMEText(html_content, 'html'))
        # msg = MIMEText(self.mail_template_sender.format(can_bo, nguoi_dat_hen, ngay_dat_hen, can_bo, muc_dich, ghi_chu, trang_thai))
        # msg["Subject"] = self.subject
        # msg["From"] = self.__admin_account
        # msg["To"] = ", ".join(recipients)
        
        with smtplib.SMTP_SSL(self.HOST, self.PORT) as sv:
            sv.login(self.__admin_account, self.__admin_password)
            sv.sendmail(self.__admin_account, recipients, msg.as_string())        
    