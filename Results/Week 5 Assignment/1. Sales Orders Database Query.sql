SELECT DISTINCT A.CustomerID, B.CustomerID, A.CustFirstName, A.CustLastName
FROM Customers A
INNER JOIN Orders B
ON A.CustomerID = B.CustomerID
ORDER BY B.CustomerID
