SELECT *
FROM Customers C
Left JOIN Orders O
ON O.CustomerID = C.CustomerID
WHERE O.OrderNumber IS NULL