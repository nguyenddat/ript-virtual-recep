
WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '13/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '20/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '27/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '03/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '10/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '17/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '24/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '01/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '08/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '15/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '13/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '20/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '27/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '03/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '10/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '17/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '24/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '01/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '08/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '15/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '13/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '20/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '27/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '03/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '10/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '17/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '24/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '01/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '08/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '15/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '14/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '21/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '28/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '04/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '11/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '18/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '25/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '02/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '09/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '16/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '15/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '22/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '29/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '05/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '12/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '19/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '26/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '03/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '10/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-01-00', '00', 'BAS1150-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-01-00', '17/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '13/08/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '20/08/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '27/08/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '03/09/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '10/09/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '17/09/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '24/09/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '01/10/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '08/10/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '15/10/2024', '10:00', '11.50', '4', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '13/08/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '20/08/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '27/08/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '03/09/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '10/09/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '17/09/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '24/09/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '01/10/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '08/10/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '15/10/2024', '9:00', '9.50', '3', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '13/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '20/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '27/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '03/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '10/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '17/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '24/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '01/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '08/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '15/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '14/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '21/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '28/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '04/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '11/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '18/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '25/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '02/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '09/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '16/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '15/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '22/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '29/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '05/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '12/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '19/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '26/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '03/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '10/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-02-00', '00', 'BAS1150-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-02-00', '17/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '13/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '20/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '27/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '03/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '10/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '17/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '24/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '01/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '08/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '15/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '13/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '20/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '27/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '03/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '10/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '17/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '24/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '01/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '08/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '15/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '13/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '20/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '27/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '03/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '10/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '17/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '24/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '01/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '08/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '15/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '14/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '21/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '28/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '04/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '11/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '18/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '25/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '02/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '09/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '16/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '15/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '22/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '29/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '05/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '12/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '19/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '26/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '03/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '10/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-03-00', '00', 'BAS1150-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-03-00', '17/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '13/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '20/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '27/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '03/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '10/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '17/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '24/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '01/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '08/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '15/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '13/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '20/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '27/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '03/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '10/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '17/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '24/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '01/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '08/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '15/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '13/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '20/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '27/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '03/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '10/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '17/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '24/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '01/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '08/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '15/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '14/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '21/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '28/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '04/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '11/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '18/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '25/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '02/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '09/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '16/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '15/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '22/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '29/08/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '05/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '12/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '19/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '26/09/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '03/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '10/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1150-04-00', '00', 'BAS1150-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1150-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1150-04-00', '17/10/2024', '21:00', '21.50', '15', '1', 'LMS', NULL)
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '17/08/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '24/08/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '31/08/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '07/09/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '14/09/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '21/09/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '28/09/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '05/10/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '12/10/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '19/10/2024', '7:00', '8.50', '1', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '17/08/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '24/08/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '31/08/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '07/09/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '14/09/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '21/09/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '28/09/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '05/10/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '12/10/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '19/10/2024', '8:00', '9.50', '2', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '17/08/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '24/08/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '31/08/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '07/09/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '14/09/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '21/09/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '28/09/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '05/10/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '12/10/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '19/10/2024', '9:00', '10.50', '3', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '17/08/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '24/08/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '31/08/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '07/09/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '14/09/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '21/09/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '28/09/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '05/10/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '12/10/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-69-00', '00', 'BAS1158-69'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-69-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-69-00', '19/10/2024', '10:00', '11.50', '4', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '17/08/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '24/08/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '31/08/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '07/09/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '14/09/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '21/09/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '28/09/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '05/10/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '12/10/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '19/10/2024', '13:00', '14.50', '7', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '17/08/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '24/08/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '31/08/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '07/09/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '14/09/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '21/09/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '28/09/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '05/10/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '12/10/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '19/10/2024', '14:00', '15.50', '8', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '17/08/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '24/08/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '31/08/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '07/09/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '14/09/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '21/09/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '28/09/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '05/10/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '12/10/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '19/10/2024', '15:00', '16.50', '9', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '17/08/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '24/08/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '31/08/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '07/09/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '14/09/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '21/09/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '28/09/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '05/10/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '12/10/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-70-00', '00', 'BAS1158-70'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-70-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-70-00', '19/10/2024', '16:00', '17.50', '10', '2', '404', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '17/08/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '24/08/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '31/08/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '07/09/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '14/09/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '21/09/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '28/09/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '05/10/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '12/10/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '19/10/2024', '7:00', '8.50', '1', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '17/08/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '24/08/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '31/08/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '07/09/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '14/09/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '21/09/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '28/09/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '05/10/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '12/10/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '19/10/2024', '8:00', '9.50', '2', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '17/08/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '24/08/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '31/08/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '07/09/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '14/09/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '21/09/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '28/09/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '05/10/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '12/10/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '19/10/2024', '9:00', '10.50', '3', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '17/08/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '24/08/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '31/08/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '07/09/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '14/09/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '21/09/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '28/09/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '05/10/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '12/10/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-71-00', '00', 'BAS1158-71'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-71-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-71-00', '19/10/2024', '10:00', '11.50', '4', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '17/08/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '24/08/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '31/08/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '07/09/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '14/09/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '21/09/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '28/09/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '05/10/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '12/10/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '19/10/2024', '13:00', '14.50', '7', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '17/08/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '24/08/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '31/08/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '07/09/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '14/09/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '21/09/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '28/09/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '05/10/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '12/10/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '19/10/2024', '14:00', '15.50', '8', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '17/08/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '24/08/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '31/08/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '07/09/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '14/09/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '21/09/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '28/09/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '05/10/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '12/10/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '19/10/2024', '15:00', '16.50', '9', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '17/08/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '24/08/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '31/08/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '07/09/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '14/09/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '21/09/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '28/09/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '05/10/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '12/10/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-72-00', '00', 'BAS1158-72'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-72-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-72-00', '19/10/2024', '16:00', '17.50', '10', '2', '504', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '17/08/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '24/08/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '31/08/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '07/09/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '14/09/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '21/09/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '28/09/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '05/10/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '12/10/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '19/10/2024', '7:00', '8.50', '1', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '17/08/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '24/08/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '31/08/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '07/09/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '14/09/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '21/09/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '28/09/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '05/10/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '12/10/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '19/10/2024', '8:00', '9.50', '2', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '17/08/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '24/08/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '31/08/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '07/09/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '14/09/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '21/09/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '28/09/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '05/10/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '12/10/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '19/10/2024', '9:00', '10.50', '3', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '17/08/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '24/08/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '31/08/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '07/09/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '14/09/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '21/09/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '28/09/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '05/10/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '12/10/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'BAS1158-73-00', '00', 'BAS1158-73'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'BAS1158-73-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('BAS1158-73-00', '19/10/2024', '10:00', '11.50', '4', '2', '604', 'A2')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '12/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '19/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '26/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '02/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '09/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '16/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '23/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '30/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '07/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '14/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '12/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '19/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '26/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '02/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '09/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '16/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '23/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '30/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '07/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '14/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '12/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '19/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '26/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '02/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '09/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '16/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '23/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '30/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '07/10/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-17-00', '00', 'INT1358-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-17-00', '14/10/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '12/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '19/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '26/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '02/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '09/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '16/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '23/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '30/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '07/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '14/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '12/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '19/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '26/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '02/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '09/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '16/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '23/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '30/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '07/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '14/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '12/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '19/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '26/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '02/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '09/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '16/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '23/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '30/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '07/10/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-18-00', '00', 'INT1358-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-18-00', '14/10/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '16/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '23/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '30/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '06/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '13/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '20/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '27/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '04/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '11/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '18/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '16/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '23/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '30/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '06/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '13/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '20/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '27/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '04/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '11/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '18/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '16/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '23/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '30/08/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '06/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '13/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '20/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '27/09/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '04/10/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '11/10/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-19-00', '00', 'INT1358-19'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-19-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-19-00', '18/10/2024', '18:00', '19.50', '12', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '16/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '23/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '30/08/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '06/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '13/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '20/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '27/09/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '04/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '11/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '18/10/2024', '16:00', '17.50', '10', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '16/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '23/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '30/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '06/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '13/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '20/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '27/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '04/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '11/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '18/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '16/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '23/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '30/08/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '06/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '13/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '20/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '27/09/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '04/10/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '11/10/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1358-20-00', '00', 'INT1358-20'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1358-20-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1358-20-00', '18/10/2024', '18:00', '19.50', '12', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '12/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '19/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '26/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '02/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '09/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '16/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '23/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '30/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '07/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '14/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '12/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '19/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '26/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '02/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '09/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '16/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '23/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '30/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '07/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-00', '00', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-00', '14/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '12/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '19/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '26/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '02/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '09/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '16/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '23/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '30/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '07/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-01', '01', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-01', '14/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '12/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '19/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '26/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '02/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '09/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '16/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '23/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '30/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '07/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-15-02', '02', 'INT1332-15'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-15-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-15-02', '14/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '12/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '19/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '26/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '02/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '09/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '16/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '23/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '30/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '07/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '14/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '12/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '19/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '26/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '02/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '09/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '16/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '23/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '30/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '07/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-00', '00', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-00', '14/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '12/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '19/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '26/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '02/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '09/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '16/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '23/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '30/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '07/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-01', '01', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-01', '14/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '12/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '19/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '26/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '02/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '09/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '16/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '23/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '30/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '07/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-16-02', '02', 'INT1332-16'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-16-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-16-02', '14/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '16/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '23/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '30/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '06/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '13/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '20/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '27/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '04/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '11/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '18/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '16/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '23/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '30/08/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '06/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '13/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '20/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '27/09/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '04/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '11/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-00', '00', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-00', '18/10/2024', '15:00', '15.50', '9', '1', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '16/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '23/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '30/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '06/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '13/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '20/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '27/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '04/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '11/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-01', '01', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-01', '18/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '16/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '23/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '30/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '06/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '13/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '20/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '27/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '04/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '11/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-17-02', '02', 'INT1332-17'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-17-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-17-02', '18/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '16/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '23/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '30/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '06/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '13/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '20/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '27/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '04/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '11/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '18/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '16/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '23/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '30/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '06/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '13/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '20/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '27/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '04/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '11/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-00', '00', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-00', '18/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '16/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '23/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '30/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '06/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '13/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '20/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '27/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '04/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '11/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-01', '01', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-01', '18/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '16/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '23/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '30/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '06/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '13/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '20/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '27/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '04/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '11/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'INT1332-18-02', '02', 'INT1332-18'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'INT1332-18-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('INT1332-18-02', '18/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '13/08/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '20/08/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '27/08/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '03/09/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '10/09/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '17/09/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '24/09/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '01/10/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '08/10/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-03-00', '00', 'SKD1103-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-03-00', '15/10/2024', '7:00', '8.50', '1', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '13/08/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '20/08/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '27/08/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '03/09/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '10/09/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '17/09/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '24/09/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '01/10/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '08/10/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-04-00', '00', 'SKD1103-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-04-00', '15/10/2024', '9:00', '10.50', '3', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '13/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '20/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '27/08/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '03/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '10/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '17/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '24/09/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '01/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '08/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-05-00', '00', 'SKD1103-05'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-05-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-05-00', '15/10/2024', '13:00', '14.50', '7', '2', '503', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '13/08/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '20/08/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '27/08/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '03/09/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '10/09/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '17/09/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '24/09/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '01/10/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '08/10/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'SKD1103-06-00', '00', 'SKD1103-06'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'SKD1103-06-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('SKD1103-06-00', '15/10/2024', '15:00', '16.50', '9', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '14/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '21/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '28/08/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '04/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '11/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '18/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '25/09/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '02/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '09/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '16/10/2024', '7:00', '8.50', '1', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '14/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '21/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '28/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '04/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '11/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '18/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '25/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '02/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '09/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-00', '00', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-00', '16/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '15/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '22/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '29/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '05/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '12/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '19/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '26/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '03/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '10/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-01', '01', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-01', '17/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '15/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '22/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '29/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '05/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '12/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '19/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '26/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '03/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '10/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-01-02', '02', 'RIPT1306-01'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-01-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-01-02', '17/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '14/08/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '21/08/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '28/08/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '04/09/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '11/09/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '18/09/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '25/09/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '02/10/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '09/10/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '16/10/2024', '10:00', '11.50', '4', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '14/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '21/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '28/08/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '04/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '11/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '18/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '25/09/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '02/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '09/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-00', '00', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-00', '16/10/2024', '9:00', '9.50', '3', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '15/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '22/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '29/08/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '05/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '12/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '19/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '26/09/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '03/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '10/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-01', '01', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-01', '17/10/2024', '8:00', '11.50', '2', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '15/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '22/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '29/08/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '05/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '12/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '19/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '26/09/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '03/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '10/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-02-02', '02', 'RIPT1306-02'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-02-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-02-02', '17/10/2024', '13:00', '16.50', '7', '4', '402', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '14/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '21/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '28/08/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '04/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '11/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '18/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '25/09/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '02/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '09/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '16/10/2024', '13:00', '14.50', '7', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '14/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '21/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '28/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '04/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '11/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '18/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '25/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '02/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '09/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-00', '00', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-00', '16/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '15/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '22/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '29/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '05/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '12/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '19/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '26/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '03/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '10/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-01', '01', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-01', '17/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '15/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '22/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '29/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '05/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '12/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '19/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '26/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '03/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '10/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-03-02', '02', 'RIPT1306-03'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-03-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-03-02', '17/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '14/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '21/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '28/08/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '04/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '11/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '18/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '25/09/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '02/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '09/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '16/10/2024', '16:00', '17.50', '10', '2', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '14/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '21/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '28/08/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '04/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '11/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '18/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '25/09/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '02/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '09/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-00', '00', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-00'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-00', '16/10/2024', '15:00', '15.50', '9', '1', '501', 'HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '15/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '22/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '29/08/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '05/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '12/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '19/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '26/09/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '03/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '10/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-01', '01', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-01'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-01', '17/10/2024', '8:00', '11.50', '2', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '15/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '22/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '29/08/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '05/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '12/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '19/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '26/09/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '03/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '10/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;

WITH upsert_nhom_tin_chi AS (
	INSERT INTO nhom_tin_chi (ma_nhom_tin_chi, thu_tu_nhom, ma_lop_tin_chi)
	SELECT 'RIPT1306-04-02', '02', 'RIPT1306-04'
	WHERE NOT EXISTS (
		SELECT 1 FROM nhom_tin_chi WHERE ma_nhom_tin_chi = 'RIPT1306-04-02'
	)
	RETURNING ma_nhom_tin_chi
)
INSERT INTO lich_hoc 
(ma_nhom_tin_chi, ngay_hoc, gio_bat_dau, gio_ket_thuc, tiet_bat_dau, so_tiet, phong, nha) VALUES
('RIPT1306-04-02', '17/10/2024', '13:00', '16.50', '7', '4', '502', 'Học HQV')
;
