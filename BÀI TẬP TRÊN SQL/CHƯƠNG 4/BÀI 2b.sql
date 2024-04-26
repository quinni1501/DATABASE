SELECT MãSách, Tựa
FROM ĐầuSách inner join
			(SELECT MãNXB
			 FROM NXB
			 WHERE TênNXB = N'Addison Wesley') BUF
ON ĐầuSách.MãNXB = BUF.MãNXB