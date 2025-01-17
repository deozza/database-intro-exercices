SELECT SUM(quantity) AS total_quantity
FROM ORDER_ITEMS
WHERE product_id = 2456;

SELECT name
FROM PRODUCTS
WHERE stock = 0;

SELECT *
FROM ORDERS
WHERE status = 'non livré';

SELECT *
FROM CUSTOMER
WHERE email LIKE '%@gmail.com';