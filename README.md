# KMS-Inventory-SQL-Analysis
A case study project analyzing sales, profit, and logistics for Kultra Mega Stores using SQL.
# 📦 Kultra Mega Stores Inventory & Sales Analysis

This SQL case study explores inventory, customer, and shipping data for Kultra Mega Stores (KMS) from 2009 to 2012. The goal was to extract actionable business insights for the Abuja division by analyzing sales trends, shipping cost efficiency, and customer profitability.

---

## 🏢 Company Background

Kultra Mega Stores (KMS) is a Lagos-based retailer of office supplies and furniture. The company serves individual consumers, small businesses, and large corporate clients across Nigeria. This project focuses on supporting the Abuja division’s performance by uncovering insights from historical order data.

---

## 🧰 Tools Used

- **SQL Server Management Studio (SSMS)** – For querying and analysis  
- **Microsoft Excel** – For initial inspection and structure validation  
- **Power BI (Power Query)** – For data structure and type confirmation  
- **GitHub** – For documentation and sharing  

---

## 🧹 Data Cleaning Summary

- Loaded raw `.csv` file into SQL Server  
- Fixed import error by changing `Unit_Price` column from `FLOAT` to `DECIMAL(10,2)`  
- Verified that no columns had null or missing values  
- Used `FORMAT()` function in SQL to enhance numeric readability with commas and 2 decimal places

---

## 🧠 Business Questions Answered

1. **Which product category had the highest sales?**  
   → **Technology** with ₦5,984,248.18

2. **Top 3 and Bottom 3 regions by sales?**  
   → Top: Ontario, West, Prairies  
   → Bottom: Quebec, Yukon, Territories

3. **Total appliance sales in Ontario?**  
   → ₦202,346.84

4. **How to increase revenue from bottom 10 customers?**  
   → Target small business customers in Quebec with promotions and engagement campaigns.

5. **Shipping method with highest cost?**  
   → Delivery Truck – ₦51,144.54

6. **Most valuable customers and what they buy?**  
   → Dennis Kane (Small Business) and Emily Phan (Consumer) spent most on furniture and technology.

7. **Top small business customer by sales?**  
   → Dennis Kane – ₦75,967.59

8. **Corporate customer with most orders (2009–2012)?**  
   → Adam Hart – 27 orders

9. **Most profitable consumer customer?**  
   → Emily Phan – ₦34,005.44

10. **Which customers returned items and what segment?**  
   → *📊 Insight:
The customers with the highest number of returns were:

Darren Budd (Consumer) – 9 returns

Erin Creighton (Corporate) – 9 returns

Olvera Toch (Home Office) – 8 returns

Segments with the most frequent returns include:

Small Business

Corporate

Home Office

🔍 This insight may indicate potential issues with product satisfaction, service delivery, or segment-specific challenges that deserve further analysis or process review.

*

11. **Is shipping cost aligned with order priority?**  
   → No. Low-priority orders often used Express Air. KMS should re-align shipping strategy to save costs.

---

## 📈 Recommendations

- Introduce return-tracking in future datasets  
- Use Express Air only for Critical/High priority orders  
- Offer loyalty perks to top-performing customers  
- Promote bundles to low-spending Small Business customers in low-performing regions

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `KMS_SQL_Case_Study.csv` | Raw dataset |
| `SQL_Queries.sql`) | All queries used |
| `Insights_Summary.pdf` | Written summary of findings |
| `KMS_Presentation_Slides.pptx` | Visual PowerPoint report |





![sqlq01](https://github.com/user-attachments/assets/162875e3-2cd8-44ee-966d-ea060c6adff8)
![sqlq02](https://github.com/user-attachments/assets/1cdb2653-0a5f-41b5-9f72-4e5c12594e3a)
![sqlq04](https://github.com/user-attachments/assets/fd68df55-4f4c-47d3-ae6f-bba0782f574e)
![sqlq03](https://github.com/user-attachments/assets/9ef38a5f-cd12-49f6-ab76-93846889bf64)
![sql005](https://github.com/user-attachments/assets/dcf3d0ed-f797-4e3b-8a53-252343eb0c4d)
---
![sqldsa01](https://github.com/user-attachments/assets/3f7a86a4-5e76-4093-b2bc-6eddb83eb712)
![sqldsa02](https://github.com/user-attachments/assets/247ebec7-422f-4c5c-bdfb-fbaf4434479c)
![sqldsa03](https://github.com/user-attachments/assets/c5f9bbd5-de17-41c1-83f2-a0fdb6a7fef0)
![sqldsa04](https://github.com/user-attachments/assets/d298233f-b8d7-4edb-b1c8-b7c4b4570f81)
![sql005](https://github.com/user-attachments/assets/246968db-4052-41a3-ac59-37b94fbd9a53)
---
<pre> SELECT 
  [Product_Category],
  FORMAT(SUM(Sales), 'N2') AS Total_Sales
FROM [KMS DSA].[dbo].[KMS_SQL_O1]
GROUP BY [Product_Category]
ORDER BY SUM(Sales) DESC;
</pre>
## 👩‍💻 Author

**Patience Richard Bassey**  
Business Intelligence Analyst & Data Enthusiast  
📍 Lagos, Nigeria  
📧 patience.richard73@gmail.com 
📎 [www.linkedin.com/in/pbassey1000]

---


