SELECT MãNXB, TênNXB, ĐịaChỉ, SLDausach
FROM (
    SELECT NXB.MãNXB, NXB.TênNXB, NXB.ĐịaChỉ, COUNT(ĐầuSách.MãSách) AS SLDausach
    FROM NXB inner join ĐầuSách 
	ON NXB.MãNXB = ĐầuSách.MãNXB
    GROUP BY NXB.MãNXB, NXB.TênNXB, NXB.ĐịaChỉ
) BUF
WHERE BUF.SLDausach >= 100;