import os
import time
import psycopg2
import pandas as pd
from datetime import datetime
from dotenv import load_dotenv

load_dotenv('database/.env')
db_name = os.getenv("DBNAME")
db_user = os.getenv("USER")
db_password = os.getenv("PASSWORD")
db_host = os.getenv("HOST")
db_port = os.getenv("PORT")

xlsx_file_path = "database/data/test.xlsx"

def get_conn():
    # Connect to PostgreSQL
    conn = psycopg2.connect(
        dbname=db_name,
        user=db_user,
        password=db_password,
        host=db_host,
        port=db_port
    )
    return conn

def insert_sinhvien():
    xls = pd.ExcelFile(xlsx_file_path)
    conn = get_conn()
    cursor = conn.cursor()

    cate = {
        0: "ma_sinh_vien",
        1: "gioi_tinh",
        2: "quoc_tich",
        3: "dan_toc",
        4: "ton_giao",
        5: "ngay_sinh",
        6: "cccd"
    }

    sheetname = xls.sheet_names['Dữ liệu SV']
    df = pd.read_excel(xls, sheetname, dtype=str)
    for index, row in df.iterrows():
        id = 0
        sinh_vien = {}
        for col in df.columns:
            value = str(row[col])
            if value == "nan":
                id += 1
                continue
            ca = cate[id]
            if ca == "ngay_sinh":
                value = datetime.strptime(value, "%d/%m/%Y").date()
            sinh_vien.update({ca: value})
            id += 1
        cursor.execute(f'''INSERT INTO sinh_vien ({", ".join(sinh_vien.keys())}) 
                           VALUES ({", ".join(["%s"] * len(sinh_vien))})
                           ON CONFLICT (ma_sinh_vien) DO NOTHING''', tuple(sinh_vien.values()))
        conn.commit()
        print(f"INSERT thanh cong {sinh_vien['ma_sinh_vien']}")
        time.sleep(0.2)
    conn.close()

def insert():
    xls = pd.ExcelFile(xlsx_file_path)
    du_lieu_lop_tin_chi = [0, 2, 3, 4, 5, 6, 7]
    conn = get_conn()
    cursor = conn.cursor()
    cate = None
    id = 0
    for i in du_lieu_lop_tin_chi:
        if i == 0:
            cate = {
                0: ["sinh_vien", "ma_sinh_vien"],
                1: ["sinh_vien", "ho_ten"],
                2: ["sinh_vien", "lop_hanh_chinh"],
                3: ["hoc_phan", "ma_hoc_phan"],
                4: ["hoc_phan", "ten_hoc_phan"],
                5: ["hoc_phan", "so_tin_chi"],
                6: ["lop_tin_chi", "thu_tu_lop"],
                7: ['nhom_tin_chi', 'thu_tu_nhom'],
                8: ['lop_tin_chi', 'hoc_ky']
            }
        else:
            cate = {
                0: ["sinh_vien", "ma_sinh_vien"],
                1: ["sinh_vien", "ho_ten"],
                2: ["sinh_vien", "cccd"],
                3: ["sinh_vien", "lop_hanh_chinh"],
                4: ["hoc_phan", "ma_hoc_phan"],
                5: ["hoc_phan", "ten_hoc_phan"],
                6: ["hoc_phan", "so_tin_chi"],
                7: ["lop_tin_chi", "thu_tu_lop"],
                8: ['nhom_tin_chi', 'thu_tu_nhom'],
                9: ['lop_tin_chi', 'hoc_ky']
            }

        sheetname = xls.sheet_names[i]
        df = pd.read_excel(xls, sheetname, dtype=str)
        for index, row in df.iterrows():
            sinhvien = {}
            hocphan = {}
            loptinchi = {}
            nhomtinchi = {}
            sinhvien_nhomtinchi = {}
            
            for col in df.columns:
                check = cate[id]
                table = check[0]
                temp = check[1]
                value = str(row[col])
                if value == 'nan' or temp == 'cccd':
                    if id == len(list(cate)) - 1:
                        id = 0
                    else:
                        id += 1
                    continue
                
                if table == 'sinh_vien':
                    sinhvien.update({temp: value})
                if table == 'hoc_phan':
                    if temp == "ma_hoc_phan":
                        loptinchi.update({temp: value})    
                    hocphan.update({temp: value})
                if table == 'lop_tin_chi':
                    loptinchi.update({temp: value})
                if table == 'nhom_tin_chi':
                    nhomtinchi.update({temp: value})
                    
                if id == len(list(cate)) - 1:
                    id = 0
                else:
                    id += 1

            # Construct unique identifiers for loptinchi and nhomtinchi
            if "ma_hoc_phan" in loptinchi.keys() and "thu_tu_lop" in loptinchi.keys():
                ma_lop_tin_chi = f'{loptinchi["ma_hoc_phan"]}-{loptinchi["thu_tu_lop"]}'
                loptinchi.update({"ma_lop_tin_chi": ma_lop_tin_chi})
                nhomtinchi.update({"ma_lop_tin_chi": ma_lop_tin_chi})
            
            if 'ma_lop_tin_chi' in nhomtinchi.keys():
                if 'thu_tu_nhom' in nhomtinchi.keys():
                    ma_nhom_tin_chi = f"{nhomtinchi['ma_lop_tin_chi']}-{nhomtinchi['thu_tu_nhom']}"
                else:
                    nhomtinchi.update({"thu_tu_nhom": "00"})
                    ma_nhom_tin_chi = f"{nhomtinchi['ma_lop_tin_chi']}"
                nhomtinchi.update({'ma_nhom_tin_chi': ma_nhom_tin_chi})
                sinhvien_nhomtinchi.update({'ma_nhom_tin_chi': ma_nhom_tin_chi})
                sinhvien_nhomtinchi.update({'ma_sinh_vien': sinhvien['ma_sinh_vien']})

            # Insert operations
            cursor.execute(f'''INSERT INTO hoc_phan ({", ".join(hocphan.keys())}) 
                               VALUES ({", ".join(["%s"] * len(hocphan))})
                               ON CONFLICT (ma_hoc_phan) DO NOTHING''', tuple(hocphan.values()))
            conn.commit()

            cursor.execute(f'''INSERT INTO lop_tin_chi ({", ".join(loptinchi.keys())}) 
                               VALUES ({", ".join(["%s"] * len(loptinchi))})
                               ON CONFLICT (ma_lop_tin_chi) DO NOTHING''', tuple(loptinchi.values()))
            conn.commit()

            cursor.execute(f'''INSERT INTO nhom_tin_chi ({", ".join(nhomtinchi.keys())}) 
                               VALUES ({", ".join(["%s"] * len(nhomtinchi))})
                               ON CONFLICT (ma_nhom_tin_chi) DO NOTHING''', tuple(nhomtinchi.values()))
            conn.commit()

            cursor.execute(f'''INSERT INTO sinh_vien_nhom_tin_chi ({", ".join(sinhvien_nhomtinchi.keys())}) 
                               VALUES ({", ".join(["%s"] * len(sinhvien_nhomtinchi))})
                               ON CONFLICT DO NOTHING''', tuple(sinhvien_nhomtinchi.values()))
            conn.commit()

            print("Data saved successfully")
            time.sleep(0.3)
    conn.close()

# Run insert functions
insert_sinhvien()
insert()
