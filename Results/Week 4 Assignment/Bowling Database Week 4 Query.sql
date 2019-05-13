 SELECT BowlerFirstName AS 'First Name', BowlerMiddleInit AS 'Middle Initial', BowlerLastName AS 'Last Name'
 FROM Bowlers
 WHERE BowlerMiddleInit IS NULL
 ORDER BY [Last Name] ASC, [First Name] ASC