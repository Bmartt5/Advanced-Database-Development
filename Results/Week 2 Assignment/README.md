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
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%206/3.%20Sales%20Orders%20Database%20Image%20-%20Copy.PNG"
        alt="Sales Order Database">
- Entertainment Agency Database: Get a list of engagements with contract price over 2000 in 2018 (6 rows)
``` SQL
SELECT AgentID, AgtFirstName, AgtLastName, DateHired
FROM Agents
ORDER BY DateHired ASC
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%206/1.%20Entertainment%20Agency%20Database%20Image%20-%20Copy.PNG"
        alt="Entertainment Agency Database">
- School Scheduling Database: Show a list of classes that meet Monday through Friday and start at 1 pm (4 rows)
``` SQL
SELECT *
FROM Class_Rooms
WHERE PhoneAvailable = '1' And BuildingCode = 'AS'
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%206/4.%20School%20Schedule%20Database%20Image%20-%20Copy.PNG"
        alt="School Scheduling Database">
- Recipes Database: Show the names of all herbal ingredients (ingredient class 22) (1 row)
``` SQL
SELECT Count(IngredientName)
FROM Ingredients
WHERE IngredientName LIKE 'Chick%'
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%206/5.%20Recipe%20Database%20Image%20-%20Copy.PNG"
        alt="Recipe Database">
        
        # Chapter 5: Inner Joins
- Sales Orders Database: Show a list of customers who made orders in 2018 (27 rows)
``` SQL
SELECT DISTINCT A.CustomerID, B.CustomerID, A.CustFirstName, A.CustLastName
FROM Customers A
INNER JOIN Orders B
ON A.CustomerID = B.CustomerID
ORDER BY B.CustomerID
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%208/1.%20Sales%20Orders%20Database%20Screeen%20Capture.PNG"
        alt="Sales Order Database">
- Entertainment Agency Database: Show musical styles and the entertainers with each style (32 rows)
``` SQL
SELECT A.EntertainerID, B.StyleID, B.StyleName AS [Musical Styles]
FROM Entertainer_Styles A 
INNER JOIN Musical_Styles B
ON A.StyleID = B.StyleID
ORDER BY EntertainerID
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%208/2.%20Entertainment%20Agency%20Database%20Screen%20Capture.PNG"
        alt="Entertainment Agency Database">
- School Scheduling Database: List students who took an English course in 2017, sorted by last name then first name (18 rows)
``` SQL
SELECT CONCAT(A.StudFirstName, ' ', A.StudLastName) AS [Full Name], B.StartDate AS [Start Date In 2017]
FROM Students A
LEFT OUTER JOIN Classes B
ON A.StudentID = B.ClassID
WHERE StartDate IS NULL
	OR StartDate BETWEEN '2016-12-31' AND '2018-01-01' 
ORDER BY A.StudLastName ASC, A.StudFirstName ASC
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%208/3.%20School%20Scheduling%20Database%20Screen%20Capture.PNG"
        alt="School Scheduling Database">
- Bowling Database: Show teams and the matches they won (team name, tournament ID, match ID and game number) (168 rows).
``` SQL
 SELECT A.TeamName, A.TeamID, B.WinningTeamID, B.MatchID, B.GameNumber 
 FROM Teams A
 RIGHT OUTER JOIN Match_Games B
 ON A.TeamID = B.MatchID
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%208/4.%20Bowling%20Database%20Screen%20Capture.PNG"
        alt="Bowling League Database">
- Recipes Database: Show all recipes that require a tablespoon for measurement (8 rows)
``` SQL
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
```
<img src="https://github.com/Bmartt5/Advanced-Database-Development/blob/master/Results/Ch%208/5.%20Recipes%20Database.PNG"
        alt="Recipe Database">
