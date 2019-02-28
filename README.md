# Advanced-Database-Development
Professional-level database access from object-oriented systems, including complex SQL queries and stored procedures. Use of object-relational frameworks. Hands-on exercises with current RDBMS software.

** Chapter 4: Simple Columns **
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
SELECT Distinct TeamName AS 'Teams in Alphabetical Order'
FROM Teams
ORDER BY Team ASC
```
