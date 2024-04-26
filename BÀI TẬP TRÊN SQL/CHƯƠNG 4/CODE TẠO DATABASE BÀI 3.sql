CREATE DATABASE Bai3
GO

USE Bai3
GO

CREATE TABLE dbo.COQUAN(
	  MSCOQUAN nchar(10) primary key,
	  TENCOQUAN nvarchar(50) null,
	  DIACHI nvarchar(50) null
)
GO

CREATE TABLE dbo.NV(
	 MSNV Nchar(10) primary key,
	 TEN nvarchar(50) null,
	 MSCOQUAN nchar(10) null,
	 CONGVIEC nvarchar(50) null,
	 LUONG int null,
)
GO

ALTER TABLE NV  WITH CHECK ADD FOREIGN KEY(MSCOQUAN) REFERENCES COQUAN(MSCOQUAN)
GO

INSERT INTO dbo.COQUAN(MSCOQUAN, TENCOQUAN, DIACHI)
VALUES	
	('10', 'KIDO', 'Hà Nội'),
	('15', 'COCACOLA', 'TP.HCM'),
	('20', 'VINAMILK', 'BÌNH DƯƠNG'),
	('25', '7UP', 'ĐỒ SƠN'),
	('50', 'THIÊN LONG', 'BÌNH DƯƠNG');
	

INSERT INTO dbo.NV(MSNV, Ten, MSCOQUAN, CONGVIEC, Luong)
VALUES
	('NV0001', 'TRẦN QUỐC ANH', '10', 'NHÂN VIÊN KỸ THUẬT', 5000),
	('NV0002', 'LÊ THANH BÌNH', '50', 'CHĂM SÓC KHÁCH HÀNG', 3500),
	('NV0003', 'NGUYỄN THANH DUY', '15', 'KẾ TOÁN', 4000),
	('NV0004', 'BÙI DIỄM QUYÊN', '20', 'CHUYÊN VIÊN BẢO MẬT', 7000),
	('NV0005', 'NGUYỄN HOÀNG VŨ', '20', 'QUẢN LÝ VẬN CHUYỂN', 6500),
	('NV0006', 'NGUYỄN ANH TÚ', '25', 'NHÂN VIÊN BÁN HÀNG', 4000),
	('NV0007', 'NGUYỄN HOÀNG VŨ', '20', 'QUẢN LÝ VẬN CHUYỂN', 6500),
	('NV0008', 'HỒ MỸ LỆ', '15', 'TRƯỞNG KHO', 5000),
	('NV0009', 'NGUYỄN HOÀNG YẾN', '10', 'NHÂN VIÊN BÁN HÀNG', 5000),
	('NV0010', 'HOÀNG THẢO VY', '25', 'KẾ TOÁN TRƯỞNG', 6000);
	
