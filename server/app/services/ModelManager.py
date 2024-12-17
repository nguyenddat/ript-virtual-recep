import os
import cv2
import pickle
import hashlib
import datetime
import numpy as np
import concurrent.futures

from PIL import Image
from datetime import datetime
from sqlalchemy import or_, literal
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
from app.helper.face_recognition_helpers import get_infor, get_base_role

from app.schemas.face_recognition.KNN import knn
from app.schemas.face_recognition.KNNData import KNNData
from app.schemas.face_recognition.EmbeddingModel import embedding_model

from app.services.ImageManager import image_manager

class ModelManager:
    def __init__(self):
        self.model = embedding_model
        self.KNN = knn
        self._post_init()
        
    def _post_init(self):
        raw_data = self.load_data()
        self.KNN.load_data(raw_data)
        print(f"Có {len(self.KNN.data)} dữ liệu")
        
    
    def load_user_data(self, nguoi_dung):
        data_dir = os.path.join(os.getcwd(), "app", "data", nguoi_dung.cccd_id)
        try:
            backup_file_dir = os.path.join(data_dir, "backup.pkl")
            with open(backup_file_dir, "rb") as file:
                return pickle.load(file)
        except:
            X, y = [], nguoi_dung.cccd_id
            for file in os.listdir(data_dir):
                if file.endswith(".png"):
                    img_path = os.path.join(data_dir, file)
                    image = np.array(Image.open(img_path).convert("RGB"))
                    faces, nums_of_people = self.model.embed_face(image)
                    X.extend(faces)
            data_return = {
                "X": X,
                "y": y
            }
            backup_file_dir = os.path.join(data_dir, "backup.pkl")
            with open(backup_file_dir, "wb") as file:
                pickle.dump(data_return, file)
            return data_return
                
    
    def load_data(self):
        try:
            """Thực hiện tải dữ liệu đã lưu..."""
            with open(self.KNN.save_model_path, "rb") as file:
                data = pickle.load(file)
                return data
        except:
            data = []
            with next(get_db()) as db:
                cac_sinh_vien = db.query(SinhVien).filter(SinhVien.data.is_(True)).all()
                cac_can_bo = db.query(CanBo).filter(CanBo.data.is_(True)).all()
                cac_khach = db.query(Khach).filter(Khach.data.is_(True)).all()
            cac_nguoi_dung = cac_sinh_vien + cac_can_bo + cac_khach
            # try:
            """Không thể tải dữ liệu đã lưu --> Tải dữ liệu backup..."""
            with concurrent.futures.ThreadPoolExecutor() as executor:
                futures = {
                    executor.submit(self.load_user_data, nguoi_dung): nguoi_dung
                    for nguoi_dung in cac_nguoi_dung
                }
                
                for future in concurrent.futures.as_completed(futures):
                    result = future.result()
                    data.append(result)
            return data
            # except:
            #     print("ERROR")

                             
    def update_data(self, data_dir, personal_data):            
        """Cập nhật dữ liệu cá nhân trong db"""
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
                raise HTTPException(status_code = status.HTTP_500_INTERNAL_SERVER_ERROR, detail = f"Lỗi cập nhật dữ liệu: {e}") 

        class_dir = data_dir.replace("\\", "/").rstrip("/").split("/")[-1]
        data = {"y": class_dir, "X": []}
        for img in image_manager.image_files_in_folder(data_dir):
            try:
                image = image_manager.load_img_file(img)
                faces, nums_of_people = self.model.embed_face(image)
                if nums_of_people != 1:
                    print(f"Ảnh chứa nhiều khuôn mặt, không phù hợp: {img}")
                    os.remove(img)
                    continue
                else:
                    data["X"].extend(faces)
            except Exception as err:
                print(f"Lỗi xử lý ảnh")
        
        with open(os.path.join(data_dir, "backup.pkl"), "wb") as file:
            pickle.dump(data, file)

        """Thêm dữ liệu cho model"""
        self.KNN.update_data(data)
        self.KNN.save_data()
                             
    def delete_data(self, cccd_id):
        with next(get_db()) as db:
            nguoi_dung = db.query(NguoiDung).filter(NguoiDung.cccd_id == cccd_id).first()
            if not nguoi_dung:
                return
            
            base_role = get_base_role(nguoi_dung)       
            check = db.query(base_role).filter(base_role.cccd_id == cccd_id).first()
            if not check:
                raise HTTPException(status_code = status.HTTP_404_NOT_FOUND, detail = f"Không tìm thấy cá nhân: {cccd_id}")
            check.data = False
            db.commit()
            print(f"Xóa dữ liệu cá nhân: {cccd_id}")
            db.refresh(check)
        self.KNN.delete_data(cccd_id)
            
    def predict(self, img_b64):
        result = {}
        others = []
        img_array = image_manager.base64_to_array(img_b64)
        faces, nums_of_people = self.model.embed_face(img_array)
        HEIGHT, WIDTH = img_array.shape[:2]
        LEFT, RIGHT, UPPER, LOWER = WIDTH // 4, WIDTH // 4 + WIDTH // 2, 0, HEIGHT

        if nums_of_people == 0:
            return result
        else:
            if len(faces) == 1:
                person = self.KNN.predict(faces[0].embedding)
                print(person)
                person = get_infor(person)
                result.update({"main": person})
            else:
                faces_with_surface = []
                for face in faces:
                    person = self.KNN.predict(face.embedding)
                    person = get_infor(person)
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
    
model_manager = ModelManager()