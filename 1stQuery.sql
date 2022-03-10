USE classicmodels;
SELECT employees.employeeNumber, employees.firstName, employees.lastName, sum(orderdetails.quantityOrdered * orderdetails.priceEach) AS Total FROM employees 
INNER JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
INNER JOIN orders ON orders.customerNumber = customers.customerNumber
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
GROUP BY employees.employeeNumber, employees.firstName, employees.lastName
ORDER BY Total DESC; 
