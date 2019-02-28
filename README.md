# Advanced-Database-Development
Professional-level database access from object-oriented systems, including complex SQL queries and stored procedures. Use of object-relational frameworks. Hands-on exercises with current RDBMS software.

# Chapter 4: Simple Columns 
- School Schedule Database #1 - Show me a complete list of all the subjects we offer.
``` SQL
SELECT DISTINCT SubjectName AS [Subjects That We Offer]
FROM Subjects
ORDER BY SubjectName ASC 
```
- School Schedule Database #2 - What kinds of titles are associated with our faculty?
``` SQL
SELECT DISTINCT Title AS [Titles]
FROM Faculty
ORDER BY Titles
```
- Bowling League Database #1 - List all of the teams in alphabetical order
``` SQL
SELECT DISTINCT TeamName AS [Teams With Alphabetical Ordering]
FROM Teams
ORDER BY Team ASC
```
# Chapter 6: Filtering Your Data
- Sales Orders Database: Get a list of accessory products (category ID 1) with low supply (quantity on hand less than 20) (8 rows)
``` SQL
SELECT DISTINCT CustomerID
FROM Orders B
ORDER BY CustomerID
```
- Entertainment Agency Database: Get a list of engagements with contract price over 2000 in 2018 (6 rows)
``` SQL
SELECT AgentID, AgtFirstName, AgtLastName, DateHired
FROM Agents
ORDER BY DateHired ASC
```
- School Scheduling Database: Show a list of classes that meet Monday through Friday and start at 1 pm (4 rows)
``` SQL
SELECT *
FROM Class_Rooms
WHERE PhoneAvailable = '1' And BuildingCode = 'AS'
```
- Recipes Database: Show the names of all herbal ingredients (ingredient class 22) (1 row)
``` SQL
SELECT Count(IngredientName)
FROM Ingredients
WHERE IngredientName LIKE 'Chick%'
```
