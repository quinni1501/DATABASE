SELECT NXB.TênNXB, COUNT(TácGiả.TênTácGiả) AS SL_TÁCGIẢ
FROM NXB
 inner join ĐầuSách ON NXB.MãNXB = ĐầuSách.MãNXB
inner join TácGiả ON ĐầuSách.MãSách = TácGiả.MãSách
GROUP BY NXB.TênNXB;
