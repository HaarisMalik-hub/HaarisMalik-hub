-- Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 5 Products by Profit
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;

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
