-- 1. afficher toutes les quantités commandées du produit avec l'id 2456

SELECT quantity
FROM order_items
WHERE product_id = 2456;

-- 2. afficher le nom de tous les produits qui ne sont plus en stock

SELECT name
FROM products
WHERE stock = 0;

-- 3. afficher les commandes qui n'ont pas encore été livrée



-- 4. afficher tous les clients qui ont une adresse email qui termine par @gmail.com

SELECT name, email
FROM customers
WHERE email LIKE '%@gmail.com';
