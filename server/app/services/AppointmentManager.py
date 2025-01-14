import datetime
import calendar
from fastapi import HTTPException, status, Depends
from typing import List, AnyStr, Dict, Union, Optional
from sqlalchemy import and_, func

from app.db.base import get_db
from app.helper.format_day import format_day, format_day_db
from app.models.nguoi_dung import NguoiDung
from app.models.lich_hen import LichHen
from app.models.cuoc_hen import CuocHen
from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach
from app.models.phong_ban import PhongBan
from app.services.QRmanager import QR_manager
from app.services.EmailManager import create_email_manager, update_email_manager, cancel_email_manager

roles = {
    "student": SinhVien,
    "officer": CanBo,
    "guest": Khach
}

def strip_static_path(path):
    path = path.replace("\\", "/")
    static_path = []
    before_static = True
    for direc in path.split("/"):
        if direc == "static":
            before_static = False
        if not before_static:
            static_path.append(direc)
    return "/".join(static_path)

class AppointmentManager(object):
    @staticmethod
    def get_appointment_by_user(user, db):
        payload = []
        infor = db.query(roles[user.vai_tro]).filter(roles[user.vai_tro].cccd_id == user.cccd_id).first()
        cac_lich_hen_cua_nguoi_dung = db.query(LichHen).filter(LichHen.cccd_id == user.cccd_id).all()
        for lich_hen_cua_nguoi_dung in cac_lich_hen_cua_nguoi_dung:
            cuoc_hen = db.query(CuocHen).filter(CuocHen.id == lich_hen.lich_hen_id).first()
            cuoc_hen_return = {
                "id": cuoc_hen.id,
                "ngay_gio_bat_dau": cuoc_hen.ngay_gio_bat_dau,
                "ngay_gio_ket_thuc": cuoc_hen.ngay_gio_ket_thuc,
                "nguoi_duoc_hen": [],
                "dia_diem": cuoc_hen.dia_diem,
                "trang_thai": cuoc_hen.trang_thai,
                "muc_dich": cuoc_hen.muc_dich,
                "ghi_chu": cuoc_hen.ghi_chu
            }
            if lich_hen_cua_nguoi_dung.nguoi_hen is True:
                cuoc_hen_return["nguoi_hen"] = True
                cuoc_hen_return["nguoi_dat_hen"] = {
                    "cccd_nguoi_dat_hen": infor.cccd_id,
                    "ho_ten": infor.ho_ten,
                    "vai_tro": user.vai_tro
                }
                cuoc_hen_return["qr_code"] = cuoc_hen.qr_path

                cac_lich_hen_khac = db.query(LichHen).filter(
                    and_(
                        LichHen.id == lich_hen_cua_nguoi_dung.id,
                        LichHen.nguoi_hen.is_(False)
                    )
                ).all()
                
                for lich_hen_khac in cac_lich_hen_khac:
                    nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen_khac.cccd_id).first()
                    base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
                    nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()
                    cuoc_hen_return["nguoi_duoc_hen"].append({
                        "cccd_nguoi_duoc_hen": nguoi_duoc_hen.cccd_id,
                        "ho_ten": nguoi_duoc_hen.ho_ten,
                        "gioi_tinh": nguoi_duoc_hen.gioi_tinh,
                        "email": nguoi_duoc_hen.email,
                        "ma_can_bo": nguoi_duoc_hen.ma_can_bo,
                        "phong_ban_id": nguoi_duoc_hen.phong_ban_id 
                    })
            else:
                cuoc_hen_return["nguoi_hen"] = false
                cac_lich_hen_khac = db.query(LichHen).filter(
                    and_(
                        LichHen.id == lich_hen_cua_nguoi_dung.id,
                        LichHen.cccd_id != infor.cccd_id
                    )
                ).all()
                for lich_hen_khac in cac_lich_hen_khac:
                    if lich_hen_khac.nguoi_hen is True:
                        nguoi_dung_nguoi_dat_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen_khac.cccd_id).first()
                        nguoi_dat_hen = db.query(
                            roles[nguoi_dung_nguoi_dat_hen.vai_tro]
                        ).filter(
                            roles[nguoi_dung_nguoi_dat_hen.cccd_id == lich_hen_khac.cccd_id]
                        ).first()
                        
                        cuoc_hen_return["nguoi_dat_hen"] = {
                            "cccd_nguoi_dat_hen": nguoi_dat_hen.cccd_id,
                            "ho_ten": nguoi_dat_hen.ho_ten,
                            "vai_tro": nguoi_dung_nguoi_dat_hen.vai_tro
                        }
                    else:
                        nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen_khac.cccd_id).first()
                        base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
                        nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()
                        cuoc_hen_return["nguoi_duoc_hen"].append({
                            "cccd_nguoi_duoc_hen": nguoi_duoc_hen.cccd_id,
                            "ho_ten": nguoi_duoc_hen.ho_ten,
                            "gioi_tinh": nguoi_duoc_hen.gioi_tinh,
                            "email": nguoi_duoc_hen.email,
                            "ma_can_bo": nguoi_duoc_hen.ma_can_bo,
                            "phong_ban_id": nguoi_duoc_hen.phong_ban_id 
                        })
            payload.append(cuoc_hen_return)   
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
            ghi_chu = data["ghi_chu"] if data["ghi_chu"] != "" else "NULL"
            ngay_gio_bat_dau = data["ngay_gio_bat_dau"]
            ngay_gio_ket_thuc = data["ngay_gio_ket_thuc"]
            
            # Thêm dữ liệu cuộc hẹn mới vào csdl
            cuoc_hen_moi = CuocHen(
                ngay_gio_bat_dau = ngay_gio_bat_dau,
                ngay_gio_ket_thuc = ngay_gio_ket_thuc,
                dia_diem = dia_diem,
                muc_dich = muc_dich,
                ghi_chu = ghi_chu,
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
            
            qr_path = QR_manager.generate_qr_code(dict(cuoc_hen_moi), qr_filename)
            
            # Cập nhật thông tin qr, pdf cho dữ liệu cuộc hẹn
            cuoc_hen_moi.qr_path = strip_static_path(qr_path)
            cuoc_hen_moi.pdf_path = strip_static_path(pdf_path)
            db.commit()
            db.refresh(cuoc_hen_moi)
            
            for nguoi_duoc_hen in nguoi_duoc_hens:
                if nguoi_duoc_hen.email:
                    create_email_manager.annouce(
                        email = nguoi_duoc_hen.email, 
                        ho_ten_nguoi_duoc_hen = nguoi_duoc_hen.ho_ten, 
                        nguoi_dat_hen = nguoi_hen.ho_ten,
                        nguoi_duoc_hen = ", ".join([temp.ho_ten for temp in nguoi_duoc_hens]),
                        ngay_dat_hen= f"Từ {cuoc_hen_moi.ngay_gio_bat_dau} đến {cuoc_hen_moi.ngay_gio_ket_thuc}", 
                        muc_dich = muc_dich, 
                        ghi_chu = ghi_chu)
        return "success"

    @staticmethod
    def post_appointment_public(data: Dict[AnyStr, Union[List[AnyStr], AnyStr, None]]):
        if not data: raise HTTPException(status_code = 400, detail = "Không nhận được dữ liệu")
        
        with next(get_db()) as db:
            # Mapping dữ liệu
            cccd_nguoi_hen = data["cccd_nguoi_hen"]
            tai_khoan_nguoi_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_hen).first()
            nguoi_hen = db.query(roles[tai_khoan_nguoi_hen.vai_tro]).filter(roles[tai_khoan_nguoi_hen.vai_tro].cccd_id == cccd_nguoi_hen).first()
            
            cccd_nguoi_duoc_hens = data["cccd_ungoi_duoc_hen"]
            dia_diem = data["dia_diem"]
            muc_dich = data["muc_dich"]
            ghi_chu = data["ghi_chu"] if data["ghi_chu"] != "" else "NULL"
            ngay_gio_bat_dau = data["ngay_gio_bat_dau"]
            ngay_gio_ket_thuc = data["ngay_gio_ket_thuc"]
            
            # Thêm dữ liệu cuộc hẹn mới vào csdl
            cuoc_hen_moi = CuocHen(
                ngay_gio_bat_dau = ngay_gio_bat_dau,
                ngay_gio_ket_thuc = ngay_gio_ket_thuc,
                dia_diem = dia_diem,
                muc_dich = muc_dich,
                ghi_chu = ghi_chu,
                ngay_tao = str(datetime.datetime.now())
            )
            db.add(cuoc_hen_moi)
            db.commit()
            db.refresh(cuoc_hen_moi)
            
            # Thêm dữ liệu người dùng mới vào cơ sở dữ liệu
            nguoi_dung_moi = NguoiDung(
                cccd_id = cccd_nguoi_hen,
                hashed_password = get_password_hashed(cccd_nguoi_hen),
                vai_tro = "guest",
                ngay_tao = str(datetime.now())
            )
            db.add(nguoi_dung_moi)
            db.commit()
            db.refresh(nguoi_dung_moi)
            
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
            qr_path = QR_manager.generate_qr_code(dict(cuoc_hen_moi), qr_filename)
            
            # Cập nhật thông tin qr, pdf cho dữ liệu cuộc hẹn
            cuoc_hen_moi.qr_path = strip_static_path(qr_path)
            cuoc_hen_moi.pdf_path = strip_static_path(pdf_path)
            db.commit()
            db.refresh(cuoc_hen_moi)

            for nguoi_duoc_hen in nguoi_duoc_hens:
                if nguoi_duoc_hen.email:
                    create_email_manager.annouce(
                        email = nguoi_duoc_hen.email, 
                        ho_ten_nguoi_duoc_hen = nguoi_duoc_hen.ho_ten, 
                        nguoi_dat_hen = nguoi_hen.ho_ten,
                        nguoi_duoc_hen = ", ".join([temp.ho_ten for temp in nguoi_duoc_hens]),
                        ngay_dat_hen= f"Từ {cuoc_hen_moi.ngay_gio_bat_dau} đến {cuoc_hen_moi.ngay_gio_ket_thuc}", 
                        muc_dich = muc_dich, 
                        ghi_chu = ghi_chu)
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
    
    @staticmethod
    def check_appointment(db, id, user):
        cuoc_hen = db.query(CuocHen).filter(CuocHen.id == id).first()
        if not cuoc_hen:
            return None
        else:
            lich_hen = db.query(LichHen).filter(
                and_(
                    LichHen.cccd_id == user.cccd_id,
                    LichHen.lich_hen_id == id
                )
            ).first()
            if not lich_hen:
                return None
        return cuoc_hen

    @staticmethod
    def checkin_appointment(db, id):
        cuoc_hen = db.query(CuocHen).filter(CuocHen.id == id).first()
        if not cuoc_hen:
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail ="Không tìm thấy lịch hẹn")
        trang_thai = cuoc_hen.trang_thai
        if trang_thai == "expired":
            raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = "Bạn không thể checkin vì lịch hẹn đã quá hạn")
        elif trang_thai == "pending":
            raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = "Bạn không thể checkin vì lịch hẹn cần được xác nhận")
        elif trang_thai == "canceled":
            raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = "Bạn không thể checkin vì lịch hẹn đã bị hủy")
        elif trang_thai == "finished":
            raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = "Bạn không thể checkin vì lịch hẹn đã hoàn thành")
            
        cac_lich_hen = db.query(LichHen).filter(LichHen.lich_hen_id == cuoc_hen.id).all()
        nguoi_hen = None
        nguoi_duoc_hens = []
        for lich_hen in cac_lich_hen:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
            base_role = roles[nguoi_dung.vai_tro]
            infor = db.query(base_role).filter(base_role.cccd_id == nguoi_dung.cccd_id).first()
            if lich_hen.nguoi_hen is True:
                nguoi_hen = infor
            else:
                nguoi_duoc_hens.append(infor)
        
        for nguoi in nguoi_duoc_hens + [nguoi_hen]:
            if nguoi.email:
                update_email_manager.annouce(
                    email = nguoi.email,
                    ho_ten_nguoi_duoc_hen = nguoi.ho_ten,
                    nguoi_dat_hen = nguoi_hen.ho_ten,
                    ngay_dat_hen= f"Từ {cuoc_hen_moi.ngay_gio_bat_dau} đến {cuoc_hen_moi.ngay_gio_ket_thuc}", 
                    nguoi_duoc_hen = ", ".join([nguoi_duoc_hen.ho_ten for nguoi_duoc_hen in nguoi_duoc_hens]), 
                    muc_dich = muc_dich, 
                    ghi_chu = ghi_chu,
                    trang_thai = "confirmed")

        return {"success": True}

    @staticmethod
    def update_appointment(db, data: Dict[AnyStr, Union[List[AnyStr], AnyStr, None]], id_cuoc_hen):
        cccd_nguoi_hen = data["cccd_nguoi_hen"]
        cccd_nguoi_duoc_hens = data["cccd_nguoi_duoc_hen"]

        cuoc_hen = db.query(CuocHen).filter(CuocHen.id == id_cuoc_hen).first()
        cuoc_hen.ngay_gio_bat_dau = data["ngay_gio_bat_dau"]
        cuoc_hen.ngay_gio_ket_thuc = data["ngay_gio_ket_thuc"]
        cuoc_hen.muc_dich = data["muc_dich"]
        cuoc_hen.ghi_chu = data["ghi_chu"] if data["ghi_chu"] != "" else "NULL"
        cuoc_hen.dia_diem = data["dia_diem"]
        db.commit()
        db.refresh(cuoc_hen)
                
        cac_lich_hen = db.query(LichHen).filter(LichHen.lich_hen_id == id_cuoc_hen).all()
        
        kiem_tra_cap_nhat = {}
        nguoi_duoc_hens = []
        for cccd_nguoi_duoc_hen in cccd_nguoi_duoc_hens:
            kiem_tra_cap_nhat[cccd_nguoi_duoc_hen] = False
            nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_duoc_hen).first()
            base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
            nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()
            nguoi_duoc_hens.append(nguoi_duoc_hen)
            
        for lich_hen in cac_lich_hen:
            if lich_hen.cccd_id not in cccd_nguoi_duoc_hens:
                db.delete(lich_hen)
                db.commit()
                
                nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
                base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
                nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()

                cancel_email_manager.annouce(
                    email = nguoi_duoc_hen.email,
                    ho_ten_nguoi_duoc_hen = nguoi_duoc_hen.ho_ten,
                    nguoi_dat_hen = nguoi_duoc_hen.ho_ten,
                    ngay_dat_hen= f"Từ {cuoc_hen.ngay_gio_bat_dau} đến {cuoc_hen.ngay_gio_ket_thuc}", 
                    nguoi_duoc_hen = None, 
                    muc_dich = muc_dich, 
                    ghi_chu = ghi_chu,
                    trang_thai = "canceled"
                )
            else:
                kiem_tra_cap_nhat[lich_hen.cccd_id] = True
                nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == lich_hen.cccd_id).first()
                base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
                nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()
                
                update_email_manager.annouce(
                    email = nguoi.email,
                    ho_ten_nguoi_duoc_hen = nguoi_duoc_hen.ho_ten,
                    nguoi_dat_hen = nguoi_duoc_hen.ho_ten,
                    ngay_dat_hen= f"Từ {cuoc_hen_moi.ngay_gio_bat_dau} đến {cuoc_hen_moi.ngay_gio_ket_thuc}", 
                    nguoi_duoc_hen = ", ".join([nguoi_duoc_hen.ho_ten for nguoi_duoc_hen in nguoi_duoc_hens]), 
                    muc_dich = muc_dich, 
                    ghi_chu = ghi_chu,
                    trang_thai = "pending"
                )
                
        for cccd_nguoi_duoc_hen, kiem_tra in kiem_tra_cap_nhat.items():
            if not kiem_tra:
                lich_hen = LichHen(
                    cccd_id = cccd_nguoi_duoc_hen,
                    lich_hen_id = cuoc_hen.id,
                    nguoi_hen = False
                )
                db.add(lich_hen)
                db.commit()
                db.refresh(lich_hen)
                
                nguoi_dung_nguoi_duoc_hen = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_nguoi_duoc_hen).first()
                base_role = roles[nguoi_dung_nguoi_duoc_hen.vai_tro]
                nguoi_duoc_hen = db.query(base_role).filter(base_role.cccd_id == nguoi_dung_nguoi_duoc_hen.cccd_id).first()

                create_email_manager.annouce(
                        email = nguoi_duoc_hen.email, 
                        ho_ten_nguoi_duoc_hen = nguoi_duoc_hen.ho_ten, 
                        nguoi_dat_hen = nguoi_hen.ho_ten,
                        nguoi_duoc_hen = ", ".join([temp.ho_ten for temp in nguoi_duoc_hens]),
                        ngay_dat_hen= f"Từ {cuoc_hen_moi.ngay_gio_bat_dau} đến {cuoc_hen_moi.ngay_gio_ket_thuc}", 
                        muc_dich = muc_dich, 
                        ghi_chu = ghi_chu
                    )
                
                kiem_tra_cap_nhat[cccd_nguoi_duoc_hen] = True