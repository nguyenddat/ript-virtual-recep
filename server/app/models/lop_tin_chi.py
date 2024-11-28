from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.hoc_phan import HocPhan

class LopTinChi(Base):
    __tablename__ = "lop_tin_chi"
    
    ma_lop_tin_chi = cl(String(30), primary_key = True)
    ma_hoc_phan = cl(String(30), ForeignKey(HocPhan.ma_hoc_phan))
    thu_tu_lop = cl(String(30), nullable = False)
    hoc_ky = cl(String(30))
    
    hoc_phan = relationship("HocPhan", back_populates = "lop_tin_chi")
    can_bo_lop_tin_chi = relationship("CanBo_LopTinChi", back_populates = "lop_tin_chi")
    nhom_tin_chi = relationship("NhomTinChi", back_populates = "lop_tin_chi")
    