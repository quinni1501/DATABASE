SELECT ĐầuSách.Tựa, COUNT(TácGiả.TênTácGiả) AS SoLuongTacGia  
FROM TácGiả inner join ĐầuSách 
ON TácGiả.MãSách = ĐầuSách.MãSách inner join CuốnSách
ON ĐầuSách.MãSách = CuốnSách.MãSách inner join Mượn 
ON CuốnSách.MãCuốn = Mượn.MãCuốn inner join ĐộcGiả	 
ON Mượn.MãĐG= ĐộcGiả.MãĐG
WHERE TácGiả.TênTácGiả = N'HEMINGWAY' 
AND ĐộcGiả.TênĐG = N'Nguyễn Văn A'
GROUP BY ĐầuSách.MãSách, ĐầuSách.Tựa