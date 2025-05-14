# 🛍️ Superstore Sales Analysis with SQL

This project explores a fictional Superstore dataset using SQL (SQLite) to extract business insights and help guide decision-making. As part of my data analytics learning journey, this project showcases my ability to write analytical SQL queries, find patterns in data, and communicate findings clearly.

---

## 📌 Objective

Analyze Superstore sales data to answer key business questions:
- Which regions and product categories are most profitable?
- What products consistently lose money?
- Which customer segments generate the most profit?

---

## 🛠️ Tools & Skills Used

- **SQL (SQLite)**
- **DB Browser for SQLite**
- Data Cleaning
- Aggregation, Grouping, Sorting
- Business Insight Generation

---

## 📊 Key Insights

✅ **Top Performing Region:** West  
✅ **Most Profitable Category:** Technology  
✅ **Negative Profit Products:** Identified several products that consistently lose money  
✅ **Segment Analysis:** Corporate customers drive the most profit

---

## 📂 SQL Queries

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

📥 Dataset
Dataset used: [Sample Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) (Kaggle)


👤 About Me
I’m Haaris Malik, an aspiring Data Analyst with hands-on experience in SQL, Excel, and data storytelling. I’ve completed the Google Data Analytics Certificate and am currently building my portfolio to land an entry-level analyst role.

Check out more of my work on my LinkedIn here: www.linkedin.com/in/haaris-malik-2bb50b215

