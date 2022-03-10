USE classicmodels;
SELECT customers.customerName , sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS Total FROM customers 
INNER JOIN orders ON orders.customerNumber = customers.customerNumber
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
GROUP BY customers.customerName
ORDER BY Total desc;