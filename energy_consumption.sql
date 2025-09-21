-- Daily Average Consumption
SELECT 
  DATE(date) AS day,
  AVG(Appliances + lights) AS avg_consumption
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY day
ORDER BY day;

-- Peak Hours (Across Dataset)
SELECT 
  TIME(date) AS Hours,
  Round(Max(Appliances + lights),2) AS Peak_consumption
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY Hours
ORDER BY Peak_consumption;

SELECT 
  EXTRACT(HOUR FROM date) AS hour,
  AVG(Appliances + lights) AS avg_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY hour
ORDER BY avg_usage DESC;

-- Weekday vs Weekend Usage
Select 
CASE
When EXTRACT(DAYOFWEEK FROM date) IN (1,7) THEN 'WEEKEND'
ELSE 'WEEKDAY'
END AS day_type,
AVG(Appliances + lights) AS avg_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY day_type;

-- Temperature Impact
SELECT
ROUND(T_out) as Temperature,
AVG(Appliances + lights) as avg_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
Group by Temperature
Order by Temperature;

-- Top 10 Days by Total Usage
SELECT 
  DATE(date) AS DAY,
  ROUND(SUM(Appliances + lights),2) AS total_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY DAY
ORDER BY total_usage DESC
LIMIT 10;

-- Monthly Aggregation
SELECT 
  FORMAT_DATE("%Y-%m", DATE(date)) AS month,
  AVG(Appliances + lights) AS avg_monthly_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY month
ORDER BY month;

-- Hourly Heatmap Data (Hour × Weekday)
SELECT
  EXTRACT(DAYOFWEEK FROM date) AS weekday,
  EXTRACT(HOUR FROM date) AS hour,
  AVG(Appliances + lights) AS avg_usage
FROM `ninth-osprey-472207-h3.energy_consumption.appliance_energy`
GROUP BY weekday, hour
ORDER BY weekday, hour;


