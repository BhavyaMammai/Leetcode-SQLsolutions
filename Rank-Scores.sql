# Write your MySQL query statement beloW
Select score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank' from scores;