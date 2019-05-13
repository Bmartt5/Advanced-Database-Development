SELECT recipes.RecipeTitle, ingredients.IngredientName,
     SUM(recipe_ingredients.Amount) * count(Ingredients.IngredientName) AS Quantity
FROM
    (Ingredients
    INNER JOIN Measurements ON Ingredients.MeasureAmountID = Measurements.MeasureAmountID)
        INNER JOIN
    Recipe_Ingredients ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID
        INNER JOIN
    recipes ON recipe_ingredients.RecipeID = recipes.RecipeID
     WHERE
            measurements.MeasurementDescription = 'teaspoon'
                OR measurements.MeasurementDescription = 'tablespoon'
GROUP BY ingredients.IngredientName