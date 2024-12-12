import os
import shutil

from fastapi import APIRouter, UploadFile, File, HTTPException, status

from app.services import WeeklySchedule

weekly_schedule = WeeklySchedule.ScheduleParser()

router = APIRouter()

@router.post("/api/institude-calendar/post")
def post_lich_tuan(current_user = Depends(login_required),
                   permission: PermissionRequired = Depends(PermissionRequired("admin")),
                   file: UploadFile = File(...)):
    if not file:
        raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail =  "No file found")

    if file.content_type != "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
        raise HTTPException(status_code = status.HTTP_400_BAD_REQUEST, detail = f"Supported formats: {weekly_schedule.supported_formats}")

    file_path = os.path.join(weekly_schedule.save_dir, "WeeklySchedule.docx")
    try:
        with open(file_path, "wb") as buffer:
            shutil.copyfileobj(file.file, buffer)
        weekly_schedule.format_events(file_path)
        return {"success": True}
    except Exception as err:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=err)
    

@router.get("/api/institude-calendar/get")
def get_lich_tuan():
    return weekly_schedule.get_events()

