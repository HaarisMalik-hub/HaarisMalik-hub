--  a) Total Sales by Region
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

--  b) Profit by Product Category
SELECT Category, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;

--  c) Top 10 Products by Sales
SELECT "Product Name", ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

--  d) Products with Negative Profit
SELECT "Product Name", ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY "Product Name"
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC
LIMIT 10;

--  e) Customer Segments with Highest Profit
SELECT Segment, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY Segment
ORDER BY Total_Profit DESC;
