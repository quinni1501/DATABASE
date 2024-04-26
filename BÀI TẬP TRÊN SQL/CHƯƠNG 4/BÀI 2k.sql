SELECT NXB.MãNXB, NXB.TênNXB, COUNT(TácGiả.TênTácGiả) AS SLTacgia
FROM NXB inner join ĐầuSách 
ON NXB.MãNXB = ĐầuSách.MãNXB
inner join TácGiả 
ON ĐầuSách.MãSách = TácGiả.MãSách
GROUP BY NXB.MãNXB, NXB.TênNXB;