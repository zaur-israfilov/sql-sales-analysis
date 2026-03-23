# SQL Sales Analysis

## Project Overview

This project analyzes the **Superstore retail dataset** using SQL to answer key business questions related to sales performance, profitability, discount impact, and regional dynamics.

It is part of a broader analytics portfolio built on the same dataset, where:

* SQL is used for structured analysis,
* Python (EDA) is used for exploratory insights,
* Power BI is used for visualization,
* and an end-to-end project combines all stages.

The primary goal of this repository is to demonstrate how SQL can be used not only for querying data, but for **solving real business problems and generating actionable insights**.

---

## Objectives

* Perform data quality checks before analysis
* Analyze sales and profit performance
* Identify loss-driving products and categories
* Evaluate the impact of discounts on profitability
* Compare regional and segment-level performance
* Analyze time-based trends in sales and profit
* Translate SQL outputs into business insights

---

## Dataset

The dataset used in this project is the **Superstore sales dataset**, where each row represents a transactional record.

### Key Fields:

* `order_id` – Unique order identifier
* `order_date` – Order date
* `ship_date` – Shipping date
* `customer_id` – Unique customer ID
* `customer_name` – Customer name
* `segment` – Customer segment
* `region` – Sales region
* `state`, `city` – Geographic details
* `category` – Product category
* `sub_category` – Product sub-category
* `product_name` – Product name
* `sales` – Revenue
* `quantity` – Units sold
* `discount` – Discount applied
* `profit` – Profit generated

### Dataset Characteristics:

* Transaction-level data
* Multi-dimensional (product, customer, geography, time)
* Suitable for profitability and performance analysis

---

## Data Source
The dataset is included in this repository under `data/raw/` for reproducibility.

---

## Tools Used

* SQL (PostgreSQL / MySQL / SQLite)
* Git & GitHub
* CSV dataset

---

## Project Structure

```bash
sql-sales-analysis/
├── README.md
├── data/
│   └── raw/
│       └── superstore.csv
├── sql/
│   ├── 01_schema_setup.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_sales_performance_analysis.sql
│   ├── 04_profitability_analysis.sql
│   ├── 05_discount_analysis.sql
│   ├── 06_customer_analysis.sql
│   ├── 07_product_analysis.sql
│   ├── 08_regional_analysis.sql
│   └── 09_time_trend_analysis.sql
├── docs/
│   ├── data_dictionary.md
│   ├── business_questions.md
│   └── insights_summary.md
└── images/
```

---

## Business Questions

This project is structured around key analytical questions:

1. Which categories and sub-categories generate the most revenue and profit?
2. Which products contribute the most to losses?
3. How does discount impact profitability?
4. Which regions perform well in sales but poorly in profit?
5. Are there clear sales and profit trends over time?
6. Which customers generate high revenue but low profitability?
7. What are the main drivers behind weak profit performance?

---

## Analysis Areas

### 1. Data Quality Checks

* Missing values
* Duplicate records
* Invalid or negative values
* Data consistency validation

### 2. Sales Performance Analysis

* Total sales and total profit
* Average order value
* Sales by category, segment, and region

### 3. Profitability Analysis

* Profit by category and sub-category
* Identification of loss-making products
* High-sales but low-profit products

### 4. Discount Analysis

* Average discount by category
* Discount vs profit relationship
* Heavily discounted loss-driving items

### 5. Customer Analysis

* Top customers by sales and profit
* High-value vs low-margin customers
* Customer contribution patterns

### 6. Product Analysis

* Best-selling products
* Most profitable products
* Underperforming products

### 7. Regional Analysis

* Sales and profit by region
* Regional performance gaps
* Underperforming locations

### 8. Time Trend Analysis

* Monthly sales and profit trends
* Seasonality patterns
* Growth and decline periods

---

## Key Insights

This analysis highlights several important business patterns:

* **Profitability is not aligned with revenue** — some high-revenue products generate low or negative profit.
* **Discounts significantly impact profit margins**, often turning otherwise profitable sales into losses.
* **A small number of products contribute disproportionately to total losses**, indicating risk concentration.
* **Regional performance varies**, with some regions showing strong sales but weaker profitability.
* **Category-level differences exist**, where certain categories drive revenue but underperform in profit.

---

## How to Run

1. Clone this repository
2. Import the dataset (`superstore.csv`) into your SQL environment
3. Run the schema setup script
4. Execute SQL files in order:

   * data quality checks
   * analysis scripts
5. Review results and insights

---

## Sample SQL Query

```sql
-- Monthly sales and profit trend
SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY 1
ORDER BY 1;
```

---

## What I Learned

* Structuring SQL analysis around business questions improves clarity and impact
* Data quality checks are essential before drawing conclusions
* Profitability analysis provides deeper insight than revenue alone
* SQL can be used as a complete analytical tool, not just for querying

---

## Future Improvements

* Apply window functions for advanced analysis
* Implement customer segmentation using SQL
* Build KPI layers for reporting
* Integrate results with a Power BI dashboard
* Extend analysis into a full end-to-end analytics pipeline

---

## Related Projects

This project is part of a broader analytics portfolio:

* **End-to-End Sales Analytics** – full pipeline analysis
* **EDA Sales Analysis** – Python-based exploratory analysis
* **Sales Dashboard (Power BI)** – visual analytics and reporting

---
