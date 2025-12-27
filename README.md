# 📊 Field Technician Performance Optimization & Benchmarking 
**Apex Field Services (Fictional Company)**

---

## Executive Summary

This project analyzes technician performance for **Apex Field Services**, a fictional telecommunications contracting company operating across multiple cities and service types. The dataset used is **synthetically generated to mirror real-world field operations**, including technician variability, repeat visits, scheduling challenges, and service outcomes commonly seen in the industry.

The dashboard highlights three core operational KPIs—**Job Success Rate (82%)**, **Repeat Visit Rate (35%)**, and **On-Time Arrival Rate (53%)**—revealing that while overall job completion is strong, operational inefficiencies remain. Repeat visits and inconsistent punctuality represent meaningful cost drivers and customer experience risks. The analysis focuses on identifying performance trade-offs at the technician level to inform targeted operational improvements.

---
## 🛠️ Technical Stack & Project Architecture

This project demonstrates an end-to-end analytics workflow, from dataset creation and preparation to insight-driven visualization designed for operational decision-making.

### **1. Data Preparation & Validation**
* **Tools:** Python (Pandas, NumPy)
* **Logic:** [View Cleaning Script (Google Colab)](https://github.com/Damian-Lee25/Tech-Performance.io/blob/master/notebooks/cleaning.ipynb)
* **Key Action:** Cleaned and validated a synthetic field operations dataset by standardizing naming conventions, resolving null and conditional fields, and ensuring KPI calculations accurately reflected real-world technician performance scenarios.

### **2. Analytics Warehouse & Querying**
* **Tools:** Google BigQuery (SQL)
* **Logic:** [View SQL Queries](https://github.com/Damian-Lee25/Tech-Performance.io/tree/master/sql)
* **Key Action:** Loaded the dataset into BigQuery to enable scalable querying, metric validation, and exploratory analysis of technician performance, repeat visits, and on-time arrivals.

### **3. Business Intelligence & Visualization**
* **Tools:** Power BI
* **Logic:** [View Dashboard Screenshots & Insights](https://app.powerbi.com/groups/me/reports/c8c7ce09-8c5d-4d4f-8845-9f1dc1050d45/488182c1ea11e0252342?experience=power-bi)
* **Key Action:** Built an executive-facing dashboard focused on operational KPIs, technician performance trade-offs, and repeat visit cost drivers—designed to support performance management and process improvement decisions.

---

## Business Problem

Field service organizations often struggle to balance productivity, quality, and customer satisfaction. Leadership teams typically lack clear visibility into:  

- Which technicians consistently drive repeat visits
- Where scheduling failures impact on-time performance
- How job type mix influences operational outcomes
- Why averages hide meaningful performance gaps

Without technician-level insight, improvement efforts risk being broad and ineffective. This project addresses that gap by translating raw job data into actionable performance signals.

---

## Dashboard Overview

The primary dashboard provides a high-level operational snapshot, combining KPI performance with service volume context and technician rankings.

![Primary Performance Dashboard](https://res.cloudinary.com/ducikqiyg/image/upload/v1766810886/dashboard_oxt2c6.png)

**What this view reveals:**
- Overall performance is anchored by a strong job success rate, but offset by elevated repeat visits
- Maintenance jobs account for the majority of service volume across cities, amplifying the cost impact of inefficiencies
- Technician ranking exposes meaningful differences in success, repeat visits, and punctuality that would otherwise be masked by averages

To ensure faster job completion does not come at the expense of quality, technician job durations were benchmarked against job-type averages.

![Job Type Benchmarks](https://res.cloudinary.com/ducikqiyg/image/upload/v1766628137/Jobtypebenchmarks_qzf55n.png)

This view separates efficient technicians from those exceeding expected job durations, enabling targeted coaching, scheduling optimization, and more accurate labor forecasting.

---

## Methodology

- Designed a **synthetic dataset** modeled after real telecommunications field service workflows
- Created standardized KPIs to measure:
  - Job Success Rate
  - Repeat Visit Rate
  - On-Time Arrival Rate
- Built Power BI visuals aligned to operational decision-making:
  - KPI summary cards
  - Repeat Visit Root Cause Breakdown
  - Technician Ranking Table
  - Performance trade-off scatter plot
- Applied reference benchmarks to highlight high- and low-performing segments

The focus throughout was on **business relevance**.

---

## Technician Performance Trade-Off Analysis

To move beyond averages, a scatter plot was used to evaluate the relationship between **Job Success Rate** and **Repeat Visit Rate** at the technician level.

![Technician Performance Trade-Off Scatter Plot](https://res.cloudinary.com/ducikqiyg/image/upload/v1766628278/scatterplotvisuals_cyyxfv.png)

**Key insights from this view:**
- High success rates do not always correlate with low repeat visits
- Some technicians complete jobs successfully but still generate costly rework
- Others maintain lower repeat visits but struggle with punctuality
- Clear performance quadrants help identify coaching opportunities and best-practice candidates

This visualization supports targeted interventions rather than one-size-fits-all improvement strategies.

---

## Skills Demonstrated

- Power BI (data modeling,dashboard design)
- KPI definition and operational metrics
- Performance trade-off analysis
- Data storytelling for non-technical stakeholders
- Business-oriented visualization design
- Synthetic data generation for portfolio projects

---

## Results & Business Recommendations

**To evaluate whether technician performance is improving or degrading over time, week-over-week success rate trends were analyzed at the technician level:**
![WoW Job Success Rate](https://res.cloudinary.com/ducikqiyg/image/upload/v1766628278/WoWlinechart_cxysom.png)
**This trend view highlights consistency, volatility, and sustained improvement across technicians—helping operations leaders identify who is stabilizing performance versus who requires intervention.**

### Results
- **82% Job Success Rate** indicates solid baseline execution
- **35% Repeat Visit Rate** represents a major operational cost driver
- **53% On-Time Arrival Rate** suggests scheduling and dispatch inefficiencies
- Maintenance-heavy workloads magnify the impact of technician performance variability

### Recommendations
- Prioritize **repeat visit reduction** over marginal success-rate gains
- Identify top-performing technicians and standardize their workflows
- Adjust scheduling buffers for maintenance-heavy routes
- Introduce technician-level benchmarks instead of global averages
- Use performance quadrants to guide coaching and training investments

---

## Next Steps

If extended into a production environment, this analysis could be expanded by:
- Adding job duration and SLA adherence metrics
- Segmenting repeat visits by root cause category
- Introducing technician scorecards
- Building predictive flags for high-risk repeat visits
- Integrating customer satisfaction data

---

## Notes

This project uses a **fictional company and a synthetic dataset** designed to reflect realistic field service operations. The intent is to demonstrate applied analytics, operational thinking, and business-focused storytelling in a portfolio-ready format.
