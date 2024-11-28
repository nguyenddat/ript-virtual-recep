from sqlalchemy import Integer, String, Boolean, ForeignKey
from sqlalchemy import Column as cl
from sqlalchemy.orm import relationship

from models.base_class import BareBaseModel, Base

class Khach(Base):
    __tablename__ = "khach"
    
    cccd_id = cl(String(30), primary_key = True)
    ho_ten = cl(String(30))
    gioi_tinh = cl(String(30))
    ngay_sinh = cl(String(30))
    email = cl(String)
    data = cl(Boolean, default = False)
    