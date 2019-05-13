SELECT DISTINCT(E.EmployeeID), CONCAT(E.EmpFirstName,' ', E.EmpLastName) AS Employee
FROM Employees E
JOIN Orders O
ON E.EmployeeID = O.EmployeeID
JOIN Order_Details OD
ON O.OrderNumber = OD.OrderNumber
JOIN Products P
ON OD.ProductNumber = P.ProductNumber
WHERE P.ProductName LIKE '%tires%' AND (O.OrderDate = '2018-01-01' OR O.OrderDate = '2018-01-02')
ORDER BY E.EmployeeID