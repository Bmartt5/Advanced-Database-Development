SELECT C.CustFirstName, C.CustLastName, E.EngagementNumber
FROM Customers C
LEFT JOIN Engagements E
ON C.CustomerID = E.CustomerID
