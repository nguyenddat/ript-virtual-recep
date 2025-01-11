import os
import re
import json
import docx
from datetime import datetime
import logging

class ScheduleParser:
    def __init__(self, save_dir=None):
        self.save_dir = self.check_save_dir(save_dir)
        self.return_dir = os.path.join(self.save_dir, "WeeklySchedule.json")
        self.WeeklySchedule = self.load_stored_events() or []
        self.supported_formats = [".docx"]
        
    def check_save_dir(self, save_dir):
        save_dir = save_dir or os.path.join(os.getcwd(), "app", "data", "WeeklySchedule")
        if not os.path.exists(save_dir):
            os.makedirs(save_dir, exist_ok=True)
            logging.info(f"Created save directory at {save_dir}")
        return save_dir
    
    def save_stored_events(self):
        try:
            with open(self.return_dir, "w", encoding="utf-8") as file:
                json.dump(self.WeeklySchedule, file, ensure_ascii=False, indent=4)
            logging.info(f"Saved {len(self.WeeklySchedule)} events to {self.return_dir}")
        except Exception as e:
            logging.error(f"Error saving events to {self.return_dir}: {e}")
    
    def load_stored_events(self):
        try:
            with open(self.return_dir, "r", encoding="utf-8") as file:
                data = json.load(file)
                logging.info(f"Loaded {len(data)} events from {self.return_dir}")
                return data
        except FileNotFoundError:
            logging.info(f"No existing schedule found at {self.return_dir}. Starting fresh.")
            return []
        except json.JSONDecodeError as e:
            logging.error(f"Error decoding JSON from {self.return_dir}: {e}")
            return []
        except Exception as e:
            logging.error(f"Unexpected error loading events: {e}")
            return []
    
    def get_events(self):
        return self.WeeklySchedule
    
    def parse_schedule(self, array):
        events = []
        index = 0  # Start from index 0 to make it more flexible
        current_date = None
        current_year = 2025  # Update năm theo nhu cầu hoặc tự động trích xuất từ dữ liệu

        while index < len(array):
            element = array[index].strip()
            # Kiểm tra xem phần tử hiện tại có phải là mục ngày hay không
            day_match = re.match(r'Thứ \w+, ngày (\d{1,2}/\d{1,2})', element)
            if day_match:
                # Trích xuất ngày và thêm năm
                date_str = day_match.group(1) + f'/{current_year}'  # Ví dụ: '16/12/2024'
                try:
                    current_date = datetime.strptime(date_str, '%d/%m/%Y').date()
                    logging.info(f"Processing date: {current_date}")
                except ValueError as ve:
                    logging.error(f"Lỗi phân tích ngày cho '{date_str}': {ve}")
                    current_date = None
                index += 1
                continue  # Chuyển sang phần tử tiếp theo
            else:
                if not current_date:
                    # Nếu không có ngày hiện tại, bỏ qua sự kiện hoặc xử lý theo cách khác
                    logging.warning(f"Tìm thấy sự kiện mà không có ngày hợp lệ: '{element}'")
                    index +=1
                    continue
                # Xử lý chuỗi sự kiện
                event_lines = element.split('\n')
                # Nhóm các dòng thành các sự kiện riêng biệt dựa trên dòng bắt đầu bằng thời gian
                grouped_events = []
                current_event_lines = []
                for line in event_lines:
                    line = line.strip()
                    if not line:
                        continue  # Bỏ qua các dòng trống
                    if re.match(r'^\d{1,2}\.\d{2}:', line):
                        if current_event_lines:
                            grouped_events.append(current_event_lines)
                            current_event_lines = []
                        current_event_lines.append(line)
                    elif re.match(r'^TP:|^C/b:|^DD:', line):
                        current_event_lines.append(line)
                    else:
                        # Dòng không bắt đầu bằng thời gian hoặc nhãn, coi như phần bổ sung của sự kiện hiện tại
                        if current_event_lines:
                            current_event_lines.append(line)
                        else:
                            # Sự kiện mới không có thời gian
                            current_event_lines.append(line)
                if current_event_lines:
                    grouped_events.append(current_event_lines)
                # Phân tích từng nhóm sự kiện
                for event_group in grouped_events:
                    event = {
                        "name": "",
                        "location": "",
                        "iso_datetime": None,
                        "attendees": "",
                        "preparation": ""
                    }
                    first_line = event_group[0]
                    time_event_match = re.match(r'^(\d{1,2}\.\d{2}):\s*(.*)', first_line)
                    line_index =0
                    if time_event_match:
                        # Sự kiện có thời gian
                        time_str = time_event_match.group(1)
                        event_name = time_event_match.group(2)
                        event['name'] = event_name
                        if current_date:
                            try:
                                datetime_str = f"{current_date.strftime('%Y-%m-%d')}T{time_str.replace('.', ':')}:00"
                                datetime_obj = datetime.fromisoformat(datetime_str)
                                event['iso_datetime'] = datetime_obj.isoformat()
                            except ValueError as ve:
                                logging.error(f"Lỗi phân tích datetime cho '{datetime_str}': {ve}")
                                event['iso_datetime'] = None
                        line_index =1
                    else:
                        # Sự kiện không có thời gian
                        event['name'] = first_line
                        line_index =1
                    # Xử lý các dòng còn lại
                    while line_index < len(event_group):
                        line = event_group[line_index]
                        tp_match = re.match(r'^TP:\s*(.*)', line)
                        cb_match = re.match(r'^C/b:\s*(.*)', line)
                        dd_match = re.match(r'^DD:\s*(.*)', line)
                        if tp_match:
                            event['attendees'] = tp_match.group(1).strip()
                        elif cb_match:
                            event['preparation'] = cb_match.group(1).strip()
                        elif dd_match:
                            event['location'] = dd_match.group(1).strip()
                        else:
                            # Dòng không bắt đầu bằng nhãn, coi như phần bổ sung của địa điểm
                            if event['location']:
                                event['location'] += " " + line.strip()
                            else:
                                event['location'] = line.strip()
                        line_index +=1
                    events.append(event)
                index +=1  # Tiếp tục xử lý phần tử tiếp theo
        return events

    def events_parser(self, file_dir):
        if not os.path.exists(file_dir):
            logging.error(f"Tệp không tồn tại: {file_dir}")
            return [], None  # Trả về tuple rỗng nếu tệp không tồn tại
        events = []

        try:
            document = docx.Document(file_dir)
        except Exception as e:
            logging.error(f"Lỗi khi mở tệp .docx: {e}")
            return [], None

        for table_index, table in enumerate(document.tables, start=1):
            for row in table.rows:
                row_data = []
                for cell in row.cells:
                    cell_text = cell.text.strip()
                    if cell_text not in row_data and cell_text != "":
                        row_data.append(cell_text)
                events += row_data
        list_events = self.parse_schedule(events)
        return list_events
    
    def format_events(self, file_dir):
        events = self.events_parser(file_dir)
        
        self.WeeklySchedule = events
        self.save_stored_events()
        logging.info("Formatted and saved events successfully.")
