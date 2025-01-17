SELECT COUNT(*) FROM orders
INNER JOIN order_items ON orders.id = orders_items.order_id
INNER JOIN products ON order_items.product_id = products.id
WHERE products.id = 2456;

SELECT name FROM products WHERE stock = 0;

SELECT id FROM orders WHERE order_date > ;

SELECT name FROM CUSTOMERS WHERE email LIKE '%@gmail.com'
