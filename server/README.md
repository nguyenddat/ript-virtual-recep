# base_fastapi

## Add new class and migration

- Thêm model tại folder server/app/model
- 'alembic init alembic'
- Sử dụng 'alembic revision --autogenerate' để tạo file migration
- Sử dụng 'alembic upgrade head' để update database

## Add new record in init

- Thêm data khởi tạo tại file /server/app/init_db.py
- Thay đổi thông tin của super user khi khởi tạo tại /server/.env (USER_INIT, USER_PASS)

Tạo cronjob 

```
#!/bin/bash

# Kích hoạt virtual environment
source /home/dinhchan/Documents/project/ript-virtual-recep/venv/bin/activate

# Chạy script Python
python /home/dinhchan/Documents/project/ript-virtual-recep/send_daily_emails.py

chmod +x /home/dinhchan/Documents/project/ript-virtual-recep/run_send_emails.sh

crontab -e

0 0 * * * /home/dinhchan/Documents/project/ript-virtual-recep/run_send_emails.sh >> /home/dinhchan/Documents/project/ript-virtual-recep/cronjob.log 2>&1

crontab -l


```
