SELECT DISTINCT C.CustomerID, CONCAT(C.CustFirstName, ' ', C.CustLastName) AS Customer
FROM Customers C
JOIN Engagements E
ON C.CustomerID = E.CustomerID
JOIN Entertainers ENT
ON E.EntertainerID = ENT.EntertainerID
WHERE ENT.EntStageName LIKE '%Topazz' OR ENT.EntStageName LIKE'%Modern Dance%'
ORDER BY C.CustomerID