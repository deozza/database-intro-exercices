SELECT quantity
FROM ORDER_ITEMS OI
WHERE product_id = 2456;


SELECT name
FROM PRODUCTS 
WHERE stock = 0;

SELECT id, customer_id, order_date
FROM ORDERS 
WHERE delivery_status = 'pending';

SELECT name, email
FROM CUSTOMER 
WHERE email LIKE '%@gmail.com';
