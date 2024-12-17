import os
import numpy as np

from typing import Dict, Union, AnyStr, List, Optional
from dataclasses import dataclass
from pydantic import Field, validator, BaseModel

class FaceEmbedding:
    def __init__(self, embedding, bbox):
        self.embedding = embedding
        self.bbox = bbox
        self._validate_embedding()
       
    def _validate_embedding(self):
        if not isinstance(self.embedding, np.ndarray):
            raise ValueError("embedding must be a numpy array")

class PersonData(BaseModel):
    data: Dict[
        Union["y", "X"], Union[AnyStr, List[FaceEmbedding]] 
    ] = Field(description = "Personal's identity code and each picture embedding")
        
    @validator("data")
    def validate_y(cls, v):
        if not isinstance(v["y"], str):
            raise ValueError("y must be string of person's identity code")
        
        if not isinstance(v["X"], list):
            raise ValueError("X must be a list of embedding")
        
        for face_embedding in v["X"]:
            if not isinstance(face_embedding, FaceEmbedding):
                raise ValueError("element of X must be face embedding")