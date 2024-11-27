from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base
from models.lop_tin_chi import LopTinChi

class NhomTinChi(Base):
    __tablename__ = "nhom_tin_chi"
    
    ma_nhom_tin_chi = cl(String(30), primary_key=True)
    ma_lop_tin_chi = cl(String(30), ForeignKey(LopTinChi.ma_lop_tin_chi))
    thu_tu_nhom = cl(String(30), nullable=False)
    si_so_toi_da = cl(String(30))

    lop_tin_chi = relationship("LopTinChi", back_populates="nhom_tin_chi")
    sinh_vien_nhom_tin_chi = relationship("SinhVien_NhomTinChi", back_populates="nhom_tin_chi")
    lich_hoc = relationship("LichHoc", back_populates="nhom_tin_chi")