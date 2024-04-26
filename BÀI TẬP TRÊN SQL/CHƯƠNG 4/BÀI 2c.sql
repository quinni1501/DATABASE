SELECT ĐầuSách.MãSách, ĐầuSách.Tựa
FROM TácGiả inner join ĐầuSách
ON TácGiả.MãSách = ĐầuSách.MãSách
WHERE TênTácGiả = N'HEMINGWAY'