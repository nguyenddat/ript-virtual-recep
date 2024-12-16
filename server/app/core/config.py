import os
from dotenv import load_dotenv
from pydantic_settings import BaseSettings

BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '../../'))
load_dotenv()

class Settings(BaseSettings):
    PROJECT_NAME: str = os.getenv('PROJECT_NAME')
    SECRET_KEY: str = os.getenv('SECRET_KEY')
    API_PREFIX: str = ''
    BACKEND_CORS_ORIGINS: list = ['*']
    DATABASE_URL: str = os.getenv('DATABASE_URL')
    ACCESS_TOKEN_EXPIRE_SECONDS: int = os.getenv('ACCESS_TOKEN_EXPIRE_SECONDS')
    SECURITY_ALGORITHM: str = os.getenv('SECURITY_ALGORITHM')
    LOGGING_CONFIG_FILE: str = os.path.join(BASE_DIR, 'logging.ini')

    USER_INIT: str = os.getenv('USER_INIT')
    USER_PASS: str = os.getenv('USER_PASS')
    USER_EMAIL: str = os.getenv('USER_EMAIL')

    KIOSK_EMAIL: str = os.getenv("KIOSK_EMAIL")
    KIOSK_PASSWORD: str = os.getenv("KIOSK_PASSWORD")
    
settings = Settings()
