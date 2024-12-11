from datetime import datetime

from fastapi_sqlalchemy import db
from sqlalchemy.orm import Session
from pydantic import EmailStr, BaseModel
from fastapi import APIRouter, HTTPException, status, Depends
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm

from app.db.base import get_db

from app.core.security import create_access_token, get_password_hash, verify_password
from app.core.config import settings

from app.schemas.base import DataResponse
from app.schemas.token import Token
from app.schemas.user import UserCreateRequest
from app.schemas.user_base import UserCreate, UserResponse
from app.schemas.login.login import LoginRequest

from app.services.srv_user import UserService

from app.models.nguoi_dung import NguoiDung
from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach

from app.core.config import settings

router = APIRouter()

roles = {"student": SinhVien, "officer": CanBo, "guest": Khach}

@router.post("/api/auth/register", response_model=UserResponse)
def register_user(user: UserCreate, db: Session = Depends(get_db)):
    db_user = db.query(NguoiDung).filter(NguoiDung.cccd_id == user.username).first()
    if db_user:
        raise HTTPException(status_code=400, detail="Username already registered")
    hashed_password = get_password_hash(user.password)
    db_user = NguoiDung(cccd_id=user.username, hashed_password=hashed_password)
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

@router.post("/api/auth/login")
async def login(form_data: LoginRequest, db: Session = Depends(get_db)):
    user = UserService().authenticate(username=form_data.cccd_id, password=form_data.password)

    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"}
        )
    user.lan_cuoi_hoat_dong = datetime.now()
    db.commit()

    base_role = roles[user.vai_tro]
    info = db.query(base_role).filter(base_role.cccd_id == user.cccd_id).first()
    
    return {
        "success": True,
        "payload": {
            "accessToken": create_access_token(user_id = user.cccd_id),
            "user": {
                "name": info.ho_ten,
                "role": user.vai_tro            
            },
            "expiresIn": settings.ACCESS_TOKEN_EXPIRE_SECONDS 
        }
    }


@router.get("/users/get-all-users", response_model=UserResponse)
async def read_users_me(current_user: NguoiDung = Depends(UserService.get_current_user)):
    return current_user