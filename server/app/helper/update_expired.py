from datetime import datetime

from app.db.base import get_db
from app.models.cuoc_hen import CuocHen

async def update_expired_status():
    with next(get_db()) as db:
        try:
            current_time = datetime.now()
            items = (
                db.query(CuocHen)
                .filter(
                    CuocHen.ngay_gio_ket_thuc < current_time,
                    CuocHen.trang_thai == "pending"
                )
                .all()
            )
            
            for item in items:
                item.trang_thai = "expired"
            
            db.commit()
        finally:
            db.close()