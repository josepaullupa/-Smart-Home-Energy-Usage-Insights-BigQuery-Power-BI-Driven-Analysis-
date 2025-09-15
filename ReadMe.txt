# Smart Home Energy Consumption Analysis

##  Project Overview
This project analyzes the **Appliances Energy Prediction Dataset** from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/).  
The goal is to extract **actionable insights** and build **visual dashboards** to understand household energy consumption patterns.

Key focus areas:
- Identify **peak demand hours**
- Compare **Weekend vs Weekday usage**
- Analyze **weather impact on consumption**
- Build **Power BI dashboards** for storytelling
- Implement a **baseline time series forecast** (24-hour moving average)

---

##  Tools & Technologies
- **Python** (Pandas, Matplotlib)
- **Google BigQuery** (SQL analysis)
- **Power BI** (Dashboard & storytelling)
- **UCI Dataset** (Appliances Energy Prediction, 19735 records)

---

##  Project Structure
Energy_Consumption/
│-- data/
│ └── household_power.csv # Raw dataset
│-- notebooks/
│ └── EDA.ipynb # Jupyter notebook for analysis
│-- Script.py # Main Python script
│-- energy_hourly.csv # Processed dataset (hourly)
│-- requirements.txt # Project dependencies
│-- README.md # Project documentation

yaml
Copy code

---

##  Key Insights
- Evening peak observed between **6–8 PM**.
- **Weekend consumption > Weekday consumption**.
- **Temperature strongly influences usage** (higher consumption above 20°C).
- Simple baseline forecast shows predictable daily patterns.

---

## Dashboards
Interactive **Power BI dashboards** include:
- Daily & hourly energy consumption trends
- Weekend vs Weekday comparison
- Weather vs Usage scatter plot
- KPI cards (Min, Avg, Peak usage)

---

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/Energy_Consumption.git
   cd Energy_Consumption
Install dependencies:

bash
Copy code
pip install -r requirements.txt
Run the script:

bash
Copy code
python Script.py
Explore processed dataset:

energy_hourly.csv can be loaded into Power BI or BigQuery.

Future Work
Apply Prophet / LSTM models for advanced forecasting.

Deploy dashboards to Power BI Service.

Create an alert system for abnormal consumption patterns.

👤 Tanmay Sharma
Role: Data Analyst
Date:2025-09-15
LinkedIn: https://www.linkedin.com/in/tanmay-sharma-800599373/
Git hub: https://github.com/Tanu272004
Project Link Home_Energy



