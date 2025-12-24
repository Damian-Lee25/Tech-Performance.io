# 📊 Field Technician Performance Analysis  
**Apex Field Services (Fictional Company)**

---

## Executive Summary

This project analyzes technician performance for **Apex Field Services**, a fictional telecommunications contracting company operating across multiple cities and service types. The dataset used is **synthetically generated to mirror real-world field operations**, including technician variability, repeat visits, scheduling challenges, and service outcomes commonly seen in the industry.

The dashboard highlights three core operational KPIs—**Job Success Rate (82%)**, **Repeat Visit Rate (35%)**, and **On-Time Arrival Rate (53%)**—revealing that while overall job completion is strong, operational inefficiencies remain. Repeat visits and inconsistent punctuality represent meaningful cost drivers and customer experience risks. The analysis focuses on identifying performance trade-offs at the technician level to inform targeted operational improvements.

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

![Primary Performance Dashboard](visuals\primaryvisual.png)

**What this view reveals:**
- Overall performance is anchored by a strong job success rate, but offset by elevated repeat visits
- Maintenance jobs account for the majority of service volume across cities, amplifying the cost impact of inefficiencies
- Technician ranking exposes meaningful differences in success, repeat visits, and punctuality that would otherwise be masked by averages

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

![Technician Performance Trade-Off Scatter Plot](visuals\scatterplotvisuals.png)

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
