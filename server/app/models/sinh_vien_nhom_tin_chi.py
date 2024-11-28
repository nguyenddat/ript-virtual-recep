from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.sinh_vien import SinhVien
from app.models.nhom_tin_chi import NhomTinChi


class SinhVien_NhomTinChi(Base):
    __tablename__ = "sinh_vien_nhom_tin_chi"

    ma_sinh_vien = cl(String(30), ForeignKey(SinhVien.ma_sinh_vien), primary_key=True)
    ma_nhom_tin_chi = cl(String(30), ForeignKey(NhomTinChi.ma_nhom_tin_chi), primary_key=True)

    sinh_vien = relationship("SinhVien", back_populates="sinh_vien_nhom_tin_chi")
    nhom_tin_chi = relationship("NhomTinChi", back_populates="sinh_vien_nhom_tin_chi")