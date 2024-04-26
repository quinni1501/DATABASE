﻿
CREATE DATABASE QLNV1
GO

USE QLNV1
GO
CREATE TABLE dbo.PhongBan(
	MaPB int PRIMARY KEY,
	TenPB char(10) NULL,
	TrPhong char(4) NULL,
	NgNhanChuc date Null
)
GO
CREATE TABLE dbo.NhanVien(
	Manv char(4) PRIMARY KEY,
	HoNV char(10) NULL,
	Tenlot char(20) NULL,
	tenNV char(10) NULL,
	NgSinh date NULL,
	Dchi char(50) NULL,
	Phai char(3) NULL,
	Luong int NULL,
	MaNQL char(4) NULL,
	Phong int 
)
Go

Insert into Nhanvien Values ('nv01', 'Nguyen', 'Ngọc', 'Hoang', '1972-08-13', '111 Vo Van Ngan', 'Nam', 30000, 'NV02', 1)
Insert into Nhanvien Values ('nv02', 'Nguyen', 'Quang', 'Ngoc', '1975-08-23', '111 Nguyen Van Troi', 'Nam', 25000, 'NV15', 1)
Insert into Nhanvien Values ('nv03', 'Le', 'Thi', 'Ngọc', '1980-08-13', '111 Duong 3/2', 'Nu', 28000, 'NV15', 2)
Insert into Nhanvien Values ('nv04', 'Le', 'Ngọc', 'Hoang', '1982-08-18', '111 Le Van Duyet', 'Nam', 15000, 'NV03', 2)
Insert into Nhanvien Values ('nv05', 'Nguyen', 'Thi', 'Ngọc', '1992-08-13', '108 Vo Van Ngan', 'Nu', 28000, 'NV06', 3)
Insert into Nhanvien Values ('nv06', 'Truong', 'Anh', 'Kiet', '1960-12-13', '11 Hai Ba Trung', 'Nam', 30000, 'NV15', 3)
Insert into Nhanvien Values ('nv07', 'Le', 'Phung', 'Hieu', '1972-08-13', '11 Hau Giang', 'Nam', 10000, 'NV15', 4)
Insert into Nhanvien Values ('nv08', 'Nguyen', 'Bao', 'Hung', '1978-08-23', '10 Tran Hung Dao', 'Nam', 20000, 'NV15', 5)
Insert into Nhanvien Values ('nv09', 'Nguyen', 'Bao', 'Hoang', '1972-08-13', '111 Tran Hung Dao', 'Nam', 10000, 'NV15', 6)
Insert into Nhanvien Values ('nv10', 'Le', 'Hoang', 'Ngọc', '1972-08-13', '11 Lac Long Quan', 'Nam', 10000, 'NV15', 7)
Insert into Nhanvien Values ('nv11', 'Nguyen', 'Bao','Ngọc', '1972-08-13', '111 Minh Phung', 'Nu', 15000, 'NV15', 8)
Insert into Nhanvien Values ('nv12', 'Nguyen', 'Ngọc', 'A', '1982-08-13', '11 Nguyen Duy Trinh', 'Nam', 10000, 'NV11', 8)
Insert into Nhanvien Values ('nv13', 'Le', 'Quang', 'Hoang', '1979-08-23', '10 Ly Chinh Thang', 'Nam', 15000, 'NV15', 9)
Insert into Nhanvien Values ('nv14', 'Nguyen', 'Quang', 'Hoang', '1972-08-13', '11 Le Van Thinh', 'Nam', 10000, 'NV13', 9)
Insert into Nhanvien Values ('nv15', 'Dang', 'Tan', 'Dung', '1960-08-13', '23 Vo Van Ngan', 'Nam', 50000, NULL, 10)
Go

Insert into PhongBan Values (1, 'Nghien cuu', 'nv02', '2013-12-12');
Insert into PhongBan Values (2, 'To chuc', 'nv03', '2013-11-21');
Insert into PhongBan Values (3, 'Vat tu', 'nv06', '2013-1-25');
Insert into PhongBan Values (4, 'Dao tao', 'nv15', '2013-2-19');
Insert into PhongBan Values (5, 'Kinh doanh', 'nv15', '2013-08-18');
Insert into PhongBan Values (6, 'Doi ngoai', 'nv15', '2013-10-17');
Insert into PhongBan Values (7, 'Xay dung', 'nv15', '2013-02-20');
Insert into PhongBan Values (8, 'QL Du an', 'nv11', '2013-12-12');
Insert into PhongBan Values (9, 'Ke toan', 'nv13', '2013-12-12');
Insert into PhongBan Values (10, 'BGD', 'nv15', '2010-11-29');
Go
Alter table NHANVIEN WITH CHECK ADD FOREIGN KEY(MaNQL) REFERENCES NhanVien(Manv)
Go
ALTER TABLE NHANVIEN  WITH CHECK ADD FOREIGN KEY(Phong) REFERENCES PhongBan(MaPB)
GO

Create table DIADIEM_PHONG(
		MaPB int references PhongBan(MaPB),
		DiaDiem char(30),
		Primary key (MaPB, DiaDiem) -- khai báo khóa chính gồm 2 cột
		)
Go
Insert into DIADIEM_PHONG Values(1, 'Tang tret - Khu A')
Insert into DIADIEM_PHONG Values(2, 'Tang 1 - Khu A')
Insert into DIADIEM_PHONG Values(3, 'Tang tret - Khu B')
Insert into DIADIEM_PHONG Values(4, 'Tang tret - Khu C')
Insert into DIADIEM_PHONG Values(5, 'Tang tret - Khu E')
Insert into DIADIEM_PHONG Values(6, 'Tang tret - Khu Bát giác')
Insert into DIADIEM_PHONG Values(7, 'Tang tret - Khu Trung tâm')
Insert into DIADIEM_PHONG Values(8, 'Tang 1 - Khu Trung tâm')
Insert into DIADIEM_PHONG Values(9, 'Tang 2 - Khu Trung tâm')
Insert into DIADIEM_PHONG Values(10, 'Tang 3 - Khu Trung tâm')
Go

Create Table DUAN(
	MaDA char(4) primary key,
	TenDA Char(30),
	DiaDiem char(30),
	Phong int references PhongBan(MaPB)
	)
Go

Insert into DUAN Values ('DA01', 'Cap thoat nuoc', 'Go Vap', 9)
Insert into DUAN Values ('DA02', 'Ban chung cu', 'Thu Thiem', 5)
Insert into DUAN Values ('DA03', 'Xay biet thu', 'Thu Duc', 7)
Insert into DUAN Values ('DA04', 'Lien ket dao tao', 'Go Vap', 4)
Insert into DUAN Values ('DA05', 'Cung cap vat tu', 'Quan 2', 3)
Insert into DUAN Values ('DA06', 'Huan luyen', 'Go Vap', 4)
Go

Create table PhanCong(
	MaNV char(4) references NhanVien(maNV),
	MaDA char(4) references DuAn(MaDA),
	ThoiGian int,
	Primary key (MaNV, MaDA)
	)
Go

Insert into PhanCong Values ('nv01', 'DA01', 3)
Insert into PhanCong Values ('nv01', 'DA02', 3)
Insert into PhanCong Values ('nv02', 'DA01', 3)
Insert into PhanCong Values ('nv02', 'DA03', 3)
Insert into PhanCong Values ('nv03', 'DA04', 3)
Insert into PhanCong Values ('nv04', 'DA03', 3)
Insert into PhanCong Values ('nv09', 'DA04', 3)
Insert into PhanCong Values ('nv01', 'DA05', 3)
Insert into PhanCong Values ('nv05', 'DA05', 3)
Insert into PhanCong Values ('nv07', 'DA06', 3)
Insert into PhanCong Values ('nv08', 'DA06', 3)
Go

Create table ThanNhan(
		MaNV char(4) references NhanVien(maNV),
		TenTN char(20),
		Phai char(3),
		NgaySinh date,
		QuanHe char(10),
		Primary key (MaNV, TenTN)
		)
Go


Insert into ThanNhan Values ('nv01', 'Nguyen Ngoc Huy', 'Nam', '2018-3-26','con')
Insert into ThanNhan Values ('nv01', 'Nguyen Ngoc Hoa', 'Nu', '2020-3-26','con')
Insert into ThanNhan Values ('nv02', 'Nguyen Ngoc Huy', 'Nam', '2018-3-26','con')
Insert into ThanNhan Values ('nv02', 'Nguyen Ngoc Hoa', 'Nu', '2020-3-26','con')
Insert into ThanNhan Values ('nv15', 'Dang Ngoc Hoa', 'Nu', '2020-3-26','con')
Insert into ThanNhan Values ('nv01', 'Nguyen Nguyen Hung', 'Nam', '2020-3-26','con')






