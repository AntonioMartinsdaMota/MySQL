USE classicmodels;
SELECT customers.country , month(orders.shippedDate) AS Months, sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS Total FROM customers 
INNER JOIN orders ON orders.customerNumber = customers.customerNumber
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
WHERE month(orders.shippedDate) != "null"
GROUP BY customers.country, month(orders.shippedDate)
ORDER BY customers.country, Months;