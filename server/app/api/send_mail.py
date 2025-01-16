from fastapi import FastAPI, Depends, HTTPException, status, APIRouter
from sqlalchemy.orm import Session

from app.db.base import get_db
from dotenv import load_dotenv
from fastapi.security import HTTPBasic, HTTPBasicCredentials
import secrets
from app.services.send_email_service import send_all_emails
load_dotenv()
import os
ADMIN_USERNAME = os.getenv("USER_INIT", "admin")
ADMIN_PASSWORD = os.getenv("USER_PASS", "admin")
router = APIRouter()
def get_current_username(credentials: HTTPBasicCredentials = Depends(get_db)):
    correct_username = secrets.compare_digest(credentials.username, ADMIN_USERNAME)
    correct_password = secrets.compare_digest(credentials.password, ADMIN_PASSWORD)
    if not (correct_username and correct_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Basic"},
        )
    return credentials.username

@router.post("/send_mails")
async def trigger_send_emails(db: Session = Depends(get_db)):
    """Endpoint để kích hoạt gửi email."""
    try:
        send_all_emails()
        return {"message": "Đã kích hoạt gửi email thành công."}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Đã xảy ra lỗi khi gửi email.")