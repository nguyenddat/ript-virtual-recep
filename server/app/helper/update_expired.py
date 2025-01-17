from datetime import datetime
from sqlalchemy import literal, func, and_

from app.db.base import get_db
from app.models.cuoc_hen import CuocHen

def update_expired_status():
    with next(get_db()) as db:
        try:
            current_time = datetime.now()
            items = (
                db.query(CuocHen).filter(
                    and_(
                        func.date(CuocHen.ngay_gio_ket_thuc) < current_time,
                        CuocHen.trang_thai == "pending"
                    )
                ).all()
            )
            
            for item in items:
                item.trang_thai = "expired"
            
            db.commit()
        finally:
            db.close()

def update_finish_status():
    with next(get_db()) as db:
        current_time = datetime.now()
        try:
            items = db.query(CuocHen).filter(
                and_(
                    func.date(CuocHen.ngay_gio_ket_thuc) < current_time,
                    CuocHen.trang_thai == "confirmed"
                )
            ).all()
            
            for item in items:
                item.trang_thai = "finished"
            db.commit()
        finally:
            db.close()