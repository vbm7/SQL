-- order_ranking.sql

SELECT 
    customer_id,
    order_id,
    total,
    RANK() OVER (PARTITION BY customer_id ORDER BY total DESC) AS order_rank
FROM orders;
