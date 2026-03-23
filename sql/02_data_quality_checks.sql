-- =====================================================
-- DATA QUALITY CHECKS - SUPERSTORE DATASET
-- =====================================================

-- This script performs initial data validation checks
-- before proceeding with analytical queries.
-- The goal is to ensure data consistency and reliability.


-- =====================================================
-- 1. ROW COUNT
-- =====================================================

-- Question: How many total records are in the dataset?

SELECT COUNT(*) AS total_rows
FROM orders;


-- =====================================================
-- 2. NULL VALUE CHECK
-- =====================================================

-- Question: Are there missing values in critical columns?

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN profit IS NULL THEN 1 ELSE 0 END) AS null_profit
FROM orders;


-- =====================================================
-- 3. DUPLICATE CHECK
-- =====================================================

-- Question: Are there duplicate rows based on order_id + product_name?

SELECT
    order_id,
    product_name,
    COUNT(*) AS duplicate_count
FROM orders
GROUP BY
    order_id,
    product_name
HAVING COUNT(*) > 1;


-- =====================================================
-- 4. DATE RANGE CHECK
-- =====================================================

-- Question: What is the time range of the dataset?

SELECT
    MIN(order_date) AS earliest_order,
    MAX(order_date) AS latest_order
FROM orders;


-- =====================================================
-- 5. NEGATIVE & ZERO VALUE CHECK
-- =====================================================

-- Question: Are there invalid numeric values?

SELECT
    COUNT(*) FILTER (WHERE sales <= 0) AS invalid_sales,
    COUNT(*) FILTER (WHERE quantity <= 0) AS invalid_quantity,
    COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit
FROM orders;


-- =====================================================
-- 6. DISCOUNT VALIDATION
-- =====================================================

-- Question: Are discount values within expected range (0 to 1)?

SELECT
    MIN(discount) AS min_discount,
    MAX(discount) AS max_discount
FROM orders;


-- =====================================================
-- 7. CATEGORY CONSISTENCY CHECK
-- =====================================================

-- Question: Are there unexpected categories?

SELECT DISTINCT category
FROM orders
ORDER BY category;


-- =====================================================
-- 8. SUB-CATEGORY DISTRIBUTION
-- =====================================================

-- Question: How many sub-categories exist?

SELECT
    category,
    COUNT(DISTINCT sub_category) AS subcategory_count
FROM orders
GROUP BY category
ORDER BY subcategory_count DESC;


-- =====================================================
-- 9. REGION DISTRIBUTION
-- =====================================================

-- Question: How is data distributed across regions?

SELECT
    region,
    COUNT(*) AS total_records
FROM orders
GROUP BY region
ORDER BY total_records DESC;


-- =====================================================
-- END OF DATA QUALITY CHECKS
-- =====================================================
