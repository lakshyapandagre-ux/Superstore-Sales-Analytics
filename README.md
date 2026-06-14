# Superstore-Sales-Analytics

# 🏪 Superstore Sales Analytics using Python, PostgreSQL & SQL

## 📌 Project Overview

This project is a complete end-to-end Retail Sales Analytics solution built using **Python, PostgreSQL, and Advanced SQL**.

The objective was to analyze retail sales data, identify key business drivers, evaluate profitability, discover customer and product insights, and provide strategic business recommendations based on data.

The project follows a structured industry-style analytics workflow, covering everything from data understanding and cleaning to advanced SQL analysis and executive-level reporting.

---

# 🎯 Business Objectives

The primary goals of this analysis were:

* Understand overall business performance.
* Identify revenue and profit drivers.
* Analyze customer purchasing behavior.
* Evaluate category and product performance.
* Detect loss-making products and regions.
* Measure the impact of discounts on profitability.
* Perform customer, product, and regional segmentation.
* Generate actionable business recommendations.

---

# 🛠️ Tools & Technologies

### Programming & Analytics

* Python
* Pandas
* NumPy

### Database

* PostgreSQL
* pgAdmin

### SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* HAVING
* ORDER BY
* JOINS
* Common Table Expressions (CTEs)
* Window Functions
* RANK()
* DENSE_RANK()
* ROW_NUMBER()
* Correlation Analysis

### Visualization

* Matplotlib
* Seaborn

---

# 📊 Project Workflow

## Phase 1 — Business Understanding

Defined business goals and key analytical questions.

---

## Phase 2 — Data Understanding

* Dataset Exploration
* Data Types Analysis
* Shape Analysis
* Initial Data Inspection

---

## Phase 3 — Data Quality Assessment

* Missing Value Analysis
* Duplicate Detection
* Data Consistency Checks
* Data Validation

---

## Phase 4 — Data Profiling

* Descriptive Statistics
* Distribution Analysis
* Category Analysis
* Product Analysis

---

## Phase 5 — Database Design

Normalized the dataset into:

### Customers Table

* Customer ID
* Customer Name
* Segment

### Products Table

* Product ID
* Product Name
* Category
* Sub-Category

### Orders Table

* Order Information
* Sales Metrics
* Geographic Information

---

## Phase 6 — PostgreSQL Implementation

* Database Creation
* Table Design
* CSV Import
* Data Validation
* SQL Environment Setup

---

## Phase 7 — SQL Fundamentals

Performed business analysis using:

* Aggregations
* Filtering
* Sorting
* Grouping

---

## Phase 8 — Business Analysis

Answered critical business questions:

* Top Revenue Customers
* Top Profit Customers
* Product Performance
* Category Performance
* Regional Performance

---

## Phase 9 — Statistical Analysis

Performed:

* Revenue Distribution Analysis
* Profit Distribution Analysis
* Discount Analysis
* Correlation Analysis
* Loss Analysis
* Outlier Detection
* Revenue Risk Assessment

---

## Phase 10 — Segmentation & Advanced Analytics

Performed:

* Customer Segmentation
* Product Segmentation
* Regional Segmentation
* Pareto Analysis
* Revenue Ranking
* Profit Ranking
* Advanced SQL Analysis

---

## Phase 11 — Executive Insights

Converted analytical findings into business insights suitable for management decision-making.

---

## Phase 12 — Strategic Recommendations

Developed actionable recommendations to improve profitability and business performance.

---

# 📈 Key Findings

### Technology is the Best Performing Category

* Highest Revenue Category
* Highest Profit Category

Technology products drive both growth and profitability.

---

### Furniture Generates Revenue but Weak Profitability

Furniture contributes significant sales but relatively low profits.

This indicates margin pressure and potential pricing inefficiencies.

---

### Tables Are the Largest Loss-Making Sub-Category

Tables generated the highest cumulative losses among all product groups.

---

### Nearly 19% of Orders Are Unprofitable

A significant percentage of transactions generate negative profits.

This presents a major opportunity for profitability improvement.

---

### Discounts Reduce Profitability

Correlation analysis revealed that increasing discounts negatively impacts profit.

---

### Discounts Do Not Significantly Increase Sales

Sales showed almost no meaningful relationship with discounts.

---

### West Region Is the Strongest Performer

The West region generated the highest revenue and profit.

---

### Texas Is the Largest Loss-Making State

Texas contributed the highest cumulative losses and requires further investigation.

---

# 💡 Business Recommendations

* Increase investment in Technology products.
* Reduce unnecessary discounting.
* Review pricing strategy for Tables.
* Create retention programs for high-value customers.
* Investigate loss-making customers.
* Prioritize high-profit products.
* Improve performance in underperforming states.
* Focus on profitability-based KPIs.
* Monitor discount effectiveness.
* Develop executive profitability dashboards.

---

# 📂 Project Structure

```text
Superstore-Sales-Analytics/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
│
├── images/
│
├── reports/
│   └── Executive_Report.docx
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_analysis_queries.sql
│   └── 03_advanced_sql.sql
│
├── Superstore_Analysis.ipynb
│
└── README.md
```

# 🚀 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Statistical Analysis
* Business Analytics
* Data Modeling
* PostgreSQL
* SQL Querying
* Customer Segmentation
* Product Segmentation
* Revenue Analysis
* Profitability Analysis
* Correlation Analysis
* Window Functions
* Executive Reporting
* Business Recommendations

---

# 📌 Conclusion

This project demonstrates a complete data analytics workflow from raw data exploration to executive-level business recommendations.

By combining Python, PostgreSQL, and Advanced SQL, the analysis uncovers key business opportunities, identifies profitability challenges, and provides actionable insights that can support strategic decision-making in a retail environment.
