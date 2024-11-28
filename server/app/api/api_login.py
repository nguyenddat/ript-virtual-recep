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
from app.services.srv_user import UserService
from app.models.nguoi_dung import NguoiDung
from app.models.sinh_vien import SinhVien
from app.models.can_bo import CanBo
from app.models.khach import Khach

router = APIRouter()

class LoginRequest(BaseModel):
    cccd_id: str
    password: str

# @router.post('/', response_model=DataResponse[Token])
# def login_access_token(form_data: LoginRequest):
#     with next(get_db()) as db:
#         user = UserService().authenticate(
#             username=form_data.cccd_id, password=form_data.password)

#         if not user:
#             raise HTTPException(
#                 status_code=status.HTTP_400_BAD_REQUEST, detail='Incorrect username or password')
#         if not user.hoat_dong:
#             raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail='Inactive user')

#         user.lan_cuoi_hoat_dong = datetime.now()
#         db.commit()

#     return DataResponse().success_response({
#         'access_token': create_access_token(user_id=user.cccd_id)
#     })
    
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
async def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = db.query(NguoiDung).filter(NguoiDung.cccd_id == form_data.username).first()
    if not user or not verify_password(form_data.password, user.hashed_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"}, # Frontend will send API with Header like `'Authorization': `Bearer ${token}`
        )
    access_token = create_access_token(
        data={"sub": user.cccd_id}
    )
    
    user.lan_cuoi_hoat_dong = datetime.now()
    user.hoat_dong = True
    db.commit()
    db.refresh(user)
    
    vai_tro = (db.query(NguoiDung).filter(NguoiDung.cccd_id == form_data.username).first()).vai_tro
    if vai_tro == "student":
        base_role = SinhVien
    elif vai_tro == "officer":
        base_role = CanBo
    else:
        base_role = Khach
    
    check = db.query(base_role).filter(base_role.cccd_id == form_data.username).first()
    
    return {"access_token": access_token, "user": {
        "username": form_data.username,
        "ho_ten": check.ho_ten,
        "gioi_tinh": check.gioi_tinh,
        "vai_tro": vai_tro,
        "ngay_sinh": check.ngay_sinh
    }}

@router.get("/users/get-all-users", response_model=UserResponse)
async def read_users_me(current_user: NguoiDung = Depends(UserService.get_current_user)):
    return current_user