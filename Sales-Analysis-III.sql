# Write your MySQL query statement below
SELECT DISTINCT p.product_id, p.product_name
FROM product p 
JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
  AND p.product_id NOT IN (
    SELECT DISTINCT s.product_id
    FROM sales s
    WHERE s.sale_date < '2019-01-01' OR s.sale_date > '2019-03-31'
  );

