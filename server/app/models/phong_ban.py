from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base

class PhongBan(BareBaseModel):
    __tablename__ = "phong_ban"
    
    ten_phong_ban = cl(String(255), nullable = False)
    ma_phong_ban = cl(String)
    
    can_bo = relationship("CanBo", back_populates = "phong_ban")