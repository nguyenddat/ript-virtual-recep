import pandas as pd
from datetime import datetime, timedelta

class ClassSchedule(object):
    def __init__(self):
        self.supported_format = [".xlsx"] 
    
    def format_time(self, start_period: int, num_of_periods: int):
        time = {}
        period = 1
        start = 7
        
        while period <= 16:
            start_time = f'{start}:00'
            end_time = f'{start}.50'
            time.update({period: f'{start_time} - {end_time}'})
            period += 1
            start += 1
        
        start_time = time[start_period].split(" - ")[0]
        end_time = time[start_period + num_of_periods - 1].split(" - ")[1]
        return start_time, end_time
    
    def format_day(self, text: str, day: int):
        start_day, end_day = map(str, text.split(" - "))
        start_day = datetime.strptime(start_day, "%d/%m/%y")
        end_day = datetime.strptime(end_day, "%d/%m/%y")
        
        exact_day = start_day + timedelta(day - 2)
        return exact_day.strftime("%d/%m/%Y")
    
    def drop_unneed_cols(self, df: pd.DataFrame):
        cols_to_drop = []
        for col in df.columns:
            header = df[col].iloc[0]
            
            if header in ("TT", "Tổ hợp", "Kíp", "Ghi chú", "Tháng", "Hệ", "Khoa", "Bộ môn", "Hình thức thi"):
                cols_to_drop.append(col)

        df = df.drop(columns = cols_to_drop)    
        return df
    
    def headers_parser(self, df: pd.DataFrame):
        headers = []
        current_month = None
        for col in df.columns:
            col_3_row = df[col].iloc[0:3]
            first_cell = col_3_row.iloc[0]
            second_cell =  col_3_row.iloc[1]
            third_cell = col_3_row.iloc[2]
            
            if not pd.isna(first_cell):
                current_month = first_cell
                if not pd.isna(second_cell) and second_cell != first_cell:
                    if not pd.isna(third_cell) and third_cell != second_cell:
                        headers.append("-".join([str(second_cell), str(third_cell), str(first_cell)]))
                    else:
                        headers.append("-".join([str(second_cell), str(first_cell)]))
                else:
                    headers.append(str(first_cell))
            else:
                first_cell = current_month
                if not pd.isna(second_cell) and second_cell != first_cell:
                    if not pd.isna(third_cell) and third_cell != second_cell:
                        headers.append("-".join([str(second_cell), str(third_cell), str(first_cell)]))
                    else:
                        headers.append("-".join([str(second_cell), str(first_cell)]))
                else:
                    headers.append("")

        for i in range(len(headers)):
            header = headers[i]
            if "-" not in header:
                continue
            header = header.split()[0]
            temp = header.split("-")
            try:
                if len(temp) != 3:
                    ngay_bat_dau, ngay_ket_thuc, nam, thang = temp[0], temp[1], temp[4], temp[3]
                else:    
                    ngay_bat_dau, ngay_ket_thuc, thang_nam = temp[0], temp[1], temp[2].split("/")
                    thang, nam = thang_nam[0], thang_nam[1]

                bat_dau  = f'{ngay_bat_dau}/{thang}/{nam}'
                if int(ngay_ket_thuc) < int(ngay_bat_dau):
                    if int(thang) + 1 > 12:
                        thang, nam = "1", f"{int(nam) + 1}" 
                    else:
                        thang = f"{int(thang) + 1}"
                ket_thuc = f'{ngay_ket_thuc}/{thang}/{nam}' 
                headers[i] = f'{bat_dau} - {ket_thuc}'
            except:
                print(header)
        return headers

    
    def schedule_parser(self, file_dir):
        xls = pd.ExcelFile(file_dir)
        categories = {
            "Mã môn học": "ma_hoc_phan",
            "Tên môn học/ học phần": "ten_hoc_phan",
            "Nhóm": "thu_tu_lop",
            "Tổ TH": "thu_tu_nhom",
            "Thứ": "thu",
            "Tiết BĐ": "tiet_bat_dau",
            "Số tiết": "so_tiet",
            "Phòng": "phong",
            "Mã giảng viên mới": "ma_can_bo",
            "Giảng viên giảng dạy": "ho_ten",
            "Nhà": "nha"
        }
        
        class_schedule = []
        for i in range(len(xls.sheet_names)):
            sheetname = xls.sheet_names[i]
            df = pd.read_excel(xls, sheetname, dtype = str)
            df = df.iloc[8:, :-15]
            df = self.drop_unneed_cols(df)
            
            headers = self.headers_parser(df)
            
            df = df.iloc[4:]
            for index, row in df.iterrows():
                id = 0
                day, start_period, num_of_periods, start_time, end_time = None, None, None, None, None 
                temp = {}
                lich = []
                for col in df.columns:
                    value = row[col]
                    category = headers[id]
                    if category in categories.keys():
                        category = categories[category]
                        if category == "thu_tu_nhom" and pd.isna(value):
                            value = "00"
                        if category == "thu":
                            day = int(value)
                            id += 1
                            continue
                        if category == "tiet_bat_dau":
                            start_period = int(value)
                        if category == "so_tiet":
                            num_of_periods = int(value)
                        if start_period and num_of_periods:
                            start_time, end_time = self.format_time(start_period, num_of_periods)
                            temp.update({"startTime": start_time})
                            temp.update({"endTime": end_time})
                        temp.update({category: value})
                    else:
                        if pd.isna(value):
                            id += 1
                            continue
                        day = self.format_day(category, day)
                        lich.append(day)
                    id += 1
                temp.update({"day": lich})
                class_schedule.append(temp)
        return class_schedule