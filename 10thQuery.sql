USE classicmodels;
SELECT avg(orderdetails.quantityOrdered * orderdetails.priceEach) AS AverageCart, count(orderdetails.orderNumber) AS totalLines, sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS Sum
 FROM orderdetails
