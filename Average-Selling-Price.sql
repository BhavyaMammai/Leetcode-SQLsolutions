# Write your MySQL query statement below
SELECT 
  p.product_id, 
  ROUND(
    COALESCE(SUM(p.price * s.units) * 1.0 / NULLIF(SUM(s.units), 0), 0), 
    2
  ) AS average_price
FROM prices p
left JOIN unitssold s 
  ON p.product_id = s.product_id
  AND s.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
