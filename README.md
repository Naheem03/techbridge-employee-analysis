# 🗄️ TechBridge Ltd Employee Database Analysis

**Tool:** MySQL  |  **Category:** Human Resources / Workforce Analytics  |  **Year:** 2026

-----

## 📌 Project Overview

This project involves querying and analysing a structured employee database for TechBridge Ltd — a fictitious technology company with 85 employees across 8 departments and 5 office locations in Nigeria. The objective was to use SQL to answer key HR questions around staffing, salary distribution, departmental headcount, gender balance, employee tenure, and salary outliers.

-----

## 🎯 Business Questions Answered

- How many employees are in each department and what is the gender breakdown?
- What is the average salary by department and job level?
- Which employees have been with the company for more than 5 years?
- Are there any salary outliers — employees earning significantly above their departmental average?
- How are employees distributed across salary bands?
- Which departments have more than 10 employees?

-----

## 🗂️ Database Structure

The database `techbridge_db` contains 4 related tables:

|Table        |Description                                          |Records|
|-------------|-----------------------------------------------------|-------|
|`departments`|Department names, locations and managers             |8 rows |
|`job_levels` |Job level names and descriptions (Entry, Mid, Senior)|3 rows |
|`employees`  |Employee personal and employment details             |85 rows|
|`salaries`   |Monthly salary per employee with effective date      |85 rows|

### Entity Relationship

```
departments ──< employees >── job_levels
                    │
                 salaries
```

-----

## 🗂️ Dataset Details

|Field          |Description                      |
|---------------|---------------------------------|
|Employee ID    |Unique identifier (1001–1085)    |
|Name           |First and last name              |
|Gender         |Male or Female                   |
|Department     |One of 8 departments             |
|Job Level      |Entry, Mid, or Senior            |
|Hire Date      |Date of employment (2013–2024)   |
|Monthly Salary |Fixed monthly salary in Naira (₦)|
|Office Location|Lagos, Abuja, Ibadan, or Kano    |


> **Note:** This is a simulated dataset created for portfolio purposes.

-----

## 🛠️ SQL Skills Demonstrated

- **SELECT, WHERE, ORDER BY** — Retrieving and filtering specific employee records
- **GROUP BY with COUNT and AVG** — Calculating headcount and average salaries per department
- **INNER JOIN** — Combining data across the employees, departments, job_levels and salaries tables
- **HAVING clause** — Filtering grouped results by headcount threshold
- **TIMESTAMPDIFF** — Calculating employee tenure in years
- **Subqueries** — Identifying salary outliers earning above departmental average
- **CASE WHEN** — Classifying employees into salary bands
- **FORMAT()** — Formatting salary figures for readability

-----

## 📋 Queries & Results

### Query 1 — Headcount & Gender Breakdown per Department

**Key Finding:** Engineering is the largest department with 15 employees. The company maintains a near-perfect gender balance of 49.4% female overall — with Engineering being the only department slightly below 50% at 46.7%.

### Query 2 — Average Salary by Department & Job Level

**Key Finding:** Engineering Senior level earns the highest average at ₦674,000/month. Customer Service Entry level is the lowest at ₦171,250/month. Salary increases consistently from Entry to Mid to Senior across all departments.

### Query 3 — Employees with 5+ Years Tenure

**Key Finding:** 44 out of 85 employees (51.8%) have served more than 5 years — a strong retention rate. Chukwu Obi (Operations) is the longest serving employee at 13 years. All long-tenured employees are at Senior or Mid level.

### Query 4 — Salary Outliers (20%+ Above Department Average)

**Key Finding:** 28 out of 85 employees (32.9%) earn more than 20% above their department average. All outliers are at Senior level — confirming salary progression is driven by seniority rather than anomalies. Rotimi Adesanya (Engineering) is the highest outlier at 52.3% above average.

### Query 5 — Salary Band Classification

**Key Finding:** 30.6% of employees are in the Senior band (₦450k+), 41.2% in the Mid band (₦250k–₦450k), and 28.2% in the Entry band (below ₦250k). The workforce is well distributed across all three bands.

### Query 6 — Departments with More Than 10 Employees

**Key Finding:** Only Engineering qualifies with 15 employees and an average salary of ₦472,666.67/month — confirming it is the company’s largest and highest-paid department.

### Query 7 — Full Employee Report

**Key Finding:** All 85 employees are present across 8 departments and 4 office locations. Lagos is the largest office hosting Engineering, Finance, HR and IT. Data is clean and complete with no missing values.

-----

## 📈 Overall Insights

1. **Engineering is the backbone of TechBridge** — largest headcount, highest salaries, and strongest senior representation
1. **Gender balance is excellent** — 49.4% female company-wide, one of the strongest metrics in the dataset
1. **Retention is strong** — over half the workforce has stayed for 5+ years
1. **Salary outliers are seniority-driven** — no anomalies, pay progression is consistent and fair
1. **The workforce is well structured** — balanced distribution across entry, mid and senior levels

-----

## 📂 Files in This Repository

|File                              |Description                                                                    |
|----------------------------------|-------------------------------------------------------------------------------|
|`TechBridge_Employee_Database.sql`|Full SQL script — creates database, tables, inserts data and runs all 7 queries|
|`README.md`                       |This file                                                                      |

-----

## 🚀 How to Use

1. Download `TechBridge_Employee_Database.sql`
1. Open **MySQL Workbench** (or any MySQL client)
1. Run this first to clear any existing data:

```sql
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS job_levels;
DROP TABLE IF EXISTS departments;
SET FOREIGN_KEY_CHECKS = 1;
```

1. Open the downloaded `.sql` file and run the full script
1. Highlight each query individually and press **Ctrl + Shift + Enter** to run one at a time

-----

## 👤 Author

**Oladega Naheem Olasubomi**
Aspiring Data Analyst | Excel · SQL · Power BI
📧 oladegaolashubomi307@gmail.com
🔗 [LinkedIn](https://linkedin.com/in/oladega-naheem-b0549b300)

-----

*This project is part of my Data Analytics Portfolio built after my training at CODAR TECH (2026)*
