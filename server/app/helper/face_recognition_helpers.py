import numpy as np
from numpy.linalg import norm

from app.models.nguoi_dung import NguoiDung
from app.models.can_bo import CanBo
from app.models.sinh_vien import SinhVien
from app.models.khach import Khach

from app.db.base import get_db

base_roles = {"student": SinhVien, "officer": CanBo, "guest": Khach}

def cosine_similarity(a: np.array, b: np.array):
    norm_a, norm_b = norm(a), norm(b)
    if norm_a == 0 or norm_b == 0:
        return 0
    try: 
        cosine_sim = np.dot(a, b) / (norm_a * norm_b)
        return cosine_sim
    except:
        return 0
    
def surface(left, upper, right, lower):
    return (right - left) * (lower - upper)

def get_base_role(nguoi_dung):
    if nguoi_dung.vai_tro == "admin":
        return "admin"
    return base_roles[nguoi_dung.vai_tro]

def get_infor(cccd_id):
    with next(get_db) as db:
        nguoi_dung = db.query(NguoiDung).filter(
            NguoiDung.cccd_id == cccd_id
        ).first()
        
        if nguoi_dung:
            base_role = get_base_role(nguoi_dung)
            infor = db.query(base_role).filter(
                base_role.cccd_id == nguoi_dung.cccd_id
            ).first()
            print(infor)
            return {
                "name": infor.ho_ten,
                "cccd": infor.cccd_id,
                "role": nguoi_dung.vai_tro
            }
        else:
            return {
                "name": "Khách",
                "role": "guest"
            }
