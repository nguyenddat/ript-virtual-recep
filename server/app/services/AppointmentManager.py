import datetime
import calendar
from fastapi import HTTPException, status, Depends
from typing import List, AnyStr, Dict, Union, Optional
from sqlalchemy import and_, func
# from sqlalchemy.sql.expression import count, func

from app.db.base import get_db
from app.helper.format_day import format_day, format_day_db
from app.models.nguoi_dung import NguoiDung
from app.models.lich_hen import LichHen
from app.models.cuoc_hen import CuocHen
from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach
from app.models.phong_ban import PhongBan
from app.services.QRmanager import QRManager
from app.services.EmailManager import EmailManager

QR_manager = QRManager()
email_manager = EmailManager()

roles = {
    "student": SinhVien,
    "officer": CanBo,
    "guest": Khach
}

class AppointmentManager(object):
    @staticmethod
    def get_appointment_by_user(
        cccd_id: str,
        role: str,
        trang_thai: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None
    ):
        payload = []
        
        if trang_thai and trang_thai not in ("pending", "confirmed", "finished", "canceled", "expired"):
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy trạng thái: {trang_thai}")
        
        if role and role not in ("student", "officer", "guest"):
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy role: {role}")
        
        nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id, NguoiDung.vai_tro == role).first()
        if not nguoi_dung:
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy người dùng: {cccd_id}")           
        
        cac_lich_hens = db.query(LichHen).filter(LichHen.cccd_id == nguoi_dung.cccd_id).all()
        for lich_hen in cac_lich_hen:
            query = db.query(CuocHen).filter(CuocHen.id == lich_hen.lich_hen_id)
            
            if start_date:
                start_date = format_day(start_date)
                query = query.filter(format_day_db(CuocHen.ngay_gio_bat_dau) >= start_date)
            
            if end_date:
                end_date = format_day(end_date)
                query = query.filter(format_day_db(CuocHen.ngay_gio_ket_thuc) <= end_date)
            
            cuoc_hen = query.first()
            
            if cuoc_hen:
                payload.append({
                    "id": cuoc_hen.id,
                    "ngay_gio_bat_dau": cuoc_hen.ngay_gio_bat_dau,
                    "ngay_gio_ket_thuc": cuoc_hen.ngay_gio_ket_thuc,
                    "dia_diem": cuoc_hen.dia_diem,
                    "trang_thai": cuoc_hen.trang_thai,
                    "muc_dich": cuoc_hen.muc_dich,
                    "ghi_chu": cuoc_hen.ghi_chu
                })
        return payload
    
    @staticmethod
    def post_appointment(data: Dict[AnyStr, Union[List[AnyStr], AnyStr, None]]):
        if not data: raise HTTPException(status_code = 400, detail = "Không nhận được dữ liệu")
        
        with next(get_db()) as db:
            # Mapping dữ liệu
            cccd_nguoi_hen = data["cccd_nguoi_hen"]
            tai_khoan_nguoi_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_hen).first()
            nguoi_hen = db.query(roles[tai_khoan_nguoi_hen.vai_tro]).filter(roles[tai_khoan_nguoi_hen.vai_tro].cccd_id == cccd_nguoi_hen).first()
            
            cccd_nguoi_duoc_hens = data["cccd_nguoi_duoc_hen"]
            dia_diem = data["dia_diem"]
            muc_dich = data["muc_dich"]
            ghi_chu = None
            try: 
                ghi_chu = data["ghi_chu"]
            except:
                ghi_chu = "NULL"
            ngay_gio_bat_dau = data["ngay_gio_bat_dau"]
            ngay_gio_ket_thuc = data["ngay_gio_ket_thuc"]
            
            # Thêm dữ liệu cuộc hẹn mới vào csdl
            cuoc_hen_moi = CuocHen(
                ngay_gio_bat_dau = ngay_gio_bat_dau,
                ngay_gio_ket_thuc = ngay_gio_ket_thuc,
                dia_diem = dia_diem,
                muc_dich = muc_dich,
                ngay_tao = str(datetime.datetime.now())
            )
            db.add(cuoc_hen_moi)
            db.commit()
            db.refresh(cuoc_hen_moi)
            
            # Thêm dữ liệu lịch hẹn mới vào cơ sở dữ liệu
            lich_hen = LichHen(
                cccd_id = cccd_nguoi_hen,
                lich_hen_id = cuoc_hen_moi.id,
                nguoi_hen = True
            )
            db.add(lich_hen)
            db.commit()
            db.refresh(lich_hen)
            
            nguoi_duoc_hens = []
            for cccd_nguoi_duoc_hen in cccd_nguoi_duoc_hens:
                tai_khoan_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_duoc_hen).first()
                if not tai_khoan_nguoi_duoc_hen:
                    raise HTTPException(status_code = 400, detail = f"Không tìm thấy cccd: {cccd_nguoi_duoc_hen} trong hệ thống")
                nguoi_duoc_hen = db.query(roles[tai_khoan_nguoi_duoc_hen.vai_tro]).filter(roles[tai_khoan_nguoi_duoc_hen.vai_tro].cccd_id == cccd_nguoi_duoc_hen).first()
                nguoi_duoc_hens.append(nguoi_duoc_hen)            
                lich_hen = LichHen(
                    cccd_id = cccd_nguoi_duoc_hen,
                    lich_hen_id = cuoc_hen_moi.id,
                    nguoi_hen = False
                )
                db.add(lich_hen)
                db.commit()
                db.refresh(lich_hen)
        
            # Tạo qr và pdf
            qr_filename = f"qr_{cuoc_hen_moi.id}.png"
            pdf_filename = f"pdf_{cuoc_hen_moi.id}.pdf"
            
            qr_path = QR_manager.generate_qr_code(str(cuoc_hen_moi.id), qr_filename)
            pdf_path = QR_manager.generate_pdf({
                "cuoc_hen_id": cuoc_hen_moi.id,
                "khach_hen": nguoi_hen.cccd_id,
                "cccd_khach_hen": nguoi_hen.cccd_id,
                "nguoi_duoc_hen": [nguoi_duoc_hen.ho_ten for nguoi_duoc_hen in nguoi_duoc_hens],
                "ngay_gio_bat_dau": ngay_gio_bat_dau,
                "ngay_gio_ket_thuc": ngay_gio_ket_thuc,
                "muc_dich": muc_dich,
                "ghi_chu": ghi_chu,
                "dia_diem": dia_diem
            }, qr_path, pdf_filename)
            
            # Cập nhật thông tin qr, pdf cho dữ liệu cuộc hẹn
            cuoc_hen_moi.qr_path = qr_path
            cuoc_hen_moi.pdf_path = pdf_path
            db.commit()
            db.refresh(cuoc_hen_moi)
            
            # Thông báo email cho người được hẹn
            for nguoi_duoc_hen in nguoi_duoc_hens:
                if nguoi_duoc_hen.email:
                    email_manager.annouce(email = _.email, 
                        can_bo = ", ".join([nguoi_duoc_hen.ho_ten for nguoi_duoc_hen in nguoi_duoc_hens]), 
                        nguoi_dat_hen = nguoi_hen.ho_ten,
                        ngay_dat_hen= f"{cuoc_hen_moi.ngay_gio_bat_dau}-{cuoc_hen_moi.ngay_gio_ket_thuc}", 
                        muc_dich = muc_dich, 
                        ghi_chu = ghi_chu, 
                        trang_thai = "pending")
        return "success"

    @staticmethod
    def get_appointment_by_month():
        payload = []
        today = datetime.date.today()
        start_day = today.replace(day = 1)
        end_day = today.replace(day = calendar.monthrange(today.year, today.month)[1])
        
        with next(get_db()) as db:
            cac_cuoc_hen = db.query(CuocHen).filter(
                and_(
                    func.date(CuocHen.ngay_tao) >= start_day,
                    func.date(CuocHen.ngay_tao) <= end_day
                )
            ).count()
            return cac_cuoc_hen

    @staticmethod
    def get_appointment_all_month():
        payload = []
        today = datetime.date.today()

        with next(get_db()) as db:
            for month in range(1, today.month + 1):
                start_day = datetime.date(today.year, month, 1)
                end_day = datetime.date(today.year, month, calendar.monthrange(today.year, month)[1])

                so_luong = db.query(CuocHen).filter(
                    and_(
                        func.date(CuocHen.ngay_tao) >= start_day,
                        func.date(CuocHen.ngay_tao) <= end_day
                    )
                ).count()
                payload.append({
                    "thang": month,
                    "so_luong": so_luong
                })
        payload.sort(key = lambda x: x["thang"])
        return payload

    @staticmethod
    def get_most_appointment_department():
        dem_phong_ban = {}
        with next(get_db()) as db:
            phong_bans = db.query(PhongBan).all()
            for phong_ban in phong_bans:
                dem_phong_ban[phong_ban.ten_phong_ban] = 0

            cac_lich_hen = db.query(LichHen).filter(LichHen.nguoi_hen.is_(False)).all()
            for lich_hen in cac_lich_hen:
                nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
                if nguoi_dung.vai_tro != "officer":
                    continue

                can_bo = db.query(CanBo).filter(CanBo.cccd_id == nguoi_dung.cccd_id).first()
                phong_ban = db.query(PhongBan).filter(PhongBan.id == can_bo.phong_ban_id).first()
                dem_phong_ban[phong_ban.id] += 1

        payload = [
            {
                "department_name": key,
                "appointments": value
            } for key, value in dem_phong_ban.items()
        ]
        return payload

    # + Các lịch hẹn gần đây ( tính trong tuần )
    @staticmethod
    def get_appointment_by_week():
        today = datetime.date.today()
        start_day = today - datetime.timedelta(days=today.weekday())
        end_day = start_day + datetime.timedelta(days=6)
        
        with next(get_db()) as db:
            cac_cuoc_hen = db.query(CuocHen).filter(
                and_(
                    func.date(CuocHen.ngay_tao) >= start_day,
                    func.date(CuocHen.ngay_tao) <= end_day
                )
            ).count()
            return cac_cuoc_hen

    @staticmethod
    def get_all_appointment():
        payload = []
        with next(get_db()) as db:
            cac_cuoc_hen = db.query(CuocHen).order_by(
                func.date(CuocHen.ngay_tao)
            ).all()
            for cuoc_hen in cac_cuoc_hen:
                cuoc_hen_return = {
                    "start_time": cuoc_hen.ngay_gio_bat_dau,
                    "end_time": cuoc_hen.ngay_gio_ket_thuc,
                    "purpose": cuoc_hen.muc_dich,
                    "location": cuoc_hen.dia_diem,
                    "status": cuoc_hen.trang_thai
                }
                
                cac_lich_hen = db.query(LichHen).filter(LichHen.lich_hen_id == cuoc_hen.id).all()
                participants = []
                for lich_hen in cac_lich_hen:
                    nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
                    base_role = roles[nguoi_dung.vai_tro]
                    infor = db.query(base_role).filter(base_role.cccd_id == nguoi_dung.cccd_id).first()
                    participants.append({
                        "name": infor.ho_ten,
                        "create": lich_hen.nguoi_hen
                    })
                cuoc_hen_return["participants"] = participants
            payload.append(cuoc_hen_return)
        return payload
                    