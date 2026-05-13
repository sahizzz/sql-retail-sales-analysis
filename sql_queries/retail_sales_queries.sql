SELECT * 
FROM retail_sales
LIMIT 10;

SELECT COUNT(*) AS Total_Records
FROM retail_sales;

SELECT SUM(Sales) AS Total_Sales
FROM retail_sales;

SELECT SUM(Profit) AS Total_Profit
FROM retail_sales;

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Region,
       SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT State,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT AVG(Discount) AS Average_Discount
FROM retail_sales;

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Category
HAVING Total_Profit < 0;