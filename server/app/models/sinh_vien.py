from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.lop_hanh_chinh import LopHanhChinh

class SinhVien(Base):
    __tablename__ = "sinh_vien"

    ma_sinh_vien = cl(String(30), primary_key=True)
    ho_ten = cl(String(30))
    gioi_tinh = cl(String(30))
    quoc_tich = cl(String(30))
    ton_giao = cl(String(30))
    dan_toc = cl(String(30))
    ngay_sinh = cl(String(30))
    id_lop_hanh_chinh = cl(Integer, ForeignKey(LopHanhChinh.id))
    cccd_id = cl(String(30), nullable=False)
    email = cl(String)
    data = cl(Boolean, default=False)

    sinh_vien_nhom_tin_chi = relationship("SinhVien_NhomTinChi", back_populates="sinh_vien")
    lop_hanh_chinh = relationship("LopHanhChinh", back_populates = "sinh_vien")