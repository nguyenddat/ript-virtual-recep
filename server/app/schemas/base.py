from typing import Optional, TypeVar, Generic, Dict

from pydantic import BaseModel

T = TypeVar("T")

class ResponseSchemaBase(BaseModel):
    success: bool
    code: str = ''
    message: str = ''
    
    def custom_response(self, code: str, message: str):
        self.code = code
        self.message = message
        return self

    def success_response(self):
        self.code = '200'
        self.message = 'Success'
        self.success = True
        return self

class DataResponse(ResponseSchemaBase, BaseModel, Generic[T]):
    data: Optional[T] = None

    class Config:
        arbitrary_types_allowed = True

    def custom_response(self, code: str, message: str, data: T):
        self.code = code
        self.message = message
        self.data = data
        return self

    def success_response(self, data: T):
        self.code = '200'
        self.message = 'Success'
        self.data = data
        return self


# class MetadataSchema(BaseModel):
#     current_page: int
#     page_size: int
#     total_items: int
