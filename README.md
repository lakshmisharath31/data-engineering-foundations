
Practice queries and mini-projects for mastering SQL fundamentals — part of my **Data Engineering learning roadmap**.  

---
# 📊 SQL Foundations Practice  

Practice queries and mini-projects for mastering SQL fundamentals — part of my **Data Engineering learning roadmap**.  

---

## 🧠 Topics Covered  
- Core SQL querying and filtering  
- Sorting and limiting results  
- Conditional logic using CASE  
- Data profiling and aggregation (up next!)  
- Structured daily practice for portfolio building  

---

## ✅ Week 1: Core Querying  

### 📘 Day 1 – SELECT & Filtering Basics  
**Folder:** `day1_select_basics/`  

| Task | File | Concepts Covered |
|------|------|------------------|
| 1️⃣ Basic SELECT Statements | `select_queries.sql` | Retrieving data from tables |
| 2️⃣ WHERE Clause | — | Filtering rows with conditions |
| 3️⃣ Logical Operators | — | Using `AND`, `OR`, and `NOT` |
| 4️⃣ LIMIT and ORDER BY | — | Sorting and limiting results |

**Key Learnings**  
- Learned to query specific columns and filter data efficiently.  
- Practiced logical operators for combining conditions.  
- Focused on syntax clarity and consistent formatting.  

---

### 📘 Day 2 – Filtering, Sorting & Conditional Logic  
**Folder:** `day2_filter_sort/`  

| Task | File | Concepts Covered |
|------|------|------------------|
| 1️⃣ DISTINCT Practice | `task1_distinct.sql` | Finding unique values and counting categories using `DISTINCT` and `COUNT(DISTINCT)` |
| 2️⃣ ORDER BY & LIMIT | `task2_order_limit.sql` | Sorting rows and extracting top/bottom N records |
| 3️⃣ CASE WHEN Logic | `task3_case_when.sql` | Applying conditional logic for value segmentation |

**Key Learnings**  
- Used `DISTINCT` for data validation and profiling.  
- Practiced multi-column sorting with `ORDER BY`.  
- Implemented `CASE WHEN` for creating logical categories (e.g., High/Medium/Low Value).  
- Continued maintaining modular SQL files and proper Git commits.  

---

### 📘 Day 3 – Aggregations & Grouping  
**Folder:** `day3_aggregations/`  

| Task | File | Concepts Covered |
|------|------|------------------|
| 1️⃣ Basic Aggregations | `task1_basic_aggregates.sql` | Using `SUM`, `AVG`, `COUNT`, `MIN`, `MAX` for numeric summaries |
| 2️⃣ GROUP BY Practice | `task2_groupby.sql` | Aggregating metrics by region, country, product |
| 3️⃣ HAVING Clause Filters | `task3_having.sql` | Filtering aggregated groups using `HAVING` and combining with `WHERE` |

**Key Learnings**  
- Learned to summarize data using aggregate functions.  
- Differentiated between `WHERE` (row-level filters) and `HAVING` (group-level filters).  
- Combined both clauses for dual-stage filtering.  
- Built queries for business-style summaries like *revenue by region* and *top performing countries*.  

---

## 🪄 How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/lakshmisharath31/sql-foundations-practice.git
   cd sql-foundations-practice
___

## 📂 Folder Structure
sql-foundations-practice/
│
├── README.md
├── datasets/
│   ├── sales_data.csv
│   ├── employees.csv
│   └── customers.csv
│
├── day1_select_basics/
│   └── select_queries.sql
│
├── day2_filter_sort/
│   └── filtering_sorting.sql
│
├── day3_aggregations/
│   └── groupby_having.sql
│
├── day4_joins/
│   └── joins_practice.sql
│
├── day5_subqueries_ctes/
│   └── subquery_cte_examples.sql
│
└── mini_project_sales_analysis/
    ├── sales_analysis.sql
    └── results_screenshots/