# HR Attrition Analysis Project

An end-to-end data analysis project to identify key drivers of employee turnover using Excel, SQL Server, Python, and Power BI.

---

## 📌 Objective

Analyze employee attrition data to uncover patterns and key factors influencing employee turnover — including salary, department, experience, and job satisfaction — and present actionable insights through an interactive dashboard.

---

## 🗂️ Project Overview

This project follows a complete data analysis lifecycle:

- **Data Collection** — Used the IBM HR Analytics Employee Attrition dataset containing 1,470 employee records
- **Data Cleaning** — Removed irrelevant columns, handled inconsistencies, and engineered new features using Excel
- **Data Analysis** — Wrote SQL queries to extract attrition trends across departments, salary bands, experience levels, and satisfaction groups
- **Visualization** — Built Python charts (bar, line, pie, grouped bar) to explore relationships between variables
- **Dashboard** — Designed an interactive Power BI dashboard to present all findings in one place

---

## 🛠️ Tools & Technologies

- **Excel** — Data cleaning, feature engineering, pivot analysis
- **SQL Server** — Data querying and aggregation
- **Python** — Exploratory data analysis and visualization (`pandas`, `numpy`, `matplotlib`, `seaborn`)
- **Power BI** — Interactive dashboard

---

## 📊 Dataset Overview

- **Source:** IBM HR Analytics Employee Attrition dataset
- **Records:** 1,470 employees
- **Target Variable:** `Attrition` (Yes / No)
- **Overall Attrition Rate:** ~16.1% (237 out of 1,470 employees)

---

## 🔍 Analysis Performed

### Excel Data Cleaning
- Reduced 35 raw columns to 13 relevant features
- Created derived columns using Excel IF formulas:
  - `Attrition_Flag` — binary encoding (1 = left, 0 = stayed)
  - `Salary_Group` — Low (< 3K) / Medium (3K–7K) / High (> 7K)
  - `Experience_Group` — Fresher (< 5 yrs) / Medium (5–10 yrs) / Experienced (10+ yrs)
  - `Satisfaction_Group` — Low (≤ 2) / High (> 2)
- Pivot table summaries:
  - Overall attrition rate: **16.1%**
  - By Department: Sales **20.6%**, HR **19.0%**, R&D **13.8%**
  - By Salary: Low **28.6%**, Medium **12.0%**, High **10.8%**
  - By Experience: Fresher **32.9%**, Medium **16.6%**, Experienced **10.7%**
  - By Satisfaction: Low **19.7%**, High **13.9%**

### SQL Analysis
- Overall attrition rate calculation
- Department-wise attrition breakdown
- Attrition by salary group
- Attrition by experience group
- Attrition by satisfaction group
- Combined salary × satisfaction attrition matrix

### Python EDA
- Dataset shape, data types, and missing value checks
- Attrition count distribution
- Department-wise attrition rates (bar chart)
- Salary group vs attrition (bar chart)
- Age group vs attrition — `18–30`, `30–40`, `40–50`, `50+`
- Experience group vs attrition (line chart)
- Satisfaction group vs attrition (pie chart)
- Salary × Satisfaction combined attrition (grouped bar chart)

### Power BI Dashboard
- KPI cards: Total Employees, Attrition Count, Attrition Rate
- Bar charts: Department-wise and Salary-wise attrition
- Experience and Satisfaction breakdowns
- Slicers for Department, Salary Group, and Satisfaction filters

---

## 📊 Dashboard Preview

```
┌─────────────────────────────────────────────────────────────────────┐
│              HR ATTRITION ANALYSIS DASHBOARD                        │
│  [ Department ▼ ]  [ Salary Group ▼ ]  [ Satisfaction ▼ ]          │
├──────────────┬──────────────┬──────────────┬────────────────────────┤
│  👥 Total    │  🚪 Attrited │  📉 Attrition│  📊 Dept. Attrition   │
│  Employees   │  Employees   │  Rate        │  ┌──────────────────┐  │
│    1,470     │     237      │   16.1%      │  │ Sales       20.6%│  │
│              │              │              │  │ HR          19.0%│  │
│              │              │              │  │ R&D         13.8%│  │
│              │              │              │  └──────────────────┘  │
├──────────────┴──────────────┴──────────────┼────────────────────────┤
│  💰 Attrition by Salary Group              │  🎓 By Experience      │
│  ┌─────────────────────────────────────┐   │  ┌──────────────────┐  │
│  │ Low   ████████████████████  28.6%  │   │  │ Fresher    32.9% │  │
│  │ Med   ███████          12.0%       │   │  │ Medium     16.6% │  │
│  │ High  ██████           10.8%       │   │  │ Experienced 10.7%│  │
│  └─────────────────────────────────────┘   │  └──────────────────┘  │
├────────────────────────────────────────────┴────────────────────────┤
│  😊 Attrition by Satisfaction    │  Salary × Satisfaction Matrix    │
│  Low  ████████████  19.7%        │  ┌──────────┬──────┬─────────┐  │
│  High ████████      13.9%        │  │          │ Low  │  High   │  │
│                                  │  │ Low Sal  │ 35%  │  22%    │  │
│                                  │  │ Med Sal  │ 18%  │   8%    │  │
│                                  │  │ High Sal │ 14%  │   9%    │  │
│                                  │  └──────────┴──────┴─────────┘  │
└──────────────────────────────────────────────────────────────────────┘
```

### Key Dashboard Features
- **KPI Cards** — Instant snapshot of total employees, attritions, and rate
- **Department Bar Chart** — Compare attrition across Sales, HR, and R&D
- **Salary Group Chart** — Visualize how income level affects turnover
- **Experience Group Chart** — Track retention across career stages
- **Satisfaction Breakdown** — Gauge the impact of job satisfaction
- **Cross-Analysis Matrix** — Salary × Satisfaction combined view
- **Interactive Slicers** — Filter all visuals by department, salary, and satisfaction

---

## 🏗️ Project Workflow

```
Raw Data (CSV)
     │
     ▼
Excel – Data Cleaning & Feature Engineering
     │
     ▼
SQL Server – Aggregations & Attrition Queries
     │
     ▼
Python – EDA, Visualizations & Insights
     │
     ▼
Power BI – Interactive Dashboard
```

---

## 💡 Key Insights

- **Freshers leave the most** — Employees with under 5 years experience have a ~33% attrition rate, nearly 3× the company average.
- **Sales is the highest-risk department** — 20.6% attrition vs. 13.8% in R&D.
- **Low salary drives turnover** — Employees in the Low salary band leave at 28.6%, vs. just 10.8% in the High band.
- **Low satisfaction doubles the risk** — Low satisfaction group (19.7%) vs. High satisfaction group (13.9%).
- **Worst combination** — Low salary + Low satisfaction produces the highest attrition rates across all segments.

---

## 👤 Author

**Pavithra**  
Data Analyst | Excel • SQL • Python • Power BI
