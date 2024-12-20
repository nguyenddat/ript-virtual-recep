import os
import pickle

from collections import Counter

from app.schemas.face_recognition.KNNData import KNNData
from app.schemas.face_recognition.FaceEmbedding import PersonData
from app.helper.face_recognition_helpers import cosine_similarity

class KNN:
    def __init__(self):
        self.k = 3
        self.similarity_threshold = 0.3
        self.data = []
        self.cccd_index = {}
        self.save_model_path = os.path.join(os.getcwd(), "app", "core", "data.pkl")

    def load_data(self, knnData: KNNData):
        self.data = knnData
        self.build_index()
        self.save_data()
            
    def build_index(self):
        self.cccd_index = {personData["y"]: i for i, personData in enumerate(self.data)}
    
    def add_data(self, personData: PersonData):
        self.data.append(personData)
        self.cccd_index[personData["y"]] = len(self.data) - 1
    
    def update_data(self, personData: PersonData):
        if personData["y"] not in self.cccd_index.keys():
            self.add_data(personData)
        else:
            index = self.cccd_index[personData["y"]]
            self.data[index]["X"] = personData["X"]

    def save_data(self):
        with open(self.save_model_path, "wb") as file:
            pickle.dump(self.data, file)
    
    def delete_data(self, cccd_id):
        if cccd_id not in self.cccd_index.keys():
            return
        index = self.cccd_index[cccd_id]
        self.data.pop(index)
        self.build_index()
            
    def predict(self, img_array):
        X, y = [], []
        for personData in self.data:
            X.extend(personData["X"])
            y.extend([personData["y"]] * len(personData["X"]))
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

knn = KNN()