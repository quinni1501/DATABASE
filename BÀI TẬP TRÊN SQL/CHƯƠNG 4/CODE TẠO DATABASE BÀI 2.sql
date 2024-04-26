CREATE DATABASE Bai2
GO
USE Bai2
GO

CREATE TABLE dbo.ĐầuSách(
	MãSách nchar(10) PRIMARY KEY,
	Tựa nvarchar(50) NULL,
	MãNXB nchar(10) NULL,
)
GO

-- Tạo cấu trúc bảng CuonSach
create table dbo.CuốnSách(
	MãSách nchar(10) NULL,
	MãCuốn nchar(10) primary key,
	VịTrí nvarchar(50) null,
)
GO

CREATE TABLE dbo.TácGiả(
	MãSách nchar(10),
	TênTácGiả nvarchar(50),
	primary key (MãSách, TênTácGiả),
)
GO

CREATE TABLE dbo.NXB(
	MãNXB nchar(10) primary key,
	TênNXB nvarchar(50) null,
	ĐịaChỉ nvarchar(50) null,
	SốĐT nchar(10) null,
)
GO
CREATE TABLE dbo.Mượn(
	MãCuốn nchar(10),
	MãĐG nchar(10),
	NgàyMượn date null,
	NgàyTrả date null,
	primary key (MãCuốn, MãĐG),
)
GO
CREATE TABLE dbo.ĐộcGiả(
	MãĐG nchar(10) primary key,
	TênĐG nvarchar(50) null,
	ĐịaChỉ nvarchar(50) null,
	SốĐT nchar(10) null,
)
GO
Alter table ĐầuSách WITH CHECK ADD FOREIGN KEY(MãNXB) REFERENCES NXB(MãNXB)
Go
ALTER TABLE CuốnSách  WITH CHECK ADD FOREIGN KEY(MãSách) REFERENCES ĐầuSách(MãSách)
GO
ALTER TABLE TácGiả  WITH CHECK ADD FOREIGN KEY(MãSách) REFERENCES ĐầuSách(MãSách)
GO
ALTER TABLE Mượn  WITH CHECK ADD FOREIGN KEY(MãCuốn) REFERENCES CuốnSách(MãCuốn)
GO
ALTER TABLE Mượn  WITH CHECK ADD FOREIGN KEY(MãĐG) REFERENCES ĐộcGiả(MãĐG)
GO
INSERT INTO dbo.NXB --(MaNXB, TenNXB, DiaChi, SoDT)
VALUES 
    ('XB01', 'Addison Wesley', 'London', '0392768491'),
    ('XB02', 'Kim Đồng', 'Hà Nội', '0250238196'),
	('XB03', 'Tuổi Trẻ', 'Tp.HCM', '0272175158'),
	('XB04', 'Thanh Niên', 'Tp.HCM', '0390565658'),
	('XB05', 'Văn Hóa', 'Hà Nội', '0378571434');

INSERT INTO dbo.ĐầuSách --(MaSach, Tua, MaNXB)
VALUES 
    ('MS01', 'HARRY POTTER', 'XB01'),
    ('MS02', 'ĐẮC NHÂN TÂM', 'XB01'),
    ('MS03', 'DORAEMON', 'XB04'),
	('MS04', 'CONAN', 'XB03'),
	('MS05', 'ÔNG GIÀ VÀ BIỂN CẢ', 'XB01'),
	('MS06', 'TUỔI TRẺ ĐÁNG BAO NHIÊU', 'XB05'),
	('MS07', 'CHUÔNG NGUYỆN HỒN AI', 'XB01'),
	('MS08', 'TIẾNG GIÀY ĐINH', 'XB02'),
	('MS09', 'GIÃ TỪ VŨ KHÍ', 'XB05'),
	('MS10', 'THẦN ĐỒNG ĐẤT VIỆT', 'XB03');

-- Insert data into TacGia table
INSERT INTO dbo.TácGiả --(MaSach, TenTacGia)
VALUES 
    ('MS01', 'J.K.ROWLING'),
    ('MS02', 'DALE CARNERGIE'),
    ('MS03', 'HIROSHI FUJIMOTO'),
	('MS04', 'GOSHO AOYAMA'),
	('MS05', 'HEMINGWAY'),
	('MS06', 'ROSIE NGUYỄN'),
	('MS07', 'HEMINGWAY'),
	('MS08', 'SƯU TẦM'),
	('MS09', 'HEMINGWAY'),
	('MS10', 'LÊ LINH');

-- Insert data into CuonSach table
INSERT INTO dbo.CuốnSách --(MaSach, MaCuon, Vitri)
VALUES 
    ('MS01', 'MC01', 'A1-S2'),
    ('MS01', 'MC02', 'A1-S2'),
	('MS02', 'MC03', 'A1-S1'),
	('MS03', 'MC04', 'A3-S4'),
	('MS03', 'MC05', 'A2-S3'),
	('MS04', 'MC06', 'A2-S2'),
	('MS05', 'MC07', 'B1-S2'),
	('MS07', 'MC08', 'B1-S2'),
	('MS09', 'MC09', 'A4-S3'),
	('MS10', 'MC10', 'A1-S3'),
	('MS10', 'MC11', 'A1-S4'),
	('MS10', 'MC12', 'A1-S5'),
	('MS06', 'MC13', 'A5-S2'),
	('MS08', 'MC14', 'A5-S3'),
	('MS06', 'MC15', 'B2-S3');


-- Insert data into DocGia table
INSERT INTO dbo.ĐộcGiả --(MaDG, TenDG, DiaChi, SoDT)
VALUES 
    ('DG01', 'Nguyễn Văn A', 'Quận 9, Tp.HCM', '0317383676'),
    ('DG02', 'Trần Tiến Bình', 'Thủ Đức, Tp. HCM', '0383304051'),
	('DG03', 'Hoàng Thị Chi', 'Cầu Giấy, Hà Nội', '0274644764'),
	('DG04', 'Nguyễn Thanh Duy', 'Bà Rịa, Vũng Tàu', '0246188656'),
	('DG05', 'Bùi Minh Hoàng', 'Long Khánh, Đồng Nai', '0394972721'),
	('DG06', 'Lê Yến Nhi', 'Quận 1, Tp.HCM', '0306193947'),
	('DG07', 'Lý Minh Phát', 'Củ Chi, Tp.HCM', '0256137338'),
	('DG08', 'Lê Trúc Quỳnh', 'Dĩ An, Bình Dương', '0255375751');


-- Insert data into Muon table
INSERT INTO dbo.Mượn --(MaCuon, MaDG, NgayMuon, NgayTra)
VALUES 
    ('MC01', 'DG01', '2024-10-01', '2024-10-15'),
    ('MC05', 'DG04', '2024-10-02', '2024-10-16'),
    ('MC06', 'DG05', '2024-10-03', '2024-10-17'),
	('MC07', 'DG01', '2024-05-04', '2024-05-16'),
	('MC08', 'DG01', '2024-07-02', '2024-07-10');

SELECT ĐịaChỉ, SốĐT
FROM NXB
WHERE TênNXB = N'Addison Wesley'