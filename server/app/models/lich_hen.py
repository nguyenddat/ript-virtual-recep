from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base
from models.cuoc_hen import CuocHen
from models.nguoi_dung import NguoiDung

class LichHen(Base):
    __tablename__ = "lich_hen"
    
    cccd_id = cl(String(30), ForeignKey(NguoiDung.cccd_id), primary_key = True)
    lich_hen_id = cl(Integer, ForeignKey(CuocHen.id), primary_key = True)
    nguoi_hen = cl(Boolean, default = False)
    
    nguoi_dung = relationship("NguoiDung", back_populates = "lich_hen")
    cuoc_hen = relationship("CuocHen", back_populates = "lich_hen")