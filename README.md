
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

### 📘 Day 4 – Joins & Relationships  
**Folder:** `day4_joins/`  

| Task | File | Concepts Covered |
|------|------|------------------|
| 1️⃣ INNER JOIN | `task1_inner_join.sql` | Match only customers who made purchases |
| 2️⃣ LEFT JOIN | `task2_left_join.sql` | Include all customers, even with no sales |
| 3️⃣ RIGHT JOIN | `task3_right_join.sql` | Include all sales, even if customer missing |
| 4️⃣ FULL OUTER JOIN | `task4_full_outer_join.sql` | Combine all data from both tables |
| 5️⃣ JOIN + Aggregation | `task5_join_with_aggregation.sql` | Calculate total spending and purchase count per customer |

**Key Learnings**  
- `INNER JOIN` → Retrieves rows existing in **both** tables.  
- `LEFT JOIN` → Returns all rows from the left table (**customers**), even if no sales match.  
- `RIGHT JOIN` → Returns all rows from the right table (**sales**), even if no customer match.  
- `FULL OUTER JOIN` → Combines all rows from both sides, filling missing values with `NULL`.  
- Joins combined with `GROUP BY` enable summary reports like total spending or purchase counts.  

---

## 📂 Folder Structure  



## 📂 Datasets

| File | Description |
|------|--------------|
| `sales.csv` | Main dataset used for Day 1–Day 3 exercises. Contains columns like `Order ID`, `Region`, `Country`, `Product`, `Quantity`, `Price`, and `Order_Date`. |
| `customers.csv` | Supplementary dataset for future join and subquery exercises. |
| `employees.csv` | Reference dataset for employee and department-related tasks. |

**Note:**  
The dataset `sales_data.csv` was renamed to `sales.csv` for consistency with SQL scripts and query examples (which reference `FROM sales`).

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
├── datasets/
│ ├── customers.csv
│ ├── sales.csv
│ └── employees.csv
│
├── day1_select_basics/
│ └── select_queries.sql
│
├── day2_filter_sort/
│ ├── task1_distinct.sql
│ ├── task2_order_limit.sql
│ └── task3_case_when.sql
│
├── day3_aggregations/
│ ├── task1_basic_aggregates.sql
│ ├── task2_groupby.sql
│ └── task3_having.sql
│
├── day4_joins/
│ ├── task1_inner_join.sql
│ ├── task2_left_join.sql
│ ├── task3_right_join.sql
│ ├── task4_full_outer_join.sql
│ └── task5_join_with_aggregation.sql
│
└── README.md