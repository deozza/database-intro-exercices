SELECT COUNT(*) FROM orders
INNER JOIN order_items ON orders.id = orders_items.order_id
INNER JOIN products ON order_items.product_id = products.id
WHERE products.id = 2456;
