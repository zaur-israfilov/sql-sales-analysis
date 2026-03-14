-- Total number of records
SELECT COUNT(*) AS total_rows
FROM sales;

-- Average total bill
SELECT AVG(total_bill) AS avg_bill
FROM sales;

-- Average tip
SELECT AVG(tip) AS avg_tip
FROM sales;

-- Average bill by day
SELECT day, AVG(total_bill) AS avg_bill
FROM sales
GROUP BY day
ORDER BY avg_bill DESC;

-- Average tip by smoker status
SELECT smoker, AVG(tip) AS avg_tip
FROM sales
GROUP BY smoker;
