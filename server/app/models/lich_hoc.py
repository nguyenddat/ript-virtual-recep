from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.nhom_tin_chi import NhomTinChi

class LichHoc(BareBaseModel):
    __tablename__ = "lich_hoc"
    
    ma_nhom_tin_chi = cl(String(30), ForeignKey(NhomTinChi.ma_nhom_tin_chi))
    ngay_gio_bat_dau = cl(String(30), nullable=False)
    ngay_gio_ket_thuc = cl(String(30), nullable=False)
    tiet_bat_dau = cl(String(30), nullable=False)
    so_tiet = cl(String(30), nullable=False)
    phong = cl(String(30))
    nha = cl(String(30))
    
    nhom_tin_chi = relationship("NhomTinChi", back_populates="lich_hoc")
    