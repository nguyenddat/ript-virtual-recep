from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.can_bo import CanBo
from app.models.lop_tin_chi import LopTinChi

class CanBo_LopTinChi(Base):
    __tablename__ = "can_bo_lop_tin_chi"
    
    ma_can_bo = cl(String(30), ForeignKey(CanBo.ma_can_bo), primary_key = True)
    ma_lop_tin_chi = cl(String(30), ForeignKey(LopTinChi.ma_lop_tin_chi), primary_key = True)
    
    can_bo = relationship("CanBo", back_populates = "can_bo_lop_tin_chi")
    lop_tin_chi = relationship("LopTinChi", back_populates = "can_bo_lop_tin_chi")