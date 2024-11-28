from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.can_bo import CanBo 
from app.models.lich_tuan import LichTuan 

class CanBo_LichTuan(Base):
    __tablename__ = "can_bo_lich_tuan"

    ma_can_bo = cl(String(30), ForeignKey(CanBo.ma_can_bo), primary_key = True)
    lich_tuan_id = cl(Integer, ForeignKey(LichTuan.id), primary_key = True)
    ghi_chu = cl(String)

    can_bo = relationship("CanBo", back_populates = "can_bo_lich_tuan")
    lich_tuan = relationship("LichTuan", back_populates = "can_bo_lich_tuan")