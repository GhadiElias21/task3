-- Total sale value for March 2024
SELECT SUM(amount) AS total_march_sales
FROM orders
WHERE strftime('%Y-%m', order_date) = '2024-03';

-- Customer who spent the most amount
SELECT customer, SUM(amount) AS total_spent
FROM orders
GROUP BY customer
ORDER BY total_spent DESC
LIMIT 1;

-- Average Order Value for the Last 3 Months (Jan–Mar 2024)
SELECT ROUND(AVG(amount), 2) AS avg_order_value
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';
