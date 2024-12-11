from fastapi import status
from typing import Optional, TypeVar, Generic, Dict
from pydantic import BaseModel, Field

class ResponseSchemaBase(BaseModel):
    __abstract__ = True

    success = None
    code = None
    message = None
    
    def custom_response(self, code, message):
        self.code = code
        self.message = message
        return self

    def success_response(self):
        self.code = status.HTTP_200_OK
        self.message = 'Success'
        return self

class DataResponse(ResponseSchemaBase, BaseModel, Generic[T]):
    data: Optional[T] = None

    class Config:
        arbitrary_types_allowed = True

    def custom_response(self, code, message, data: T):
        self.code = code
        self.message = message
        self.data = data
        return self

    def success_response(self, data: T):
        self.code = status.HTTP_200_OK
        self.message = 'Success'
        self.data = data
        return self


# class MetadataSchema(BaseModel):
#     current_page: int
#     page_size: int
#     total_items: int
