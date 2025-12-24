CREATE OR REPLACE TABLE tech-performance-481222.tech_performance.performance_final AS
SELECT 
  tech_name,
  city,
  COUNT(*) AS total_jobs,
  SUM(CASE WHEN success = TRUE THEN 1 ELSE 0 END) AS successful_jobs,
  ROUND(SUM(CASE WHEN success = TRUE THEN 1 ELSE 0 END) / COUNT(*),3) AS success_rate,
  SUM(CASE WHEN repeat_visit = TRUE THEN 1 ELSE 0 END) AS repeat_visits,
  ROUND(SUM(CASE WHEN repeat_visit = TRUE THEN 1 ELSE 0 END) / COUNT(*),3) AS repeat_visit_rate,
  ROUND(AVG(duration_minutes),1) AS avg_job_duration_minutes,
  SUM(CASE WHEN DATETIME_DIFF(arrival_time_dt, scheduled_time_dt, MINUTE) <= 15 THEN 1 ELSE 0 END) AS on_time_jobs,
  ROUND(SUM(CASE WHEN DATETIME_DIFF(arrival_time_dt, scheduled_time_dt, MINUTE) <= 15 THEN 1 ELSE 0 END) / COUNT(*),2) AS on_time_arrival_rate,
  COUNTIF(arrival_time_dt > scheduled_time_dt) AS late_jobs,
  ROUND(COUNTIF(arrival_time_dt > scheduled_time_dt) / COUNT(*),2) AS pct_late_jobs,
  job_type,
  EXTRACT(YEAR FROM scheduled_time_dt) AS year,
  EXTRACT(WEEK FROM scheduled_time_dt) AS week,
  DATE(scheduled_date) AS job_day,
  CASE
    WHEN TIMESTAMP_DIFF(arrival_time_dt, scheduled_time_dt, MINUTE) < 0 THEN 'Early'
    WHEN TIMESTAMP_DIFF(arrival_time_dt, scheduled_time_dt, MINUTE) <= 15 THEN 'On Time'
    ELSE 'Late'
  END AS arrival_bucket

FROM `tech-performance-481222.tech_performance.tech_performance`
GROUP BY 
  tech_name,
  city,
  year,
  week,
  job_type,
  job_day,
  arrival_bucket;