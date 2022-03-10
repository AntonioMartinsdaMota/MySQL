USE classicmodels;
SELECT productlines.productLine , sum(orderdetails.quantityOrdered*priceEach) AS Total FROM productlines
INNER JOIN products ON products.productLine = productlines.productLine
INNER JOIN orderdetails ON orderdetails.productCode = products.productCode
group by productlines.productLine
order by Total desc
limit 10;