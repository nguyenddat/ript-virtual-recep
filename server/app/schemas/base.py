from typing import Optional, TypeVar, Generic, Dict

from pydantic import BaseModel, Field

class BaseResponseSchema(BaseModel):
    success: bool = Field(default=True)
    status_code: int = Field(default=status.HTTP_200_OK)
    message: Optional[str] = Field(default=None)

# T = TypeVar("T")

# class ResponseSchemaBase(BaseModel):
#     __abstract__ = True

#     success: bool
#     code: str = ''
#     message: str = ''
    

#     def custom_response(self, code: str, message: str):
#         self.code = code
#         self.message = message
#         return self

#     def success_response(self):
#         self.code = '200'
#         self.message = 'Success'
#         return self


# class DataResponse(ResponseSchemaBase, BaseModel, Generic[T]):
#     data: Optional[T] = None

#     class Config:
#         arbitrary_types_allowed = True

#     def custom_response(self, code: str, message: str, data: T):
#         self.code = code
#         self.message = message
#         self.data = data
#         return self

#     def success_response(self, data: T):
#         self.code = '200'
#         self.message = 'Success'
#         self.data = data
#         return self


# class MetadataSchema(BaseModel):
#     current_page: int
#     page_size: int
#     total_items: int
