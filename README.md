# SQL Sales Analysis

SQL analysis of a sales dataset to extract business insights.

## Business Context
This project analyzes restaurant transaction data to understand
customer spending behavior, tipping patterns, and revenue distribution
across days and meal times.

The goal is to extract insights that could help restaurant managers
optimize operations and better understand customer behavior.

## Dataset

- File: data/sales_data.csv
- Rows: ~245
- Columns: total_bill, tip, sex, smoker, day, time, size

---

## Setup

Create the table:

```sql
psql -f sql/schema.sql
```
### Run analysis queries:
```
psql -f sql/analysis.sql
```
---

## Tools
• SQL (PostgreSQL)

---

## Key Questions
1. How many records are in the dataset?
2. What is the average bill amount?
3. What is the average tip?
4. Which day has the highest average bill?
5. Do smokers tip differently than non-smokers?

---

## SQL Queries
See: `sql/analysis.sql`

---

## Example Insights
- Average bill differs by day.
- Tip size varies between smokers and non-smokers.
- Dinner transactions dominate the dataset.

---

## Project Structure
