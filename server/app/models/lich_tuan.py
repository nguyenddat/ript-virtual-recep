from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base

class LichTuan(BareBaseModel):
    __tablename__ = "lich_tuan"
    
    ten_su_kien = cl(String(30), nullable = False)
    ngay_gio_bat_dau = cl(String(30), nullable = False)
    ngay_gio_ket_thuc = cl(String(30), nullable = False)
    dia_diem = cl(String, nullable = False)
    ghi_chu = cl(String)

    can_bo_lich_tuan = relationship("CanBo_LichTuan", back_populates = "lich_tuan")