use POWERBI


SELECT * FROM dbo.Data_2018
UNION 
SELECT * FROM dbo.Data_2019
UNION 
SELECT * FROM dbo.Data_2020

--OR

WITH hotels AS (
SELECT * FROM dbo.Data_2018
UNION 
SELECT * FROM dbo.Data_2019
UNION 
SELECT * FROM dbo.Data_2020
) SELECT *FROM hotels;

-- we get the same data

-- we create a new columns 
WITH hotels AS (
SELECT * FROM dbo.Data_2018
UNION 
SELECT * FROM dbo.Data_2019
UNION 
SELECT * FROM dbo.Data_2020
) SELECT arrival_date_year,hotel,
	SUM((stays_in_week_nights + stays_in_weekend_nights)* adr) as revenue
		FROM hotels
		GROUP BY arrival_date_year,hotel;



-- join table

WITH hotels AS (
    SELECT * FROM dbo.Data_2018
    UNION 
    SELECT * FROM dbo.Data_2019
    UNION 
    SELECT * FROM dbo.Data_2020
)
SELECT * FROM hotels
left join dbo.market_segment
on hotels.market_segment  = market_segment.market_segment
left join dbo.Meal_cost
on Meal_cost.meal = hotels.meal










SELECT @@SERVERNAME;
