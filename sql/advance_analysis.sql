--1. Trend Analysis 
--   This query calculates the Week-over-Week (WoW) change in success rates. 

SELECT 
  tech_name,
  week,
  success_rate,
  -- Get the success rate from the previous week for the same tech
  LAG(success_rate) OVER (PARTITION BY tech_name ORDER BY week) AS prev_week_rate,
  -- Calculate the percentage point difference
  ROUND(success_rate - LAG(success_rate) OVER (PARTITION BY tech_name ORDER BY week), 3) AS wow_diff
FROM `tech-performance-481222.tech_performance.performance_final`
ORDER BY tech_name, week;

-- 2. Competitive Ranking (Using DENSE_RANK)
-- This identifies the "Top Performer" in each city based on their on_time_arrival_rate.
WITH CityRankings AS (
  SELECT 
    city,
    tech_name,
    on_time_arrival_rate,
    -- Rank techs within each city; #1 is the highest arrival rate
    DENSE_RANK() OVER (PARTITION BY city ORDER BY on_time_arrival_rate DESC) AS rank_in_city
  FROM `tech-performance-481222.tech_performance.performance_final`
)
SELECT * FROM CityRankings 
WHERE rank_in_city = 1; -- Show only the best in each city

-- 3. Efficiency Benchmarking 
-- This compares an individual tech's avg_job_duration_minutes against the overall average for that specific job type.
WITH GlobalMetrics AS (
  SELECT 
    tech_name,
    job_type,
    avg_job_duration_minutes,
    -- Calculate the average duration for this job_type across ALL techs
    ROUND(AVG(avg_job_duration_minutes) OVER (PARTITION BY job_type),0) AS category_avg
  FROM `tech-performance-481222.tech_performance.performance_final`
)
SELECT 
  *,
  -- Flag techs who are slower than the category average
  CASE 
    WHEN avg_job_duration_minutes > category_avg THEN 'Below Average Speed'
    ELSE 'Efficient'
  END AS efficiency_status
FROM GlobalMetrics;