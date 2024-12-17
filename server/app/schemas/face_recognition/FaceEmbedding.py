import os
import numpy as np

from typing import Dict, Union, AnyStr, List, Optional
from dataclasses import dataclass
from pydantic import Field, validator

@dataclass
class FaceEmbedding:
    def __init__(self, embedding, bbox):
        self.embedding = embedding
        self.bbox = bbox
        self._validate_embedding()
       
    def _validate_embedding(self):
        if not instance(self.embedding, np.ndarray):
            raise ValueError("embedding must be a numpy array")

@dataclass
class PersonData:
    data: Dict[
        Union["y", "X"], Union[AnyStr, List[FaceEmbedding]] 
    ] = Field(description = "Personal's identity code and each picture embedding")
        
    @validator("data")
    def validate_y(cls, v):
        if not instance(v["y"], str):
            raise ValueError("y must be string of person's identity code")
        
        if not instance(v["X"], list):
            raise ValueError("X must be a list of embedding")
        
        for face_embedding in v["X"]:
            if not instance(face_embedding, FaceEmbedding):
                raise ValueError("element of X must be face embedding")