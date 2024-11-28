from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base

class HocPhan(Base):
    __tablename__ = "hoc_phan"

    ma_hoc_phan = cl(String(30), primary_key = True)
    ten_hoc_phan = cl(String(30))
    so_tin_chi = cl(String(30))
    
    lop_tin_chi = relationship("LopTinChi", back_populates = "hoc_phan")