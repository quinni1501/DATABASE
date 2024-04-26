SELECT MaDA , Buf.Phong,HoNV , Tenlot, TenNV, NgSinh
FROM NHANVIEN inner join (SELECT MaDA, Phong,TrPhong
						  FROM DUAN inner join PHONGBAN
						  ON Phong = MaPB WHERE Diadiem = N'Gò Vấp') Buf
ON MaNV = TrPhong