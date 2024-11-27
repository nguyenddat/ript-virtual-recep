from datetime import datetime

def format_day(day: str):
    return datetime.strptime(ngay_bat_dau, "%d-%m-%Y")
    
def format_day_db(day: str):
    return datetime.strptime(day.split()[0], "%d/%m/%Y")