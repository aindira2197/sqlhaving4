CREATE TABLE orders2 (
    id INT,
    customer_id INT,
    total_price INT
);

INSERT INTO orders2 VALUES
(1, 1, 100),
(2, 1, 200),
(3, 1, 150),
(4, 1, 120),
(5, 1, 180),
(6, 1, 220),
(7, 2, 100);

SELECT customer_id, COUNT(*) AS total_orders
FROM orders2
GROUP BY customer_id
HAVING COUNT(*) > 5;
