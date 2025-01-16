# server/app/api/send_mails.py

from fastapi import FastAPI, Depends, HTTPException, status, APIRouter
from sqlalchemy.orm import Session
from app.db.base import get_db
from app.services.send_email_service import SendMailServices
from fastapi import BackgroundTasks

router = APIRouter()

@router.post("/send_mails")
async def trigger_send_emails(background_tasks: BackgroundTasks, db: Session = Depends(get_db)):
    """
    Endpoint to trigger sending of various emails.
    """
    try:
        target_dates = SendMailServices.get_target_dates()
        background_tasks.add_task(SendMailServices.send_all_emails, db, target_dates)
        return {"message": "Email sending has been initiated successfully."}
    except Exception as e:
        # Ideally, log the exception here
        raise HTTPException(status_code=500, detail="An error occurred while initiating email sending.")
