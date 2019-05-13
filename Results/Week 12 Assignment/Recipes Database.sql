SELECT  
Ingredients.IngredientName AS Unit,
   SUM(recipe_ingredients.Amount) * count(Ingredients.IngredientName) AS Quantity
FROM (Ingredients 
INNER JOIN Measurements
ON Ingredients.MeasureAmountID =
Measurements.MeasureAmountID)
INNER JOIN Recipe_Ingredients
ON Ingredients.IngredientID =
   Recipe_Ingredients.IngredientID
GROUP BY
   Ingredients.IngredientName, Measurements.MeasurementDescription
   ORDER BY Ingredients.IngredientName ASC