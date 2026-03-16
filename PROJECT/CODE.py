import pandas as pd
import matplotlib.pyplot as plt
import mysql.connector

conn = mysql.connector.connect(
    host="127.0.0.1",
    port=3306,
    user="root",
    password="9767067190@Pr",
    database="mini_project"
)

query = "SELECT * FROM `sample - superstore`"
df = pd.read_sql(query, conn)

# correct column name
df["Order Date"] = pd.to_datetime(df["Order Date"])

monthly = df.groupby(df["Order Date"].dt.month)["Sales"].sum()

monthly.plot(kind="line", marker="o")
plt.title("Monthly Revenue Trend")
plt.show()