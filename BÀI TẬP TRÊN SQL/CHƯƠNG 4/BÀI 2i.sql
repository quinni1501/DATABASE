﻿SELECT NXB.MãNXB, NXB.TênNXB, COUNT(ĐầuSách.MãSách) AS SL_ĐẦUSÁCH
FROM NXB inner join ĐầuSách 
ON NXB.MãNXB = ĐầuSách.MãNXB
GROUP BY NXB.MãNXB, NXB.TênNXB;