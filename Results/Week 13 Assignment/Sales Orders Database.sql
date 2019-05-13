SELECT 
    Categories.CategoryDescription,
    SUM(Order_Details.QuantityOrdered * Order_Details.QuotedPrice) AS TotSales
FROM
    (Categories
    INNER JOIN Products ON Categories.CategoryID = Products.CategoryID)
        INNER JOIN
    Order_details ON Products.ProductNumber = Order_details.ProductNumber
GROUP BY Categories.CategoryDescription
HAVING SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered) > 1000000