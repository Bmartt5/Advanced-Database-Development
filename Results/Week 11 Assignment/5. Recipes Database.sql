SELECT SUM(MeasureAmountID) AS RecipiesWithCarrots
FROM ingredients 
INNER JOIN recipes 
ON ingredients.IngredientID = recipes.RecipeID
WHERE ingredients.IngredientName = 'Carrot';

