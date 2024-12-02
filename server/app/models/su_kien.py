from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base

class SuKien(BareBaseModel):
    __tablename__ = "su_kien"

    ten_su_kien = cl(String(30), nullable = False)
    ngay_gio_bat_dau = cl(String(30), nullable = False)
    ngay_gio_ket_thuc = cl(String(30), nullable = False)
    dia_diem = cl(String, nullable = False)
    ghi_chu = cl(String)
    
    nguoi_dung_su_kien = relationship("NguoiDung_SuKien", back_populates = "su_kien")