USE classicmodels;
SELECT sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS TotalSales FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber;
