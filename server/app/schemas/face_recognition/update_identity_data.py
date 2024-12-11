from typing import List, Optional, Dict, Union
from pydantic import BaseModel, Field, ConfigDict, validator
from fastapi import status

from app.schemas.base import BaseResponseSchema

# Specific Success Response
class IdentityDataUpdateSuccessResponse(BaseResponseSchema):
    """
    Success response for identity data update
    """
    success: bool = Field(default=True)
    status_code: int = Field(default=status.HTTP_200_OK)
    message: Optional[str] = Field(default="Cập nhật dữ liệu thành công")

# Error Response Schema
class ErrorResponseSchema(BaseResponseSchema):
    """
    Standard error response schema
    """
    success: bool = Field(default=False)
    status_code: int = Field(default=status.HTTP_400_BAD_REQUEST)
    message: str = Field(description="Cập nhật dữ liệu không thành công")

# Request Schema
class IdentityDataUpdateRequest(BaseModel):
    """
    Request schema for updating identity data
    """
    b64_img: List[str] = Field(
        default=None, 
        min_length=1
    )
    
    cccd: Dict[str, Union[str, int]] = Field(
        min_length=1
    )
    
    role: str = Field(
        min_length=1
    )
    
    department_code: Optional[str] = Field(
        default=None
    )
    
    personal_code: Optional[str] = Field(
        default=None
    )
    
    @validator('role')
    def validate_role(cls, role):
        """
        Validate that role is one of the allowed values
        """
        allowed_roles = ['admin', 'user', 'guest', 'officer']
        if role not in allowed_roles:
            raise ValueError(f"Invalid role. Must be one of {allowed_roles}")
        return role
    
    @validator('cccd')
    def validate_identity_code(cls, cccd):
        """
        Validate that Identity Code is present in cccd dictionary
        """
        if 'Identity Code' not in cccd:
            raise ValueError("Identity Code is required in cccd data")
        return cccd
    
    model_config = ConfigDict(
        extra='ignore',  # Ignore extra fields
        str_strip_whitespace=True  # Automatically strip whitespace
    )