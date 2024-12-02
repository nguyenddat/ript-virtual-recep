from sqlalchemy import Integer, String, Boolean, Enum
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base

class CuocHen(BareBaseModel):
    __tablename__ = "cuoc_hen"

    ngay_gio_bat_dau = cl(String, nullable = False)
    ngay_gio_ket_thuc = cl(String, nullable = False)
    dia_diem = cl(String, nullable = False)
    trang_thai = cl(Enum("pending", "confirmed", "finished", "canceled", "expired", name = "trang_thai"), nullable = False, default = "pending")
    muc_dich = cl(String, nullable = False)
    ghi_chu = cl(String)
    ngay_tao = cl(String)
    qr_path = cl(String)
    pdf_path = cl(String)
    
    lich_hen = relationship("LichHen", back_populates = "cuoc_hen")