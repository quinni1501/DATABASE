SELECT BUF.MãSách, Tựa, SL
FROM ĐầuSách inner join 
			(SELECT MãSách, COUNT(MãCuốn) AS SL
			 FROM CuốnSách GROUP BY MãSách)BUF
ON ĐầuSách.MãSách = BUF.MãSách