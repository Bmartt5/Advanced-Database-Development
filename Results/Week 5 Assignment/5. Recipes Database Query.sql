SELECT 
RE.RecipeTitle AS [Recipe],
 I.IngredientName AS [Ingredient],
  M.MeasurementDescription AS Measurement,
   RE.Preparation
FROM Measurements M
INNER JOIN Ingredients I
ON M.MeasureAmountID = I.MeasureAmountID
INNER JOIN Recipe_Ingredients R
ON M.MeasureAmountID = R.MeasureAmountID
INNER JOIN Recipes RE
ON R.RecipeID = RE.RecipeID
WHERE R.MeasureAmountID = '4' AND R.Amount = 1 And R.RecipeSeqNo = 4
