import os
import cv2
import pickle
import datetime
import numpy as np
import hashlib

from datetime import datetime
from numpy.linalg import norm
from collections import Counter
from sqlalchemy import or_, literal
from insightface.app import FaceAnalysis

from core.security import get_password_hash
from db.base import get_db
from models.sinh_vien import SinhVien
from models.can_bo import CanBo
from models.khach import Khach
from models.nguoi_dung import NguoiDung
from models.lop_hanh_chinh import LopHanhChinh
from models.phong_ban import PhongBan

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

def get_info(cccd_id):
    if cccd_id == "Khách":
        return {
            "name": "Khách",
            "role": "guest"
        }
    ho_ten = None
    with next(get_db()) as db:
        search_first = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
        if search_first.vai_tro == "student":
            sinh_vien = db.query(SinhVien).filter(SinhVien.cccd_id == cccd_id).first()
            ho_ten = sinh_vien.ho_ten
        elif search_first.vai_tro == "officer":
            can_bo = db.query(CanBo).filter(CanBo.cccd_id == cccd_id).first()
            ho_ten = can_bo.ho_ten
        else:
            khach = db.query(Khach).filter(Khach.cccd_id == cccd_id).first()
            ho_ten = khach.ho_ten
    if search_first:
        return {
            "name": ho_ten,
            "cccd": cccd_id,
            "role": search_first.vai_tro
        }             
    else:
        return {
            "name": "Khách",
            "role": "guest"
        }

class FaceEmbedding:
    def __init__(self, embedding, bbox):
        self.embedding = embedding
        self.bbox = bbox

class KNN:
    def __init__(self):
        self.k = 3
        self.similarity_threshold = 0.3
        self.data = []
        self.save_model_path = os.path.join(os.getcwd(), "app", "core", "data.pkl")

    def load_data(self, data):
        self.data = data
    
    def add_data(self, data):
        self.data.append(data)
    
    def update_data(self, cccd_id, data):
        for i in range(len(self.data)):
            if self.data[i]["y"] == cccd_id:
                self.data[i]["X"] = data
    
    def save_data(self):
        with open(self.save_model_path, "wb") as file:
            pickle.dump(self.data, file)
    
    def delete_data(self, cccd_id):
        for i in range(len(self.data)):
            if self.data[i]["y"] == cccd_id:
                self.data.pop(i)            
    
    def predict(self, img_array):
        X, y = [], []
        for key, value in self.data.items():
            for face in value:
                X.append(face)
                y.append(key)
        distances = []
        current_k = min(self.k, len(X))
        for i in range(len(X)):
            cosine_sim = cosine_similarity(img_array, X[i].embedding)
            if cosine_sim >= self.similarity_threshold:
                distances.append([y[i], cosine_sim])

        top_k = sorted(distances, key = lambda x: x[1], reverse = True)[:current_k]
        most_common = Counter([label for label, _ in top_k]).most_common()
        if len(most_common) == 0:
            return "Khách"
        elif len(most_common) == 1:
            return most_common[0][0]
        else:
            a = sorted(top_k, key = lambda x: x[1], reverse = True)
            return sorted(top_k, key = lambda x: x[1], reverse = True)[0][0]

class ModelManager:
    def __init__(self):
        self.model = FaceAnalysis(name = "buffalo_l")
        self.model.prepare(ctx_id = 0, det_size = (640, 640))
        os.system('cls||clear')

        self.KNN = KNN()
        self.KNN.load_data(self.load_data())

    def embed_face(self, img_array):
        img = cv2.cvtColor(img_array, cv2.COLOR_BGR2RGB)
        faces = self.model.get(img)

        nums_of_people = len(faces)
        if nums_of_people == 0:
            return [FaceEmbedding(np.zeros((512)), np.zeros(4))], nums_of_people
        else:
            return [FaceEmbedding(face.embedding, face.bbox) for face in faces], nums_of_people

    def load_data(self):
        try:
            print(f"Thực hiện tải dữ liệu đã lưu...")
            with open(self.KNN.save_model_path, "rb") as file:
                data = pickle.load(file)
                return data
        except:
            data = []
            with next(get_db()) as db:
                cac_sinh_vien = db.query(SinhVien).filter(SinhVien.data.is_(True)).all()
                cac_can_bo = db.query(CanBo).filter(CanBo.data.is_(True)).all()
                cac_khach = db.query(Khach).filter(Khach.data.is_(True)).all()
            try:
                print(f"Không thể tải dữ liệu đã lưu --> Tải dữ liệu backup...")
                for nguoi_dung in cac_sinh_vien + cac_can_bo + cac_khach:
                    data_dir = os.path.join(os.getcwd(), "app", "data", nguoi_dung.cccd_id, "backup.pkl")
                    with open(data_dir, "rb") as file:
                        data.append(pickle.load(file))
                return data
            except:
                print(f"Không thể tải dữ liệu backup --> Tải dữ liệu thủ công...")
                data = []
                for nguoi_dung in cac_sinh_vien + cac_can_bo + cac_khach:
                    X, y = [], nguoi_dung.cccd_id
                    data_dir = os.path.join(os.getcwd(), "app", "data", y)
                    for file in os.listdir(data_dir):
                        if file.endswith(".png"):
                            img_path = os.path.join(data_dir, file)
                            image = Image.open(img_path).convert("RGB")
                            faces, nums_of_people = self.embed_face(image)
                            X.append(faces)
                    with open(os.path.join(data_dir, "backup.pkl"), "wb") as file:
                        pickle.dump({"X": X, "y": y}, file)
                    data.append({"X": X, "y": y})
                return data
                             
    def update_data(self, data_dir, imageManager, personal_data):
        data = {}
        class_dir = data_dir.replace("\\", "/").rstrip("/").split("/")[-1]
        data.update({"y": class_dir})
        
        X = []
        for img in imageManager.image_files_in_folder(data_dir):
            image = imageManager.load_img_file(img)
            faces, nums_of_people = self.embed_face(image)
            if nums_of_people != 1:
                print(f"Ảnh chứa nhiều khuôn mặt, không phù hợp: {img}")
                os.remove(img)
                continue
            else:
                X.append(faces)
        data.update({"X": X})
        self.KNN.update_data(class_dir, data)
        self.KNN.save_data()
        with open(os.path.join(data_dir, "backup.pkl"), "wb") as file:
            pickle.dump(data, file)
            
        role = personal_data["role"]
        with next(get_db()) as db:
            if role == "student":
                sinh_vien = db.query(SinhVien).filter(SinhVien.cccd_id == class_dir).first()
                if sinh_vien:
                    sinh_vien.ho_ten = personal_data["Name"]
                    sinh_vien.ngay_sinh = personal_data["DOB"]
                    sinh_vien.gioi_tinh = personal_data["Gender"]
                    sinh_vien.data = True
                    db.commit()
                    print(f"Cập nhật thông tin cho sinh viên có sẵn: {personal_data["Identity Code"]}")
                    db.refresh(sinh_vien)
                else:
                    lop_hanh_chinh = db.query(LopHanhChinh).filter(LopHanhChinh.id == personal_data["department_code"]).first()
                    if not lop_hanh_chinh:
                        raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy mã lớp hành chính: {personal_data["department_code"]}")
                    sinh_vien_moi = SinhVien(
                        ma_sinh_vien = personal_data["personal_code"],
                        ho_ten = personal_data["Name"],
                        gioi_tinh = personal_data["Gender"],
                        ngay_sinh = personal_data["DOB"],
                        id_lop_hanh_chinh = personal_data["department_code"],
                        cccd_id = personal_data["Identity Code"],
                        data = True
                    )
                    nguoi_dung_moi = NguoiDung(
                        cccd_id = personal_data["Identity Code"],
                        hashed_password = get_password_hash(personal_data["Identity Code"]),
                        vai_tro = "student",
                        ngay_tao = str(datetime.now())
                    )
                    db.add(sinh_vien_moi)
                    print(f"Tạo sinh viên mới: {personal_data["Identity Code"]}")
                    db.add(nguoi_dung_moi)
                    print(f"Tạo người dùng mới: {personal_data["Identity Code"]}")
                    db.commit()
                    db.refresh(sinh_vien_moi)
                    db.refresh(nguoi_dung_moi)
            elif role == "officer":
                can_bo = db.query(CanBo).filter(CanBo.cccd_id == class_dir).first()
                if can_bo:
                    can_bo.ho_ten = personal_data["Name"]
                    can_bo.ngay_sinh = personal_data["DOB"]
                    can_bo.gioi_tinh = personal_data["Gender"]
                    can_bo.data = True
                    db.commit()
                    print(f"Cập nhật thông tin cho cán bộ có sẵn: {personal_data["Identity Code"]}")
                    db.refresh(can_bo)
                else:
                    phong_ban = db.query(PhongBan).filter(PhongBan.id == personal_data["department_code"]).first()
                    if not phong_ban:
                        raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy mã phòng ban: {personal_data["department_code"]}")
                    can_bo_moi = CanBo(
                        ma_can_bo = personal_data["personal_code"],
                        ho_ten = personal_data["Name"],
                        cccd_id = personal_data["Identity Code"],
                        gioi_tinh = personal_data["Gender"],
                        ngay_sinh = personal_data["DOB"],
                        data = True
                    )
                    nguoi_dung_moi = NguoiDung(
                        cccd_id = personal_data["Identity Code"],
                        hashed_password = get_password_hash(personal_data["Identity Code"]),
                        vai_tro = "officer",
                        ngay_tao = str(datetime.now())
                    )
                    db.add(can_bo_moi)
                    print(f"Tạo cán bộ mới: {personal_data["Identity Code"]}")
                    db.add(nguoi_dung_moi)
                    print(f"Tạo người dùng mới: {personal_data["Identity Code"]}")
                    db.commit()
                    db.refresh(can_bo_moi)
                    db.refresh(nguoi_dung_moi)
            else:
                khach = db.query(Khach).filter(Khach.cccd_id == class_dir).first()
                if khach:
                    khach.ho_ten = personal_data["Name"]
                    khach.gioi_tinh = personal_data["Gender"]
                    khach.ngay_sinh = personal_data["DOB"]
                    khach.data = True
                    db.commit()
                    print(f"Cập nhật khách có sẵn: {personal_data["Identity Code"]}")
                else:
                    khach_moi = Khach(
                        cccd_id = personal_data["Identity Code"],
                        ho_ten = personal_data["Name"],
                        gioi_tinh = personal_data["Gender"],
                        ngay_sinh = personal_data["DOB"],
                        data = True
                    )
                    nguoi_dung_moi = NguoiDung(
                        cccd_id = personal_data["Identity Code"],
                        hashed_password = get_password_hash(personal_data["Identity Code"]),
                        vai_tro = "guest",
                        ngay_tao = str(datetime.now())
                    )                    
                    db.add(khach_moi)
                    print(f"Tạo khách mới: {personal_data["Identity Code"]}")
                    db.add(nguoi_dung_moi)
                    print(f"Tạo người dùng mới: {personal_data["Identity Code"]}")
                    db.commit()
                    db.refresh(khach_moi)
                    db.refresh(nguoi_dung_moi)
                             
    def delete_data(self, cccd_id):
        self.KNN.delete_data(cccd_id)
        with next(get_db()) as db:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
            if nguoi_dung.vai_tro == "officer":
                base_role = CanBo
            elif nguoi_dung.vai_tro == "student":
                base_role = SinhVien
            else:
                base_role = Khach
            
            check = db.query(base_role).filter(base_role.cccd_id == cccd_id).first()
            if not check:
                raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy cá nhân: {cccd_id}")
            check.data = False
            db.commit()
            print(f"Xóa dữ liệu cá nhân: {cccd_id}")
            db.refresh(check)
            
    def predict(self, img_b64, imageManager):
        result = {}
        others = []
        img_array = imageManager.base64_to_array(img_b64)
        faces, nums_of_people = self.embed_face(img_array)
        HEIGHT, WIDTH = img_array.shape[:2]
        LEFT, RIGHT, UPPER, LOWER = WIDTH // 4, WIDTH // 4 + WIDTH // 2, 0, HEIGHT

        if nums_of_people == 0:
            return result
        else:
            if len(faces) == 1:
                face = faces[0].embedding
                person = self.KNN.predict(face)
                person = get_info(person)
                result.update({"main": person})
            else:
                faces_with_surface = []
                for face in faces:
                    person = self.KNN.predict(face.embedding)
                    person = get_info(person)
                    left, upper, right, lower = face.bbox.astype(int)
                    
                    if not ((LEFT <= left < right <= RIGHT) and (UPPER <= upper < lower <= LOWER)):
                        others.append(person)
                        continue
                    faces_with_surface.append({"person": person, "surface": surface(left, upper, right, lower)})
                    faces_with_surface.sort(key = lambda x: x["surface"], reverse = True)
                    for i in range(len(faces_with_surface)):
                        person = faces_with_surface[i]
                        if i == 0:
                            result.update({"main": person["person"]})
                        else:
                            others.append(person["person"])
            result.update({"others": others})
            return result