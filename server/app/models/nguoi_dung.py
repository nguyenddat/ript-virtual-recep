from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base

class NguoiDung(Base):
    __tablename__ = "nguoi_dung"
    
    cccd_id = cl(String(30), primary_key = True)
    hashed_password = cl(String, nullable = False)
    hoat_dong = cl(Boolean, default = False)
    vai_tro = cl(String, default = "guest")
    lan_cuoi_hoat_dong = cl(String)
    ngay_tao = cl(String)
    
    lich_hen = relationship("LichHen", back_populates = "nguoi_dung")
    nguoi_dung_su_kien = relationship("NguoiDung_SuKien", back_populates = "nguoi_dung")