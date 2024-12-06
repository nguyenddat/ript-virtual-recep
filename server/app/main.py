import logging
import uvicorn
from fastapi import FastAPI
from fastapi_sqlalchemy import DBSessionMiddleware
from starlette.middleware.cors import CORSMiddleware
from pathlib import Path  
from fastapi.staticfiles import StaticFiles  
from contextlib import asynccontextmanager
from apscheduler.schedulers.asyncio import AsyncIOScheduler
from apscheduler.triggers.cron import CronTrigger
from fastapi.staticfiles import StaticFiles

from app.api import api_faceRecognition, api_login
from app.api import api_weeklySchedule, api_classSchedule, api_appointmentManager
from app.api import api_accessData
from app.models.base_class import Base
from app.db.base import engine
from app.core.config import settings
from app.helper.exception_handler import CustomException, http_exception_handler
from app.helper.update_expired import update_expired_status         

logging.config.fileConfig(settings.LOGGING_CONFIG_FILE, disable_existing_loggers=False)

Base.metadata.create_all(bind=engine)

scheduler = AsyncIOScheduler()
@asynccontextmanager
async def lifespan(app):
    scheduler.add_job(
        update_expired_status,
        trigger = CronTrigger(hour = 0),
        id = "check_expired",
        name = "Check expired schedules"
    )
    scheduler.start()
    yield
    
    scheduler.shutdown()

def get_application() -> FastAPI:
    application = FastAPI(
        lifespan = lifespan,
        title=settings.PROJECT_NAME, 
        docs_url="/docs", 
        redoc_url='/re-docs',
        openapi_url=f"{settings.API_PREFIX}/openapi.json",
        description='Base FastAPI'
    )
    
    current_dir = Path(__file__).resolve().parent
    static_dir = current_dir / "static"
    
    if not static_dir.is_dir():
        static_dir.mkdir(parents=True, exist_ok=True)
        logging.info(f"Đã tạo thư mục static tại: {static_dir}")
    else:
        logging.info(f"Thư mục static đã tồn tại tại: {static_dir}")
    
    application.mount("/static", StaticFiles(directory=static_dir), name="static")
    application.add_middleware(
        CORSMiddleware,
        allow_origins=[str(origin) for origin in settings.BACKEND_CORS_ORIGINS],
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
    )
    application.add_middleware(DBSessionMiddleware, db_url=settings.DATABASE_URL)
    application.include_router(api_accessData.router, tags = ["accessData"])
    application.include_router(api_appointmentManager.router, tags = ["appointmentManager"])
    application.include_router(api_classSchedule.router, tags = ["classSchedule"])
    application.include_router(api_faceRecognition.router, tags = ["faceRecognition"])   
    application.include_router(api_login.router, tags=["login"])  
    application.include_router(api_weeklySchedule.router, tags = ["weeklySchedule"])

    application.add_exception_handler(CustomException, http_exception_handler)

    return application


app = get_application()
if __name__ == '__main__':
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload = True)
