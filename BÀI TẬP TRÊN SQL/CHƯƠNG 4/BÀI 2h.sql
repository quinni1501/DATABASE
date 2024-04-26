SELECT TênĐG, ĐịaChỉ, COUNT(MãCuốn) AS SLSachmuon
FROM ĐộcGiả
JOIN Mượn ON ĐộcGiả.MãĐG = Mượn.MãĐG
GROUP BY TênĐG, ĐịaChỉ
HAVING COUNT(MãCuốn) >= 5;