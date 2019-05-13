SELECT Categories.CategoryDescription , SUM(Order_Details.QuotedPrice *
   Order_Details.QuantityOrdered) AS TotalSales
FROM (Categories
INNER JOIN Order_details
ON Categories.CategoryID = Order_details.OrderNumber)
GROUP BY Categories.CategoryDescription