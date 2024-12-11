from pydantic import BaseModel

class LoginRequest(BaseModel):
    cccd_id: str
    password: str
