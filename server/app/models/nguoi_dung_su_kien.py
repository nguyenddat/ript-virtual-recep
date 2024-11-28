from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base
from app.models.nguoi_dung import NguoiDung
from app.models.su_kien import SuKien

class NguoiDung_SuKien(Base):
    __tablename__ = "nguoi_dung_su_kien"

    cccd_id = cl(String(30), ForeignKey(NguoiDung.cccd_id), primary_key = True)
    su_kien_id = cl(Integer, ForeignKey(SuKien.id), primary_key = True)

    su_kien = relationship("SuKien", back_populates = "nguoi_dung_su_kien")
    nguoi_dung = relationship("NguoiDung", back_populates = "nguoi_dung_su_kien")