SELECT 
    product_id,
    product_name,
    price,
    CASE 
        WHEN price < 10 THEN 'Very Cheap'
        WHEN price >= 10 AND price < 50 THEN 'Cheap'
        WHEN price >= 50 AND price < 100 THEN 'Moderate'
        WHEN price >= 100 AND price < 500 THEN 'Expensive'
        WHEN price >= 500 THEN 'Very Expensive'
        ELSE 'Unknown'
    END AS price_category
FROM products;
