import cv2
import numpy as np
from insightface.app import FaceAnalysis

class EmbeddingModel:
    def __init__(self):
        self.model = FaceAnalysis(name = "buffalo_l")
        self._post_init()
        
    def _post_init(self):
        self.model.prepare(ctx_id = 0, det_size = (640, 640))
        os.system('cls||clear')

    def embed_face(self, img_array):
        img = cv2.cvtColor(img_array, cv2.COLOR_BGR2RGB)
        faces = self.model.get(img)

        nums_of_people = len(faces)
        if nums_of_people == 0:
            return [FaceEmbedding(np.zeros((512)), np.zeros(4))], nums_of_people
        else:
            return [FaceEmbedding(face.embedding, face.bbox) for face in faces], nums_of_people

embedding_model = EmbeddingModel()