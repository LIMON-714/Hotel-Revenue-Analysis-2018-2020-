## `hotel-revenue-analysis`

This repository contains a data analysis project that calculates hotel revenues for the years 2018, 2019, and 2020. The project uses the ETL process to manage data and Power BI for visualization, providing key insights into revenue trends, average discounts, and more.


## Project Overview

The primary objective of this project is to:
- Calculate **total revenue** for hotels from 2018 to 2020.
- Analyze trends in revenue across the years.
- Provide insights into revenue by **country**, **hotel category**, and **nights stayed**.
- Visualize the **average discount percentage** offered during these years.

---

## Features

1. **ETL Process**: 
   - Extract data from excel files (`Data_2018`, `Data_2019`, `Data_2020`, `market_segment`, `meal_cost`).
   - Transform the data into a unified format using SQL.
   - Load the data into a relational database for analysis.

2. **SQL Query**: 
   Combine and enrich data from multiple sources for comprehensive analysis:
   ```sql
   WITH hotels AS (
       SELECT * FROM dbo.Data_2018
       UNION 
       SELECT * FROM dbo.Data_2019
       UNION 
       SELECT * FROM dbo.Data_2020
   )
   SELECT * FROM hotels
   LEFT JOIN dbo.market_segment
   ON hotels.market_segment = market_segment.market_segment
   LEFT JOIN dbo.Meal_cost
   ON Meal_cost.meal = hotels.meal# Hotel-Revenue-Analysis-2018-2020-
   
## Power BI Visualization
 -Total revenue over 2018, 2019, and 2020
 -Revenue trends and average discount percentage.
 -Revenue by country and hotel category.
 -Revenue based on the total nights stayed.

 ![image](https://github.com/user-attachments/assets/219a40cb-72ab-4fca-8d5b-cabb3dc062b9)

 ![image](https://github.com/user-attachments/assets/8a540c11-b4bf-48d1-b4a9-86ec064eef2e)

