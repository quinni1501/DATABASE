SELECT DUAN.MaDA, DUAN.TenDA, COUNT(NHANVIEN.MaNV) AS SL_NHANVIEN
FROM DUAN
LEFT JOIN PHANCONG ON DUAN.MaDA = PHANCONG.MaDA
LEFT JOIN NHANVIEN ON NHANVIEN.MaNV = PHANCONG.MaNV AND NHANVIEN.Phong = '5'
GROUP BY DUAN.MaDA, DUAN.TenDA;