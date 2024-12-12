import jwt

from typing import Optional
from fastapi import Depends, HTTPException
from fastapi.security import HTTPBearer
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm, HTTPBearer, HTTPAuthorizationCredentials
from fastapi_sqlalchemy import db
from jose import JWTError, jwt
from sqlalchemy.orm import Session
from pydantic import ValidationError
from starlette import status

from app.db.base import get_db
from app.models.nguoi_dung import NguoiDung
from app.core.config import settings
from app.core.security import verify_password, get_password_hash
from app.schemas.token import TokenPayload
from app.schemas.user import UserCreateRequest, UserUpdateMeRequest, UserUpdateRequest

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")

class UserService(object):
    __instance = None

    reusable_oauth2 = HTTPBearer(
        scheme_name='Authorization'
    )

    @staticmethod
    def authenticate(*, username: str, password: str) -> Optional[NguoiDung]:
        """
        Check username and password is correct.
        Return object User if correct, else return None
        """
        with next(get_db()) as db:
            user = db.query(NguoiDung).filter(NguoiDung.cccd_id == username).first()
            if not user:
                return None
            if not verify_password(password, user.hashed_password):
                return None
            return user

    @staticmethod
    def get_current_user(
        credentials: HTTPAuthorizationCredentials = Depends(reusable_oauth2),
        db: Session = Depends(get_db)
    ):
        credentials_exception = HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Could not validate credentials",
            headers={"WWW-Authenticate": "Bearer"},
        )
        try:
            token = credentials.credentials
            payload = jwt.decode(token, settings.SECRET_KEY, algorithms=[settings.SECURITY_ALGORITHM])
            username: str = payload.get("payload", "").get("user_id", "")
            if username is None:
                raise credentials_exception
        except JWTError:
            print(True)
            raise credentials_exception
        user = db.query(NguoiDung).filter(NguoiDung.cccd_id == username).first()
        if user is None:
            raise credentials_exception
        return user

    @staticmethod
    def update_me(data: UserUpdateMeRequest, current_user: NguoiDung):
        current_user.email = current_user.email if data.email is None else data.email
        current_user.hashed_password = current_user.hashed_password if data.password is None else get_password_hash(
            data.password)
        db.session.commit()
        return current_user

    @staticmethod
    def update(user: NguoiDung, data: UserUpdateRequest):
        user.email = user.email if data.email is None else data.email
        user.hashed_password = user.hashed_password if data.password is None else get_password_hash(
            data.password)
        user.is_active = user.is_active if data.is_active is None else data.is_active
        db.session.commit()
        return user
