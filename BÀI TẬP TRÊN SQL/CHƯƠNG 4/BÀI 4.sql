CREATE DATABASE Bai4;
GO

USE Bai4;
GO

CREATE TABLE dbo.THO (
	MaTho nchar(10) PRIMARY KEY,
	TenTho nvarchar(50) NULL,
	Nhom int NULL,
	NhomTruong nchar(10) NULL
);
GO

CREATE TABLE dbo.CONGVIEC (
	MaCV nchar(10) PRIMARY KEY,
	NoiDungCV nvarchar(MAX) NULL
);
GO

CREATE TABLE dbo.HOPDONG (
	SoHD nchar(10) PRIMARY KEY,
	NgayHD date NULL,
	MaKH nchar(10) NULL,
	SoXe nchar(10) NULL,
	TriGiaHD int NULL,
	NgayGiaoDK date NULL,
	NgayNgThu date NULL
);
GO

CREATE TABLE dbo.KHACHHANG (
	MaKH nchar(10) PRIMARY KEY,
	TenKH nvarchar(50) NULL,
	DiaChi nvarchar(MAX) NULL,
	DienThoai nchar(10) NULL
);
GO

CREATE TABLE dbo.CHITIET_HD (
	SoHD nchar(10),
	MaCV nchar(10),
	TriGiaCV int NULL,
	MaTho nchar(10) NULL,
	KhoanTho int NULL,
	PRIMARY KEY (SoHD, MaCV),
	FOREIGN KEY(SoHD) REFERENCES HOPDONG(SoHD),
	FOREIGN KEY(MaCV) REFERENCES CONGVIEC(MaCV),
	FOREIGN KEY(MaTho) REFERENCES THO(MaTho)
);
GO

CREATE TABLE dbo.PHIEUTHU (
	SoPT nchar(10) PRIMARY KEY,
	NgaylapPT date NULL,
	SoHD nchar(10) NULL,
	HoTen nvarchar(50) NULL,
	SoTienThu int NULL,
	FOREIGN KEY(SoHD) REFERENCES HOPDONG(SoHD),
	FOREIGN KEY(SoHD) REFERENCES HOPDONG(SoHD),
);
GO

INSERT INTO dbo.THO --(MaTho, TenTho, Nhom, NhomTruong)
VALUES
	('TH001', 'LÊ ĐỨC AN', 1, 'TH002'),
	('TH002', 'NGUYỄN VĂN CHÍ', 1, NULL),
	('TH003', 'BÙI NGỌC DUY', 1, 'TH002'),
	('TH004', 'LÊ MINH HOÀNG', 2, NULL),
	('TH005', 'TRẦN VĂN MINH', 2, 'TH004'),
	('TH006', 'NGUYỄN VĂN NHẬT', 2, 'TH004'),
	('TH007', 'TRẦN NGỌC PHÁT', 3, 'TH009'),
	('TH008', 'LÊ MINH QUANG', 3, 'TH009'),
	('TH009', 'NGUYỄN NGỌC SƠN', 3, NULL),
	('TH010', 'LÊ VĂN THÀNH', 4, NULL),
	('TH011', 'VƯƠNG NGỌC VINH', 4, 'TH010'),
	('TH012', 'HOÀNG VĂN VỸ', 4, 'TH010');

INSERT INTO dbo.CONGVIEC -- (MaCV, NoiDungCV)
VALUES
	('CV001', 'Thay dầu máy'),
	('CV002', 'Kiểm tra hệ thống phanh'),
	('CV003', 'Thay lọc gió'),
	('CV004', 'Kiểm tra và cân bằng lốp xe'),
	('CV005', 'Thay nước làm mát'),
	('CV006', 'Vệ sinh bộ làm mát'),
	('CV007', 'Kiểm tra hệ thống điện'),
	('CV008', 'Điều chỉnh hệ thống lái'),
	('CV009', 'Bơm gas lạnh'),
	('CV010', 'Kiểm tra hệ thống cảm biến'),
	('CV011', 'Điều chỉnh van xả'),
	('CV012', 'Vệ sinh bộ lọc khí'),
	('CV013', 'Kiểm tra hệ thống khí thải'),
	('CV014', 'Thay nước cấp đông'),
	('CV015', 'Kiểm tra và thay dây đai động cơ'),
	('CV016', 'Kiểm tra và thay dây curoa'),
	('CV017', 'Kiểm tra hệ thống làm mát hộp số'),
	('CV018', 'Kiểm tra và thay dây phanh'),
	('CV019', 'Kiểm tra và thay bộ lọc dầu'),
	('CV020', 'Thay nhớt');

INSERT INTO dbo.HOPDONG --(SoHD, NgayHD, MaKH, SoXe, TriGiaHD, NgayGiaoDK, NgayNgThu)
VALUES
	('HD001', '2002-01-05', 'KH014', 'ABC123', 1500000, '2002-01-07', '2002-01-08'),
	('HD002', '2002-02-10', 'KH001', 'XYZ789', 1500000, '2002-02-15', '2002-02-16'),
	('HD003', '2002-03-15', 'KH009', 'DEF456', 1000000, '2002-03-19', '2002-03-20'),
	('HD004', '2003-01-20', 'KH007', 'GHI789', 2500000, '2003-01-26', '2003-01-27'),
	('HD005', '2003-02-25', 'KH001', 'JKL123', 2200000, '2003-03-01', '2003-03-02'),
	('HD006', '2002-03-03', 'KH003', 'MNO456', 1300000, '2002-03-09', '2002-03-10'),
	('HD007', '2003-01-10', 'KH010', 'PQR789', 1900000, '2003-01-15', '2003-01-16'),
	('HD008', '2002-02-15', 'KH011', 'STU123', 1700000, '2002-02-20', '2002-02-21'),
	('HD009', '2002-03-20', 'KH003', 'VWX456', 2800000, '2002-03-28', '2002-03-29'),
	('HD010', '2003-01-28', 'KH006', 'YZA789', 2100000, '2003-02-05', '2003-02-06'),
	('HD011', '2002-02-05', 'KH001', 'ABC456', 1600000, '2002-02-09', '2002-02-10'),
	('HD012', '2002-08-10', 'KH013', 'DEF789', 2300000, '2002-08-17', '2002-08-18'),
	('HD014', '2002-11-03', 'KH002', 'JKL456', 2000000, '2002-11-15', '2002-11-16'),
	('HD015', '2003-01-07', 'KH002', 'XYZ123', 1900000, '2003-01-16', '2003-01-17');


INSERT INTO dbo.KHACHHANG --(MaKH, TenKH, DiaChi, DienThoai)
VALUES
	('KH001', 'Nguyễn Văn A', 'Số 10, Đường ABC, TP.HCM', '0901234567'),
	('KH002', 'Trần Thị B', 'Số 20, Đường XYZ, Hà Nội', '0987654321'),
	('KH003', 'Lê Văn C', 'Số 30, Đường DEF, Đà Nẵng', '0912345678'),
	('KH004', 'Phạm Thị D', 'Số 40, Đường GHI, Hải Phòng', '0976543210'),
	('KH005', 'Hoàng Văn E', 'Số 50, Đường JKL, Cần Thơ', '0923456789'),
	('KH006', 'Nguyễn Thị F', 'Số 60, Đường MNO, Hà Nội', '0912345678'),
	('KH007', 'Trần Văn G', 'Số 70, Đường PQR, TP.HCM', '0987654321'),
	('KH008', 'Lê Thị H', 'Số 80, Đường STU, Đà Nẵng', '0901234567'),
	('KH009', 'Phạm Văn I', 'Số 90, Đường VWX, Hải Phòng', '0976543210'),
	('KH010', 'Hoàng Thị K', 'Số 100, Đường YZA, Cần Thơ', '0923456789'),
	('KH011', 'Nguyễn Văn L', 'Số 110, Đường ABC, TP.HCM', '0912345678'),
	('KH012', 'Trần Thị M', 'Số 120, Đường XYZ, Hà Nội', '0987654321'),
	('KH013', 'Lê Văn N', 'Số 130, Đường DEF, Đà Nẵng', '0901234567'),
	('KH014', 'Phạm Thị O', 'Số 140, Đường GHI, Hải Phòng', '0976543210'),
	('KH015', 'Hoàng Văn P', 'Số 150, Đường JKL, Cần Thơ', '0923456789');


INSERT INTO dbo.CHITIET_HD --(SoHD, MaCV, TriGiaCV, MaTho, KhoanTho)
VALUES
	('HD001', 'CV001', 300000, 'TH001', 150000),
	('HD001', 'CV003', 500000, 'TH009', 250000),
	('HD001', 'CV004', 200000, 'TH012', 100000),
	('HD002', 'CV001', 400000, 'TH003', 200000),
	('HD002', 'CV010', 350000, 'TH003', 175000),
	('HD003', 'CV007', 450000, 'TH002', 225000),
	('HD005', 'CV002', 600000, 'TH003', 300000),
	('HD005', 'CV003', 550000, 'TH005', 275000),
	('HD006', 'CV005', 250000, 'TH007', 125000),
	('HD007', 'CV005', 350000, 'TH012', 175000),
	('HD007', 'CV014', 200000, 'TH004', 100000),
	('HD008', 'CV020', 400000, 'TH006', 200000),
	('HD009', 'CV010', 300000, 'TH007', 150000),
	('HD010', 'CV007', 600000, 'TH001', 300000),
	('HD012', 'CV009', 450000, 'TH011', 225000);


INSERT INTO dbo.PHIEUTHU -- (SoPT, NgaylapPT, SoHD, HoTen, SoTienThu)
VALUES
	('PT001', '2002-01-06', 'HD001', 'Nguyễn Văn A', 1500000),
	('PT002', '2002-02-11', 'HD002', 'Trần Thị B', 700000),
	('PT003', '2002-03-16', 'HD003', 'Lê Văn C', 400000),
	('PT004', '2003-01-21', 'HD004', 'Phạm Thị D', 2500000),
	('PT005', '2003-02-26', 'HD005', 'Hoàng Văn E', 600000),
	('PT006', '2002-03-04', 'HD006', 'Nguyễn Thị F', 800000),
	('PT007', '2003-01-11', 'HD007', 'Trần Văn G', 1900000),
	('PT008', '2002-02-16', 'HD008', 'Lê Thị H', 550000),
	('PT009', '2002-03-21', 'HD009', 'Phạm Văn I', 100000),
	('PT010', '2003-01-29', 'HD010', 'Hoàng Thị K', 2100000);

SELECT THO.MaTho, TenTho
FROM THO
WHERE MaTho NOT IN (SELECT DISTINCT MaTho FROM ChiTiet_HD)

SELECT HD.SoHD, HD.NgayHD, HD.MaKH, HD.SoXe
FROM HopDong HD
WHERE HD.NgayNgThu IS NOT NULL
AND HD.SoHD NOT IN (
    SELECT PT.SoHD
    FROM PhieuThu PT
    GROUP BY PT.SoHD
    HAVING SUM(PT.SoTienThu) >= HD.TriGiaHD
);

SELECT *
FROM HOPDONG
WHERE NgayGiaoDK <= '2002-12-31';

SELECT TH.MaTho, TH.TenTho, TH.Nhom, TH.NhomTruong
FROM Tho TH
JOIN (
    SELECT CH.MaTho
    FROM CHITIET_HD CH
    GROUP BY CH.MaTho
    HAVING COUNT(CH.MaCV) >= ALL (
        SELECT COUNT(MaCV) AS Slcv
        FROM CHITIET_HD
        GROUP BY MaTho
    )
) AS Q ON TH.MaTho = Q.MaTho;

SELECT MaTho, SUM(TriGiaCV) AS Tong
FROM CHITIET_HD
GROUP BY MaTho
HAVING SUM(TriGiaCV) = (
    SELECT MAX(Tong)
    FROM (
        SELECT SUM(TriGiaCV) AS Tong
        FROM CHITIET_HD
        GROUP BY MaTho
    ) AS Q
);





