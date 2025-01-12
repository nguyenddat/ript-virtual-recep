import numpy as np
from typing import List, Dict, AnyStr, Optional
from pydantic import Field, validator, BaseModel

from app.schemas.face_recognition.FaceEmbedding import PersonData

class KNNData(BaseModel): 
    data: List[PersonData] = Field(description = "Data for KNN model")

    @validator("data")
    def validate_KNN_data(cls, v):
        for entry in v:
            if not isinstance(entry, PersonData):
                raise ValueError("element in KNN data must be person data")
        return v


    