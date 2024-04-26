SELECT ĐộcGiả.TênĐG, ĐộcGiả.ĐịaChỉ, COUNT(Mượn.MãCuốn) AS SL_SÁCHMƯỢN
FROM ĐộcGiả LEFT JOIN Mượn 
ON ĐộcGiả.MãĐG = Mượn.MãĐG
GROUP BY ĐộcGiả.TênĐG, ĐộcGiả.ĐịaChỉ