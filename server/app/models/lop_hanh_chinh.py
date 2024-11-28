from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from app.models.base_class import BareBaseModel, Base

class LopHanhChinh(BareBaseModel):
    __tablename__ = "lop_hanh_chinh"
    
    id = cl(Integer, primary_key = True, autoincrement = True)
    ten_lop_hanh_chinh = cl(String)
    
    sinh_vien = relationship("SinhVien", back_populates = "lop_hanh_chinh")