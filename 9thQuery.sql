USE classicmodels;
SELECT orders.orderNumber, orders.status from orders
WHERE
orders.status != "Shipped"