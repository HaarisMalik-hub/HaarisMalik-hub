
<!---
HaarisMalik-hub/HaarisMalik-hub is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->


# 🛍 Superstore Sales Analysis with SQL

This project explores a fictional Superstore dataset using SQL (SQLite) to extract business insights and help guide decision-making. As part of my data analytics learning journey, this project showcases my ability to write analytical SQL queries, find patterns in data, and communicate findings clearly.

---

##  Objective

Analyze Superstore sales data to answer key business questions:
- Which regions and product categories are most profitable?
- What products consistently lose money?
- Which customer segments generate the most profit?

---

## 🛠 Tools & Skills Used

- **SQL (SQLite)**
- **DB Browser for SQLite**
- Data Cleaning
- Aggregation, Grouping, Sorting
- Business Insight Generation

---

##  Key Insights

✅ **Top Performing Region:** West  
✅ **Most Profitable Category:** Technology  
✅ **Negative Profit Products:** Identified several products that consistently lose money  
✅ **Segment Analysis:** Corporate customers drive the most profit

---

##  SQL Queries

Here are some examples of queries used in this project:

```sql
-- Total Sales by Region
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Products by Sales
SELECT "Product Name", ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- Products with Negative Profit
SELECT "Product Name", ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY "Product Name"
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 10;
























