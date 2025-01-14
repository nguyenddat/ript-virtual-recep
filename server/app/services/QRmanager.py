import os
import qrcode
import cv2
import numpy as np
from pyzbar.pyzbar import decode

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont


class QRManager(object):
    def __init__(self):
        self.qr_dir = os.path.join(os.getcwd(), "app", "static", "qr_codes")
        self.pdf_dir = os.path.join(os.getcwd(), "app", "static", "pdf_files")
        
    def generate_qr_code(self, data: dict, filename: str) -> str:
        if not os.path.exists(self.qr_dir):
            os.mkdir(self.qr_dir)
        qr = qrcode.QRCode(version=1, box_size=10, border=1)
        qr.add_data(data)
        qr.make(fit=True)
        img = qr.make_image(fill='black', back_color='white')
        qr_path = os.path.join(self.qr_dir, filename)
        img.save(qr_path)
        return str(qr_path)

    def generate_pdf(self, lich_hen: dict, qr_path: str, filename: str) -> str:
        if not os.path.exists(self.pdf_dir):
            os.mkdir(self.pdf_dir)
        pdf_path = os.path.join(self.pdf_dir, filename)
        c = canvas.Canvas(str(pdf_path), pagesize=A4)
        width, height = A4

        # Set up font
        pdfmetrics.registerFont(TTFont("TimesNewRoman", os.path.join(os.getcwd(), "app", "services", "Fonts", "TIMES.TTF")))
        c.setFont("TimesNewRoman", 12)

        # Add appointment info
        y = height - 50
        c.drawString(50, y, f"ID Lịch hẹn: {lich_hen['cuoc_hen_id']}")
        y -= 20
        c.drawString(50, y, f"Họ tên: {lich_hen['khach_hen']}")
        y -= 20
        c.drawString(50, y, f"CCCD/Mã số: {lich_hen['cccd_khach_hen']}")
        y -= 20
        # c.drawString(50, y, f"Email: {lich_hen['email_khach_hen']}")
        y -= 20
        c.drawString(50, y, f"Cán bộ: {', '.join(lich_hen['nguoi_duoc_hen'])}")
        y -= 20
        c.drawString(50, y, f"Thời gian: {lich_hen['ngay_gio_bat_dau']} - {lich_hen['ngay_gio_ket_thuc']}")
        y -= 20
        c.drawString(50, y, f"Mục đích: {lich_hen['muc_dich']}")
        y -= 20
        if lich_hen.get("note"):
            c.drawString(50, y, f"Ghi chú: {lich_hen['ghi_chu']}")
            y -= 20
        c.drawString(50, y, f"Địa điểm: {lich_hen['dia_diem']}")

        # Add QR code
        c.showPage()
        c.setFont("TimesNewRoman", 12)
        c.drawString(50, height - 50, "QR Code cho lịch hẹn")
        c.drawImage(qr_path, (width - 200) / 2, (height - 200) / 2, width=200, height=200, preserveAspectRatio=True)

        c.save()
        return str(pdf_path)
    
    def decode_qr_code(self, file_bytes: bytes) -> str:
        try:
            np_img = np.frombuffer(file_bytes, np.uint8)
            img = cv2.imdecode(np_img, cv2.IMREAD_COLOR)
            if img is None:
                raise ValueError("Không thể giải mã ảnh từ dữ liệu đã tải lên.")

            decoded_objects = decode(img)
            if decoded_objects:
                qr_data = decoded_objects[0].data.decode('utf-8')
                return qr_data
            else:
                raise ValueError("Không thể giải mã QR code.")
        except Exception as e:
            raise e

QR_manager = QRManager()