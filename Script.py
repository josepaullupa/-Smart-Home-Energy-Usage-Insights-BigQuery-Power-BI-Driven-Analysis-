import pandas as pd

# Basic CSV import
df = pd.read_csv("T:\GitHub\Financial report\Energy_Consumption\data\household_power.csv")

# Agar timestamp column hai to use datetime me convert karo:

df = pd.read_csv("T:\GitHub\Financial report\Energy_Consumption\data\household_power.csv", parse_dates=["date"], index_col="date")

# Agar timestamp ko index banana ho:


print(df.head())   # first 5 rows check karne ke liye
print(df.info())   # dataset ka summary check


# Resample to hourly mean
df_hourly = df.resample('H').mean()

print(df_hourly.head())


df_hourly['hour'] = df_hourly.index.hour
df_hourly['dayofweek'] = df_hourly.index.dayofweek
df_hourly['month'] = df_hourly.index.month


import matplotlib.pyplot as plt

# Total consumption trend (Appliances + lights)
df_hourly['total_consumption'] = df_hourly['Appliances'] + df_hourly['lights']
df_hourly['total_consumption'].plot(figsize=(12,5), title="Hourly Energy Consumption")
plt.show()

# Average consumption by hour of day
df_hourly.groupby('hour')['total_consumption'].mean().plot(kind='bar', title="Avg Consumption by Hour")
plt.show()

# Temperature vs Consumption
plt.scatter(df_hourly['T_out'], df_hourly['total_consumption'], alpha=0.5)
plt.xlabel("Outside Temperature (°C)")
plt.ylabel("Energy Consumption")
plt.title("Temperature vs Energy Consumption")
plt.show()


# Simple 24-hour moving average forecast
df_hourly['forecast'] = df_hourly['total_consumption'].shift(24).rolling(24).mean()

plt.figure(figsize=(12,5))
plt.plot(df_hourly['total_consumption'][-200:], label="Actual")
plt.plot(df_hourly['forecast'][-200:], label="Forecast")
plt.legend()
plt.show()

df_hourly.to_csv("energy_hourly.csv")
