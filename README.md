
# CRM Customer Loyalty Analytics & Dashboard

An end-to-end data engineering and business intelligence project that transforms raw retail data into actionable CRM insights. This project builds a complete analytical pipeline using **Excel** for data modeling, **SQL Server** for structured database querying, and **Power BI** for dynamic executive dashboarding.

---

## Project Overview & Business Value
In the modern retail landscape, understanding customer loyalty tiers, purchasing behavior, and regional sales distribution is critical for optimizing marketing ROI and retaining high-value customers. 

This project solves a classic business problem by analyzing **73,700 units in sales** across **20 major transactions**, segmenting customers into loyalty tiers (Gold, Silver, Standard), and uncovering high-performing regional channels.

---

## Tech Stack & Architecture
* **Data Layer:** Microsoft Excel (`crm_customer_loyalty_data.xlsx`) - Cleaned relational tables containing Customer and Transaction data.
* **Database & Query Layer:** SQL Server (`crm_loyalty_analysis.sql`) - Structured relational database design utilizing advanced aggregations, conditional joins, and performance filters (`HAVING`, `TOP`).
* **BI & Visualization Layer:** Power BI (`crm_customer_loyalty_dashboard.pbix`) - Fully interactive executive dashboard featuring automated cross-filtering and high-level KPI tracking.

---

## Executive Dashboard Analytics (Power BI)

### Key Performance Indicators (KPIs) Captured:
* **Total Sales Volume:** 73.7K
* **Total Transactions Count:** 20
* **Average Order Value (AOV):** 3,685
* **Total Products Distributed:** 38

### Visualizations Designed:
1. **Sales Distribution by Region & Channel:** A 100% Stacked Column Chart evaluating multi-channel performance (Online vs. Store) across geographic boundaries (Marmara leading revenue generation).
2. **Sales Share by Membership Type:** An advanced Donut Chart highlighting loyalty segment contributions, showcasing that **Gold Members** drive the absolute majority of sales volume (59.2K).
3. **Sales Trend over Time:** A smoothed line graph with indicators mapping macro-level temporal revenue trends.
4. **Sales Volume by Payment Method:** A clustered horizontal bar chart pinpointing operational cash flow and customer payment preferences.
5. **Interactive Age Group Slicer:** Dynamic page-level filtering optimized by filtering out data anomalies (blank exclusions).

---

## Database Engineering & SQL Insights

The repository includes a complete SQL script (`crm_loyalty_analysis.sql`) built to query the infrastructure. Key structured queries include:

### Core Operations & VIP Segmentation
* **Macro Metric Tracking:** Aggregating total revenue (`SUM`) and user base capacity (`COUNT`).
* **Loyalty Contribution Analysis:** Joining customer profiles with financial metrics to rank performance by tiers.
* **High-Value (VIP) Filtering:** Using `HAVING SUM(amount) > 5000` to isolate and target high-yield customers.
* **Frequency Analysis:** Evaluating payment infrastructure utilization frequencies exceeding baseline transaction counts.

---

## Repository Structure

├── crm_customer_loyalty_data.xlsx              # Cleaned Source Dataset (Customers & Transactions)
├── crm_loyalty_analysis.sql                    # Production SQL Script with English Documentation
├── crm_customer_loyalty_dashboard.pbix         # Interactive Power BI Dashboard File
└── crm_customer_loyalty_dashboard_screenshot.png # High-Resolution Dashboard Preview Image
