select customer_id, COUNT(*) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (Select visit_id FROM Transactions)
GROUP BY customer_id
ORDER BY customer_ID ASC;
