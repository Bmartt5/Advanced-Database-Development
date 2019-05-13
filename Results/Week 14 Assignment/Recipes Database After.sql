SELECT 
    Recipes.RecipeTitle,
    Ingredients.IngredientName,
    Recipe_ingredients.Amount,
    Recipe_classes.RecipeClassDescription
FROM
    Ingredients
    INNER JOIN Recipe_ingredients ON Ingredients.IngredientID = Recipe_ingredients.IngredientID
        INNER JOIN
    Recipes ON Recipes.RecipeID = Recipe_ingredients.RecipeID
        INNER JOIN
    Recipe_classes ON recipes.RecipeClassID = Recipe_classes.RecipeClassID
WHERE
    Ingredients.IngredientName = 'salt'
        AND Recipe_classes.RecipeClassDescription = 'Main course'
ORDER BY Recipes.RecipeTitle