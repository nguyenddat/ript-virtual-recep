from fastapi import HTTPException, status

from db.base import get_db
from helper.format_day import format_day, format_day_db
from models.nguoi_dung import NguoiDung
from models.lich_hen import LichHen
from models.cuoc_hen import CuocHen

class AppointmentManager(object):
    @staticmethod
    def appointment_by_user(
        cccd_id: str,
        role: str,
        trang_thai: Optional[str] = None,
        start_date: Optional[date] = None,
        end_date: Optional[date] = None,
    ):  
        payload = []
        
        if trang_thai and trang_thai not in ("pending", "confirmed", "finished", "canceled", "expired"):
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy trạng thái: {trang_thai}")
        
        if role and role not in ("student", "officer", "guest"):
            raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy role: {role}")
        
        with next(get_db()) as db:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id, NguoiDung.vai_tro == role).first()
            if not nguoi_dung:
                raise HTTPException(statu_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy người dùng: {cccd_id}")           
            
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