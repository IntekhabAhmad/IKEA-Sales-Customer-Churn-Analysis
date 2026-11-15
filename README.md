# IKEA-Sales-Customer-Churn-Analysis
End-to-end data analytics pipeline on IKEA retail transactions: data cleaning and transformation in SQL, EDA and customer churn analysis in Python (Pandas/NumPy), and interactive executive dashboarding in Power BI using custom DAX measures.

IKEA-Customer-Churn-And-Sales-Analytics/
│
├── data/
│   ├── raw_data.csv                  # Original uncleaned dataset (or sample if large)
│   └── cleaned_data.csv              # Dataset exported after SQL/Python cleaning
│
├── sql/
│   ├── 01_data_cleaning.sql          # DDL, handling nulls, duplicates, data types
│   └── 02_exploratory_queries.sql    # Initial aggregations and validation checks
│
├── notebooks/
│   └── churn_and_sales_eda.ipynb     # Python (Pandas/NumPy) analysis & segmentation
│
├── dashboard/
│   ├── IKEA_Analytics_Dashboard.pbix # Your Power BI file
│   ├── Home_Page.png                 # Screenshot of the Home Page
│   ├── Overview_Page.png             # Screenshot of the Overview Page
│   └── Churn_Analysis_Page.png       # Screenshot of the Churn/KPI Page
│
└── README.md                         # Project documentation (template below)


# 🛒 IKEA Sales & Customer Churn Analytics

## 📌 Project Overview
An end-to-end data analytics project analyzing customer purchasing behavior, revenue performance, and customer churn for retail transactions. This project demonstrates a full data pipeline: **data cleaning and transformation in SQL**, **exploratory data analysis (EDA) in Python**, and **interactive executive dashboarding in Power BI**.

---

## 🛠️ Tech Stack & Tools
* **Database & Data Cleaning:** SQL (Data type standardization, duplicate removal, null handling, staging tables)
* **Data Wrangling & EDA:** Python (`Pandas`, `NumPy`, `Matplotlib`/`Seaborn`)
* **Business Intelligence & Visualization:** Power BI (DAX, Data Modeling, Custom Theme `Scandi_Blue_Yellow`, Bookmark Navigation)

---

## 🔄 Project Workflow

### 1. Data Cleaning & Preparation (SQL)
* Imported raw CSV transactional data into a relational database schema.
* Standardized inconsistent date formats, trimmed string whitespace, and resolved missing customer/transaction attributes.
* Identified and removed duplicate records and validated primary/foreign key integrity across customer IDs (`cx_id`).

### 2. Exploratory Data Analysis (Python)
* Analyzed revenue distribution across customer segments, countries, and product categories using `Pandas` and `NumPy`.
* Investigated key drivers of customer churn (`IsChurned`) and calculated customer lifetime metrics.
* Performed statistical checks to detect anomalies and pricing/order outliers before feeding the dataset into Power BI.

### 3. Dashboard Design & DAX Modeling (Power BI)
* Designed a multi-page interactive Power BI report featuring a custom Scandinavian Blue & Yellow theme (`Scandi_Blue_Yellow`), intuitive page navigation (Home, Overview, and Deep-Dive views), and dynamic slicers (Year, Quarter, Month, Segment, Country, Churn Status).
* Engineered dynamic **DAX measures** using `CALCULATE`, `DIVIDE`, `DISTINCTCOUNT`, and filter context modifiers (`REMOVEFILTERS` / `ALLSELECTED`) to accurately track:
  * **Total Customers:** `5,881`
  * **Total Revenue:** `$17.02M`
  * **Churn Rate (%):** `54.48%` (3,204 Churned vs. 2,677 Retained)
  * **Average Customer Value:** `$2,893`
---
## 📊 Key Insights
* **Customer Retention vs. Revenue Impact:** While `54.48%` of unique customers churned, retained customers (`IsChurned = False`, `2,677` customers) generated `$13.38M` (`78.6%` of total revenue) with a significantly higher **Average Customer Value of `$4,999`** compared to **`$1,134`** for churned customers.

* **High-Value Segment Protection:** Protecting the active customer base and targeting mid-tier customers before they cross the churn threshold represents the highest ROI opportunity for revenue retention.

---

## 📷 Dashboard Preview

