SELECT sum(QuantityOrdered) AS TwinTturboTiresOrderedTotal
FROM order_details
INNER JOIN products
ON order_details.ProductNumber = products.ProductNumber
WHERE ProductName = 'turbo twin tires'