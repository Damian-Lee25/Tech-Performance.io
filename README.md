# 📊 Field Technician Performance Optimization & Benchmarking 
**Apex Field Services (Fictional Company)**

---

## Executive Summary

This project analyzes technician performance for **Apex Field Services**, a fictional telecommunications contracting company. The dataset is **synthetically generated to mirror real-world field operations**, including technician variability, repeat visits, and scheduling challenges.

The analysis identifies critical operational gaps: while the **Job Success Rate is 82%**, the **Repeat Visit Rate (35%)** and **On-Time Arrival Rate (53%)** represent significant cost drivers. This project moves beyond high-level averages to provide technician-level performance trade-offs for targeted operational improvement.

### ⚡ Technical Quick-Look
* **SQL Mastery:** Utilized `LAG()`, `RANK()`, and `CTEs` in BigQuery to identify performance outliers and WoW trends.
* **Defensive Engineering:** Developed a Python-based **Audit Layer** to detect and resolve logical anomalies (e.g., success vs. high rework).
* **Cloud-Native Pipeline:** End-to-end workflow integrated across **Google Colab**, **Google BigQuery**, and **Power BI**.
* **Production Standards:** Fully version-controlled environment with a root-level `requirements.txt`.

---

## 🛠️ Technical Stack & Project Architecture

This project demonstrates an end-to-end analytics workflow, from data governance to insight-driven visualization.

### **🛡️ 1. Defensive Engineering: Data Auditing & Prep**
* **Tools:** Python (Pandas, NumPy)
* **Logic:** [View Cleaning & Audit Script (Google Colab)](https://github.com/Damian-Lee25/Tech-Performance.io/blob/master/notebooks/cleaning.ipynb)
* **Strategic Action:** Beyond standard cleaning, I engineered a **Data Quality Audit**. 
    * *Why?* In field services, data entry often results in "Successful" jobs that actually required excessive rework. My script flags these logical gaps to protect reporting integrity.

### **📈 2. Advanced Analytics: SQL Transformations**
* **Tools:** Google BigQuery (SQL)
* **Logic:** [View SQL Queries](https://github.com/Damian-Lee25/Tech-Performance.io/tree/master/sql)
* **Strategic Action:** Loaded data into BigQuery to perform scalable trend analysis.
    * *Why SQL Window Functions?* I utilized `RANK()` and `AVG() OVER()` to normalize technician performance regardless of total job volume, ensuring fair and accurate benchmarking.

### **🎯 3. Executive Insights: BI & Visualization**
* **Tools:** Power BI
* **Logic:** [View Dashboard & Mapping Logic](https://app.powerbi.com/groups/me/reports/c8c7ce09-8c5d-4d4f-8845-9f1dc1050d45/488182c1ea11e0252342?experience=power-bi)
* **Strategic Action:** Built an executive-facing dashboard focused on **Operational ROI**. 
    * *Why?* Transitioned from descriptive charts to "Trade-Off Analysis" (Success vs. Quality), allowing leadership to identify *who* to coach and *where* to adjust scheduling buffers.

---

## Business Problem

Field service organizations often struggle to balance productivity and quality. Leadership typically lacks visibility into:  

- Which technicians consistently drive repeat visits (rework costs)
- Where scheduling failures impact punctuality
- Why global averages hide critical performance gaps at the city/tech level

This project addresses these gaps by translating raw job data into actionable performance signals.

---

## Dashboard Overview

The primary dashboard provides a high-level operational snapshot, combining KPI performance with service volume context and technician rankings.

![Primary Performance Dashboard](https://res.cloudinary.com/ducikqiyg/image/upload/v1766810886/dashboard_oxt2c6.png)

### 📊 Visualization Logic & Data Mapping

All KPIs are calculated on top of a pre-aggregated BigQuery fact table to ensure correct filter behavior and avoid double-aggregation.

**Success Rate**
- Source: `successful_jobs`, `total_jobs`
- Logic: `Sum(successful_jobs) ÷ Sum(total_jobs)`
- Visual: KPI Card (Threshold: Green > 80%)

**On-Time Arrival**
- Source: `on_time_jobs`, `total_jobs`
- Logic: `Sum(on_time_jobs) ÷ Sum(total_jobs)`
- Visual: Donut Chart showing punctuality distribution

**Technician Benchmarking**
- Axis: `tech_name` | Metric: Weighted Average Job Duration (Minutes)
- Benchmark: **Median Constant Line** to identify technicians exceeding duration norms.

---

## Technician Performance Trade-Off Analysis

A scatter plot evaluates the relationship between **Job Success Rate** and **Repeat Visit Rate** to move beyond one-dimensional metrics.

![Technician Performance Trade-Off Scatter Plot](https://res.cloudinary.com/ducikqiyg/image/upload/v1766628278/scatterplotvisuals_cyyxfv.png)

**Key Strategy Insights:**
- **The Rework Gap:** High success rates do not always correlate with low repeat visits; identifying "Fast but Messy" technicians is key to reducing operational costs.
- **Coaching Quadrants:** Performance quadrants allow for targeted training interventions rather than broad, ineffective policy changes.

---

## Results & Business Recommendations

**Performance Trends:**
![WoW Job Success Rate](https://res.cloudinary.com/ducikqiyg/image/upload/v1766628278/WoWlinechart_cxysom.png)

### Results
- **82% Job Success Rate:** Strong baseline, but masking rework costs.
- **35% Repeat Visit Rate:** Primary driver of labor and fuel waste.
- **53% On-Time Arrival Rate:** Highlights a need for better scheduling buffers in maintenance-heavy regions.

### Recommendations
- **Prioritize Quality over Speed:** Focus on reducing the 35% repeat visit rate to drive immediate ROI.
- **Standardize Best Practices:** Use top-tier technician data to create a standard "Success Blueprint" for the fleet.
- **Operational Buffers:** Adjust scheduling for maintenance-heavy routes to improve the 53% punctuality rate.

---

## Skills Demonstrated

- **Cloud Data Warehousing:** Google BigQuery
- **Defensive Programming:** Python Data Quality Auditing
- **Advanced SQL:** CTEs, Window Functions (`LAG`, `RANK`, `PARTITION BY`)
- **Business Intelligence:** Power BI (Data Modeling & Logic Mapping)
- **Synthetic Data Engineering:** Creating realistic business scenarios

---

## Notes

This project uses a **fictional company and a synthetic dataset** to demonstrate applied analytics, operational thinking, and business-focused storytelling.