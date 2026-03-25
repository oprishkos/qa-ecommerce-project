-- SQL Test Queries for E-commerce Testing Project

-- 1. Get all orders for a specific user (JOIN)
SELECT u.id, u.email, o.id AS order_id, o.total_price, o.status
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE u.email = 'test@test.com';

-- 2. Get order items with product details (Multiple JOINs)
SELECT o.id AS order_id, p.name, oi.quantity, oi.price
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE o.id = 123;

-- 3. Validate order total price (Aggregation)
SELECT o.id,
       SUM(oi.quantity * oi.price) AS calculated_total,
       o.total_price
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
WHERE o.id = 123
GROUP BY o.id, o.total_price;

-- 4. Find orders without items (Data integrity check)
SELECT o.id
FROM orders o
LEFT JOIN order_items oi ON o.id = oi.order_id
WHERE oi.id IS NULL;

-- 5. Find duplicate users (Data validation)
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- 6. Get latest order of a user (Sorting + Limit)
SELECT *
FROM orders
WHERE user_id = 45
ORDER BY created_at DESC
LIMIT 1;

-- 7. Count orders in a date range (Filtering)
SELECT COUNT(*) AS orders_count
FROM orders
WHERE created_at BETWEEN '2025-01-01' AND '2025-12-31';

-- 8. Count orders by status (Grouping)
SELECT status, COUNT(*)
FROM orders
GROUP BY status;

-- 9. Find users without orders (LEFT JOIN)
SELECT u.id, u.email
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;

-- 10. Rank orders by price per user (Window Function)
SELECT 
    o.id,
    o.user_id,
    o.total_price,
    RANK() OVER (PARTITION BY user_id ORDER BY total_price DESC) AS rank
FROM orders o;

-- 11. Calculate average order value per user (Aggregation)
SELECT user_id, AVG(total_price) AS avg_order
FROM orders
GROUP BY user_id;

-- 12. Find invalid orders (Negative or zero price)
SELECT *
FROM orders
WHERE total_price <= 0;
