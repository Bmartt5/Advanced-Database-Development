SELECT *, 
(SELECT max(MeasureAmountID) from Ingredients I where I.IngredientID = R.RecipeID) AS [Number of Ingredients]
FROM Recipes R