from typing import List, Optional, Dict, Union
from pydantic import BaseModel, Field, ConfigDict, validator
from fastapi import status

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
    
    department_code: Optional[int] = Field(
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
        allowed_roles = ['admin', 'student', 'guest', 'officer']
        if role not in allowed_roles:
            raise ValueError(f"Invalid role. Must be one of {allowed_roles}")
        return role
    
    @validator('cccd')
    def validate_identity_code(cls, cccd):
        """
        Validate that required fields are present in cccd data
        """
        required_fields = ['Identity Code', 'Name', 'DOB', 'Gender']
        for field in required_fields:
            if field not in cccd:
                raise ValueError(f"{field} is required in cccd data")
        return cccd

    model_config = ConfigDict(
        extra='ignore',  # Ignore extra fields
        str_strip_whitespace=True  # Automatically strip whitespace
    )