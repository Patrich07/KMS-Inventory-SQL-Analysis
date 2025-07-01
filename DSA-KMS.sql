
/* Ques.1 Which product category had the highest sales?*/
SELECT 
  [Product_Category],
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [Product_Category]
ORDER BY SUM(Sales) DESC;

/*2. What are the Top 3 and Bottom 3 regions in terms of sales?*/
--Top 3 Regions--
SELECT TOP 3 
  Region,
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY Region
ORDER BY SUM(Sales) DESC;

--Bottom 3 Regions--

SELECT TOP 3 
  Region,
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS SQL O1]
GROUP BY Region
ORDER BY SUM(Sales) ASC;

/*3. What were the total sales of appliances in Ontario?*/
SELECT 
  FORMAT(SUM(Sales), 'N2') AS Total_Appliance_Sales_Ontario
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
WHERE Product_Sub_Category = 'Appliances'
  AND Province = 'Ontario';

  /* 4. Advise the management of KMS on what to do to increase the revenue from the bottom 
10 customers  */
SELECT TOP 10 
  [CustomerName],
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [CustomerName]
ORDER BY SUM(Sales) ASC;

SELECT TOP 10 
  [CustomerName],
  MAX([CustomerSegment]) AS Segment,
  MAX(Region) AS Region,
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [CustomerName]
ORDER BY SUM(Sales) ASC;

/* 5. KMS incurred the most shipping cost using which shipping method?*/
SELECT 
  [Ship_Mode],
  FORMAT(SUM([Shipping_Cost]), 'N2') AS Total_Shipping_Cost
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [Ship_Mode]
ORDER BY SUM([Shipping_Cost]) DESC;

/*6. Who are the most valuable customers, and what products or services do they typically 
purchase? */

SELECT TOP 10
  [CustomerName],
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [CustomerName]
ORDER BY SUM(Sales) DESC;


SELECT 
  [CustomerName],
  [Product_Name],
  FORMAT(SUM(Sales), 'N2') AS Total_Spent
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [CustomerName], [Product_Name]
ORDER BY SUM(Sales), Total_Spent DESC;

/*7. Which small business customer had the highest sales? */
SELECT TOP 1
  [CustomerName],
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
WHERE [CustomerSegment] = 'Small Business'
GROUP BY [CustomerName]
ORDER BY SUM(Sales) DESC;


/*8. Which Corporate Customer placed the most number of orders in 2009 – 2012? */
SELECT TOP 1
  [CustomerName],
  COUNT([OrderID]) AS Total_Orders
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
WHERE [CustomerSegment] = 'Corporate'
  AND [OrderDate] BETWEEN '2009-01-01' AND '2012-12-31'
GROUP BY [CustomerName]
ORDER BY COUNT([OrderID]) DESC;

/*9. Which consumer customer was the most profitable one?*/
SELECT TOP 1
  [CustomerName],
  FORMAT(SUM(Profit), 'N2') AS Total_Profit
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
WHERE [CustomerSegment] = 'Consumer'
GROUP BY [CustomerName]
ORDER BY SUM(Profit) DESC;

/*10. Which customer returned items, and what segment do they belong to? 

What to Do in This Case:
State Clearly in Your Report:

“The dataset does not include a return status column. Therefore, it is not possible to identify customers who returned items or their segments based on the provided data.”

Professional Suggestion to Stakeholders:

“To better track return behavior and analyze patterns (e.g., return rate by segment, region, or product), it's recommended that future datasets include a dedicated return status column (e.g., Is_Returned, Return Reason, or Return Date).”*/
  
  /*11. If the delivery truck is the most economical but the slowest shipping method and 
Express Air is the fastest but the most expensive one, do you think the company 
appropriately spent shipping costs based on the Order Priority? Explain your answer 
*/

SELECT 
  [Order_Priority],
  [Ship_Mode],
  COUNT([OrderID]) AS Order_Count,
  FORMAT(SUM([Shipping_Cost]), 'N2') AS Total_Shipping_Cost
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [Order_Priority], [Ship_Mode]
ORDER BY [Order_Priority], [Ship_Mode];










  
