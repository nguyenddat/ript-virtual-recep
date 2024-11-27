CREATE TABLE loai_giao_vien (
  id SERIAL PRIMARY KEY,
  ten VARCHAR(50) NOT NULL
);

CREATE TABLE can_bo (
  ma_can_bo VARCHAR(30) PRIMARY KEY,
  cccd_id VARCHAR(30) NOT NULL,
  loai_giao_vien_id INTEGER,
  mail VARCHAR(100),
  FOREIGN KEY (loai_giao_vien_id) REFERENCES loai_giao_vien(id)
);

CREATE TABLE hoc_phan (
  ma_hoc_phan VARCHAR(30) PRIMARY KEY,
  ten_hoc_phan VARCHAR(100) NOT NULL,
  so_tin_chi INTEGER NOT NULL
);

CREATE TABLE nhom_tin_chi (
  thu_tu_nhom SERIAL,
  ma_nhom_tin_chi VARCHAR(30) PRIMARY KEY, 
  ten_nhom_tin_chi VARCHAR(100) NOT NULL,
  ma_lop_tin_chi VARCHAR(30),
  FOREIGN KEY (ma_lop_tin_chi) REFERENCES lop_tin_chi(ma_lop_tin_chi)
);

CREATE TABLE lop_tin_chi (
  thu_tu_lop SERIAL,
  ma_lop_tin_chi VARCHAR(30) PRIMARY KEY,
  ma_hoc_phan VARCHAR(30) NOT NULL,
  hoc_ky VARCHAR(30) NOT NULL,
  FOREIGN KEY (ma_hoc_phan) REFERENCES hoc_phan(ma_hoc_phan)
);

CREATE TABLE can_bo_lop_tin_chi (
  ma_can_bo VARCHAR(30) NOT NULL,
  ma_lop_tin_chi VARCHAR(30) NOT NULL,
  PRIMARY KEY (ma_can_bo, ma_lop_tin_chi),
  FOREIGN KEY (ma_can_bo) REFERENCES can_bo(ma_can_bo),
  FOREIGN KEY (ma_lop_tin_chi) REFERENCES lop_tin_chi(ma_lop_tin_chi)
);

CREATE TABLE sinh_vien (
  ma_sinh_vien VARCHAR(30) PRIMARY KEY,
  gioi_tinh VARCHAR(30) CHECK (gioi_tinh IN ('NAM', 'NU')),
  dan_toc VARCHAR(30),
  ngay_sinh VARCHAR(30) NOT NULL,
  cccd_id VARCHAR(30) NOT NULL,
  mail VARCHAR(100),
);

CREATE TABLE sinh_vien_nhom_tin_chi (
  ma_sinh_vien VARCHAR(30) NOT NULL,
  ma_nhom_tin_chi VARCHAR(30) NOT NULL,
  PRIMARY KEY (ma_sinh_vien, ma_nhom_tin_chi),
  FOREIGN KEY (ma_sinh_vien) REFERENCES sinh_vien(ma_sinh_vien),
  FOREIGN KEY (ma_nhom_tin_chi) REFERENCES nhom_tin_chi(ma_nhom_tin_chi)
);


CREATE TABLE lich_hoc (
  id SERIAL PRIMARY KEY, 
  ma_nhom_tin_chi VARCHAR(30),
  ngay_hoc VARCHAR(10) NOT NULL,
  gio_bat_dau VARCHAR(10) NOT NULL,
  gio_ket_thuc VARCHAR(10) NOT NULL,
  tiet_bat_dau INTEGER NOT NULL,
  so_tiet INTEGER NOT NULL,
  phong TEXT NOT NULL,
  nha TEXT NOT NULL,
  FOREIGN KEY (ma_nhom_tin_chi) REFERENCES nhom_tin_chi(ma_nhom_tin_chi)
);

CREATE TABLE su_kien (
  id SERIAL PRIMARY KEY,
  ten_su_kien VARCHAR(100) NOT NULL,
  gio_bat_dau VARCHAR(30),
  gio_ket_thuc VARCHAR(30),
  ngay VARCHAR(30),
  dia_diem TEXT
);

CREATE TABLE khach (
  id SERIAL PRIMARY KEY,  
  cccd_id VARCHAR(30),
  ten VARCHAR(50) NOT NULL,
  ngay_tao VARCHAR(30) NOT NULL
);

CREATE TABLE lich_hen (
  id SERIAL PRIMARY KEY,  
  khach_id INTEGER NOT NULL,
  ma_can_bo VARCHAR(30) NOT NULL,
  gio_bat_dau VARCHAR(30) NOT NULL,
  ngay_hen VARCHAR(30) NOT NULL,
  dia_diem VARCHAR(30) NOT NULL,
  qr_path TEXT NOT NULL,
  trang_thai VARCHAR(10) NOT NULL CHECK (trang_thai IN ('PENDING', 'FINISHED', 'CANCELED')),
  FOREIGN KEY (khach_id) REFERENCES khach(id),
  FOREIGN KEY (ma_can_bo) REFERENCES can_bo(ma_can_bo)
);
-- -- Insert into loai_giao_vien (Types of teachers)
-- INSERT INTO loai_giao_vien (ten) VALUES 
-- ('Giáo viên chính'),
-- ('Giáo viên trợ giảng'),
-- ('Giáo viên thỉnh giảng'),
-- ('Giáo viên hợp đồng'),
-- ('Giáo viên bộ môn'),
-- ('Giảng viên chính thức'),
-- ('Giáo sư thỉnh giảng'),
-- ('Phó giáo sư'),
-- ('Tiến sĩ'),
-- ('Thạc sĩ');

-- -- Insert into can_bo (Staff)
-- INSERT INTO can_bo (ma_can_bo, cccd_id, loai_giao_vien_id, mail) VALUES 
-- ('CB001', 'CCCD001', 1, 'nguyen.van.a@school.edu.vn'),
-- ('CB002', 'CCCD002', 2, 'tran.thi.b@school.edu.vn'),
-- ('CB003', 'CCCD003', 3, 'le.van.c@school.edu.vn'),
-- ('CB004', 'CCCD004', 4, 'pham.thi.d@school.edu.vn'),
-- ('CB005', 'CCCD005', 5, 'nguyen.huu.e@school.edu.vn'),
-- ('CB006', 'CCCD006', 6, 'vu.thi.f@school.edu.vn'),
-- ('CB007', 'CCCD007', 7, 'truong.van.g@school.edu.vn'),
-- ('CB008', 'CCCD008', 8, 'hoang.thi.h@school.edu.vn'),
-- ('CB009', 'CCCD009', 9, 'pham.van.i@school.edu.vn'),
-- ('CB010', 'CCCD010', 10, 'le.thi.j@school.edu.vn');

-- -- Insert into hoc_phan (Courses)
-- INSERT INTO hoc_phan (ma_hoc_phan, ten_hoc_phan, so_tin_chi) VALUES 
-- ('HP001', 'Toán cao cấp', 3),
-- ('HP002', 'Vật lý đại cương', 4),
-- ('HP003', 'Hóa học cơ bản', 3),
-- ('HP004', 'Sinh học đại cương', 2),
-- ('HP005', 'Kỹ thuật lập trình', 3),
-- ('HP006', 'Phương pháp nghiên cứu', 3),
-- ('HP007', 'Giải tích 1', 4),
-- ('HP008', 'Giải tích 2', 4),
-- ('HP009', 'Xác suất thống kê', 3),
-- ('HP010', 'Kỹ năng giao tiếp', 2);

-- -- Insert into nhom_tin_chi (Credit groups)
-- INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, ten_nhom_tin_chi) VALUES 
-- ('NTC001', 'Nhóm Toán'),
-- ('NTC002', 'Nhóm Lý'),
-- ('NTC003', 'Nhóm Hóa'),
-- ('NTC004', 'Nhóm Sinh'),
-- ('NTC005', 'Nhóm Kỹ thuật'),
-- ('NTC006', 'Nhóm Khoa học xã hội'),
-- ('NTC007', 'Nhóm Khoa học tự nhiên'),
-- ('NTC008', 'Nhóm Tin học'),
-- ('NTC009', 'Nhóm Ngoại ngữ'),
-- ('NTC010', 'Nhóm Kỹ năng mềm');

-- -- Insert into lop_tin_chi (Credit classes)
-- INSERT INTO lop_tin_chi (ma_lop_tin_chi, ma_hoc_phan, hoc_ky, ma_nhom_tin_chi) VALUES 
-- ('LTC001', 'HP001', 'Kỳ 1', 'NTC001'),
-- ('LTC002', 'HP002', 'Kỳ 2', 'NTC002'),
-- ('LTC003', 'HP003', 'Kỳ 1', 'NTC003'),
-- ('LTC004', 'HP004', 'Kỳ 2', 'NTC004'),
-- ('LTC005', 'HP005', 'Kỳ 1', 'NTC005'),
-- ('LTC006', 'HP006', 'Kỳ 2', 'NTC006'),
-- ('LTC007', 'HP007', 'Kỳ 1', 'NTC007'),
-- ('LTC008', 'HP008', 'Kỳ 2', 'NTC008'),
-- ('LTC009', 'HP009', 'Kỳ 1', 'NTC009'),
-- ('LTC010', 'HP010', 'Kỳ 2', 'NTC010');

-- -- Insert into can_bo_lop_tin_chi (Staff teaching credit classes)
-- INSERT INTO can_bo_lop_tin_chi (ma_can_bo, ma_lop_tin_chi) VALUES 
-- ('CB001', 'LTC001'),
-- ('CB002', 'LTC002'),
-- ('CB003', 'LTC003'),
-- ('CB004', 'LTC004'),
-- ('CB005', 'LTC005'),
-- ('CB006', 'LTC006'),
-- ('CB007', 'LTC007'),
-- ('CB008', 'LTC008'),
-- ('CB009', 'LTC009'),
-- ('CB010', 'LTC010');

-- -- Insert into sinh_vien (Students)
-- INSERT INTO sinh_vien (ma_sinh_vien, cccd_id, mail) VALUES 
-- ('SV001', 'CCCD101', 'nguyen.van.d@student.edu.vn'),
-- ('SV002', 'CCCD102', 'pham.thi.e@student.edu.vn'),
-- ('SV003', 'CCCD103', 'hoang.van.f@student.edu.vn'),
-- ('SV004', 'CCCD104', 'le.thi.g@student.edu.vn'),
-- ('SV005', 'CCCD105', 'vu.van.h@student.edu.vn'),
-- ('SV006', 'CCCD106', 'truong.thi.i@student.edu.vn'),
-- ('SV007', 'CCCD107', 'do.thanh.j@student.edu.vn'),
-- ('SV008', 'CCCD108', 'nguyen.thi.k@student.edu.vn'),
-- ('SV009', 'CCCD109', 'pham.hong.l@student.edu.vn'),
-- ('SV010', 'CCCD110', 'le.van.m@student.edu.vn');

-- -- Insert into lich_hoc (Class schedule)
-- INSERT INTO lich_hoc (ma_lop_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES 
-- ('LTC001', 'Thứ Hai', '08:00', '09:30', 1, 2, 'Phòng 101', 'Nhà A'),
-- ('LTC002', 'Thứ Ba', '10:00', '11:30', 3, 2, 'Phòng 102', 'Nhà B'),
-- ('LTC003', 'Thứ Tư', '13:30', '15:00', 5, 2, 'Phòng 103', 'Nhà C'),
-- ('LTC004', 'Thứ Năm', '14:00', '15:30', 6, 2, 'Phòng 104', 'Nhà D'),
-- ('LTC005', 'Thứ Sáu', '09:00', '10:30', 2, 2, 'Phòng 105', 'Nhà E'),
-- ('LTC006', 'Thứ Bảy', '08:30', '10:00', 1, 2, 'Phòng 106', 'Nhà F'),
-- ('LTC007', 'Thứ Hai', '14:30', '16:00', 6, 2, 'Phòng 107', 'Nhà G'),
-- ('LTC008', 'Thứ Ba', '08:00', '09:30', 1, 2, 'Phòng 108', 'Nhà H'),
-- ('LTC009', 'Thứ Tư', '10:00', '11:30', 3, 2, 'Phòng 109', 'Nhà I'),
-- ('LTC010', 'Thứ Sáu', '13:30', '15:00', 5, 2, 'Phòng 110', 'Nhà J');

-- -- Insert into su_kien (Events)
-- INSERT INTO su_kien (ten_su_kien, gio_bat_dau, gio_ket_thuc, ngay, dia_diem) VALUES 
-- ('Hội thảo khoa học', '09:00', '11:00', '2024-11-01', 'Hội trường lớn'),
-- ('Lễ kỷ niệm ngày nhà giáo Việt Nam', '08:00', '12:00', '2024-11-20', 'Sân trường'),
-- ('Hội nghị phụ huynh', '14:00', '16:00', '2024-12-05', 'Phòng họp 2'),
-- ('Ngày hội tuyển sinh', '09:00', '17:00', '2024-11-10', 'Khu B'),
-- ('Hội chợ sách', '08:30', '16:30', '2024-12-15', 'Thư viện'),
-- ('Giải bóng đá', '15:00', '17:00', '2024-11-30', 'Sân vận động'),
-- ('Hội diễn văn nghệ', '18:00', '21:00', '2024-12-22', 'Hội trường lớn'),
-- ('Lễ trao học bổng', '09:00', '11:30', '2024-12-25', 'Phòng hội nghị'),
-- ('Giao lưu văn hóa', '10:00', '12:00', '2024-11-27', 'Nhà văn hóa'),
-- ('Hội thảo phát triển kỹ năng', '13:00', '15:00', '2024-12-01', 'Phòng hội thảo');

-- -- Insert into khach (Guests)
-- INSERT INTO khach (cccd_id, ten, ngay_tao) VALUES 
-- ('CCCD201', 'Trần Văn H', '2024-10-20'),
-- ('CCCD202', 'Lê Thị I', '2024-10-21'),
-- ('CCCD203', 'Phạm Văn J', '2024-10-22'),
-- ('CCCD204', 'Nguyễn Thị K', '2024-10-23'),
-- ('CCCD205', 'Lê Hồng L', '2024-10-24'),
-- ('CCCD206', 'Vũ Anh M', '2024-10-25'),
-- ('CCCD207', 'Trần Quốc N', '2024-10-26'),
-- ('CCCD208', 'Lý Minh O', '2024-10-27'),
-- ('CCCD209', 'Đỗ Văn P', '2024-10-28'),
-- ('CCCD210', 'Phạm Ngọc Q', '2024-10-29');

-- -- Insert into lich_hen (Appointments)
-- INSERT INTO lich_hen (khach_id, ma_can_bo, gio_bat_dau, ngay_hen, dia_diem, qr_path, trang_thai) VALUES 
-- (1, 'CB001', '10:00', '2024-11-01', 'Phòng làm việc 1', 'path/to/qr1.png', 'PENDING'),
-- (2, 'CB002', '14:00', '2024-11-02', 'Phòng làm việc 2', 'path/to/qr2.png', 'FINISHED'),
-- (3, 'CB003', '09:00', '2024-11-03', 'Phòng làm việc 3', 'path/to/qr3.png', 'CANCELED'),
-- (4, 'CB004', '15:30', '2024-11-04', 'Phòng làm việc 4', 'path/to/qr4.png', 'PENDING'),
-- (5, 'CB005', '08:30', '2024-11-05', 'Phòng làm việc 5', 'path/to/qr5.png', 'FINISHED'),
-- (6, 'CB006', '13:00', '2024-11-06', 'Phòng làm việc 6', 'path/to/qr6.png', 'PENDING'),
-- (7, 'CB007', '11:00', '2024-11-07', 'Phòng làm việc 7', 'path/to/qr7.png', 'CANCELED'),
-- (8, 'CB008', '16:00', '2024-11-08', 'Phòng làm việc 8', 'path/to/qr8.png', 'PENDING'),
-- (9, 'CB009', '10:30', '2024-11-09', 'Phòng làm việc 9', 'path/to/qr9.png', 'FINISHED'),
-- (10, 'CB010', '14:30', '2024-11-10', 'Phòng làm việc 10', 'path/to/qr10.png', 'CANCELED');
