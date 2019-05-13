SELECT A.EntertainerID, B.StyleID, B.StyleName AS [Musical Styles]
FROM Entertainer_Styles A 
INNER JOIN Musical_Styles B
ON A.StyleID = B.StyleID
ORDER BY EntertainerID