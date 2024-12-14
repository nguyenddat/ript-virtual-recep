import os
import cv2
import pickle
import datetime
import numpy as np
import hashlib

from PIL import Image
from datetime import datetime
from numpy.linalg import norm
from collections import Counter
from sqlalchemy import or_, literal
from insightface.app import FaceAnalysis

from app.core.security import get_password_hash

from app.db.base import get_db

from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach
from app.models.nguoi_dung import NguoiDung
from app.models.lop_hanh_chinh import LopHanhChinh
from app.models.phong_ban import PhongBan

from app.helper.update_students import update_student
from app.helper.update_officers import update_officer
from app.helper.update_guests import update_guest

roles = {"student": SinhVien, "officer": CanBo, "guest": Khach}
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
    with next(get_db()) as db:
        search_first = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
        if search_first:    
            base_role = roles[search_first.vai_tro]
            person = db.query(base_role).filter(base_role.cccd_id == search_first.cccd_id).first()
            ho_ten = person.ho_ten
            return {"name": ho_ten, "cccd": cccd_id, "role": search_first.vai_tro}             
        else:
            return {"name": "Khách", "role": "guest"}

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
        print(f"THỰC HIỆN THÊM DATA...")
        self.data.append(data)
        print(f"------> Đã thêm data: {len(self.data)}")
    
    def update_data(self, cccd_id, data):
        print(f"THỰC HIỆN CẬP NHẬT DỮ LIỆU...")
        for i in range(len(self.data)):
            if self.data[i]["y"] == cccd_id:
                self.data[i]["X"] = data
                print(f"------> Cập nhật dữ liệu: {self.data[i]}")
                return
        print("------> Thêm dữ liệu")
        self.add_data({"X": data, "y": cccd_id})

    def save_data(self):
        print(f"THỰC HIỆN LƯU DỮ LIỆU")
        with open(self.save_model_path, "wb") as file:
            pickle.dump(self.data, file)
    
    def delete_data(self, cccd_id):
        print(f"THỰC HIỆN XÓA DỮ LIỆU...")
        for i in range(len(self.data)):
            if self.data[i]["y"] == cccd_id:
                self.data.pop(i)
                print(f"------> Xóa dữ liệu: {cccd_id}")
                break
    
    def predict(self, img_array):
        X, y = [], []
        for data in self.data:
            X.extend(data["X"])
            y.extend([data["y"]] * len(data["X"]))
        distances = []
        print(X[0])
        print(type(X[0]))
        print(X[0].embedding)
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
                    data_dir = os.path.join(os.getcwd(), "app", "data", str(nguoi_dung.cccd_id), "backup.pkl")
                    with open(data_dir, "rb") as file:
                        data.append(pickle.load(file))
                with open(self.KNN.save_model_path, "wb") as file:
                    pickle.dump(data, file)
                return data
            except:
                print(f"Không thể tải dữ liệu backup --> Tải dữ liệu thủ công...")
                for nguoi_dung in cac_sinh_vien + cac_can_bo + cac_khach:
                    X, y = [], nguoi_dung.cccd_id
                    data_dir = os.path.join(os.getcwd(), "app", "data", str(y))
                    for file in os.listdir(data_dir):
                        if file.endswith(".png"):
                            img_path = os.path.join(data_dir, file)
                            image = np.array(Image.open(img_path).convert("RGB"))
                            faces, nums_of_people = self.embed_face(image)
                            X.extend(faces)
                    with open(os.path.join(data_dir, "backup.pkl"), "wb") as file:
                        pickle.dump({"X": X, "y": y}, file)
                    data.append({"X": X, "y": y})
                with open(self.KNN.save_model_path, "wb") as file:
                    pickle.dump(data, file)
                return data
                             
    def update_data(self, data_dir, imageManager, personal_data):            
        # Database operations based on user role
        with next(get_db()) as db:
            try:
                if personal_data["role"] == "student":
                    update_student(personal_data)
                elif personal_data["role"] == "officer":
                    update_officer(personal_data)
                else:
                    update_guest(personal_data)
            except HTTPException as e:
                print(f"Lỗi cập nhật dữ liệu: {e.detail}")
                raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = f"Lỗi cập nhật dữ liệu: {e.detail}") 

        # Prepare basic data structure
        class_dir = data_dir.replace("\\", "/").rstrip("/").split("/")[-1]
        data = {"y": class_dir, "X": []}
        
        # Process and embed face images
        for img in imageManager.image_files_in_folder(data_dir):
            try:
                image = imageManager.load_img_file(img)
                faces, nums_of_people = self.embed_face(image)
                if nums_of_people != 1:
                    print(f"Ảnh chứa nhiều khuôn mặt, không phù hợp: {img}")
                    os.remove(img)
                    continue
                else:
                    data["X"].extend(faces)
            except Exception as err:
                print(f"Lỗi xử lý ảnh")
        
        # Backup data
        with open(os.path.join(data_dir, "backup.pkl"), "wb") as file:
            pickle.dump(data, file)

        # Update KNN data
        self.KNN.update_data(class_dir, data)
        self.KNN.save_data()
                             
    def delete_data(self, cccd_id):
        self.KNN.delete_data(cccd_id)
        with next(get_db()) as db:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
            if not nguoi_dung:
                return
            base_role = roles[nguoi_dung.vai_tro]            
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