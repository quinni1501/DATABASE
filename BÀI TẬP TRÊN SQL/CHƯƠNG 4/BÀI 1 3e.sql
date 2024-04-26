SELECT MaNV, HoNV, Tenlot, TenNV 
FROM NHANVIEN inner join
	(SELECT MaPB FROM PHONGBAN WHERE TenPB = N'Nghiên cứu') BUF
	ON Phong = MaPB
WHERE Luong >= 30000 AND Luong <= 50000