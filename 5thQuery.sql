USE classicmodels;
SELECT products.productName, sum(orderdetails.quantityOrdered*priceEach) AS Total FROM products
INNER JOIN orderdetails ON orderdetails.productCode = products.productCode
group by products.productName
order by Total desc
limit 10;