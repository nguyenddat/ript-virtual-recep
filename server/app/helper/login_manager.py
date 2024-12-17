from fastapi import HTTPException, Depends
from datetime import datetime
from passlib.context import CryptContext

from app.models.nguoi_dung import NguoiDung
from app.services.srv_user import UserService

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def login_required(http_authorization_credentials=Depends(UserService().reusable_oauth2)):
    return UserService().get_current_user(http_authorization_credentials)

class PermissionRequired:
    def __init__(self, *args):
        self.user = None
        self.permissions = args

    def __call__(self, user: NguoiDung = Depends(login_required)):
        self.user = user
        if self.user.vai_tro not in self.permissions and self.permissions:
            raise HTTPException(status_code=400,
                                detail=f'User can not access this api')
            
def create_new_user(db, cccd_id, password, role):
    nguoi_dung_moi = NguoiDung(
        cccd_id=cccd_id,
        hashed_password=get_password_hash(password),
        vai_tro=role,
        ngay_tao=str(datetime.now())
    )

    db.add(nguoi_dung_moi)
    db.commit()
    db.refresh(nguoi_dung_moi)