-- =====================================================
-- SQL Sales Analysis
-- Restaurant dataset analytical queries
-- Author: Zaur Israfilov
-- =====================================================


-- 1. Total number of records in the dataset
SELECT 
    COUNT(*) AS total_rows
FROM sales;


-- 2. Average bill amount
SELECT 
    AVG(total_bill) AS avg_bill
FROM sales;


-- 3. Average tip amount
SELECT 
    AVG(tip) AS avg_tip
FROM sales;


-- 4. Average bill by day of the week
SELECT 
    day,
    AVG(total_bill) AS avg_bill
FROM sales
GROUP BY day
ORDER BY avg_bill DESC;


-- 5. Average tip by smoker status
SELECT 
    smoker,
    AVG(tip) AS avg_tip
FROM sales
GROUP BY smoker;


-- 6. Revenue analysis by day
SELECT
    day,
    COUNT(*) AS total_orders,
    SUM(total_bill) AS revenue,
    AVG(total_bill) AS avg_bill
FROM sales
GROUP BY day
ORDER BY revenue DESC;


-- 7. Average tip percentage
SELECT
    ROUND(AVG(tip / NULLIF(total_bill, 0)) * 100, 2) AS avg_tip_percentage
FROM sales;


-- 8. Lunch vs Dinner revenue analysis
SELECT
    time,
    COUNT(*) AS total_orders,
    SUM(total_bill) AS revenue,
    AVG(total_bill) AS avg_bill,
    AVG(tip) AS avg_tip
FROM sales
GROUP BY time
ORDER BY revenue DESC;
