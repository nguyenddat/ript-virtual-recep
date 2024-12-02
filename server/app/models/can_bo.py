from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.phong_ban import PhongBan

class CanBo(Base):
    __tablename__ = "can_bo"

    ma_can_bo = cl(String(30), primary_key = True)
    phong_ban_id = cl(Integer, ForeignKey(PhongBan.id))
    ho_ten = cl(String(50))
    cccd_id = cl(String(30))
    gioi_tinh = cl(String(30))
    ngay_sinh = cl(String(30))
    email = cl(String(30))
    data = cl(Boolean, default = False)
    
    phong_ban = relationship("PhongBan", back_populates = "can_bo")
    can_bo_lop_tin_chi = relationship("CanBo_LopTinChi", back_populates = "can_bo")
    can_bo_lich_tuan = relationship("CanBo_LichTuan", back_populates = "can_bo")
    