SELECT *
FROM Recipe_Ingredients RI
RIGHT JOIN Measurements M
ON RI.MeasureAmountID = M.MeasureAmountID
WHERE RI.MeasureAmountID IS NULL