-- customer_value_tier.sql

SELECT 
    c.name,
    SUM(o.total) AS total_spent,
    CASE 
        WHEN SUM(o.total) >= 200 THEN 'Gold'
        WHEN SUM(o.total) >= 100 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_tier
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
