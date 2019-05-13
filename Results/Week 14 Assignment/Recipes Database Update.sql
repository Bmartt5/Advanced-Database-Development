UPDATE Recipe_ingredients 
SET 
    Amount = Amount / 2
WHERE
    Amount IN (SELECT 
            Amount
        FROM
            recipe_classes
                INNER JOIN
            ingredients
            ON recipe_classes.RecipeClassID = ingredients.IngredientID
        WHERE
            Ingredients.IngredientName = 'salt'
                AND Recipe_classes.RecipeClassDescription = 'Main course')

