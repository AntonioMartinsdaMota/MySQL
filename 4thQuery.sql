USE classicmodels;
SELECT offices.officeCode , month(orders.shippedDate) AS Months, sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS Total FROM offices
INNER JOIN employees ON offices.officeCode = employees.officeCode
INNER JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
INNER JOIN orders ON orders.customerNumber = customers.customerNumber
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
WHERE month(orders.shippedDate) != "null"
GROUP BY officeCode, month(orders.shippedDate)
ORDER BY offices.officeCode, Months;