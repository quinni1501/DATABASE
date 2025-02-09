SELECT DISTINCT BUF.MaNV, BUF.HoNV, BUF.Tenlot, BUF.TenNV,
                BIF.MaNV AS Ma_NQL, BIF.HoNV AS HoNQL, BIF.Tenlot AS TenlotNQL, BIF.TenNV AS TenNQL
FROM (SELECT MaNV, HoNV, Tenlot,TenNV, MaNQL FROM NHANVIEN) BUF
     inner join (
					SELECT QL.MaNV, QL.HoNV, QL.Tenlot, QL.TenNV
					FROM NHANVIEN AS QL inner join NHANVIEN
					ON NHANVIEN.MaNQL = QL.MaNV) BIF
ON BIF.MaNV = BUF.MaNQL