# Write your MySQL query statement below
SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans FROM
Visits V Left join Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id is NULL
GROUP BY V.customer_id