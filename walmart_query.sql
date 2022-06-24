--Which year had the highest sales?
SELECT EXTRACT(YEAR FROM date) AS YEAR,
    sum(weekly_sales)
    FROM walmart_store_sales
    GROUP BY YEAR
    ORDER BY sum--the year 2011 had the highest number of sales

--How was the weather during the year of highest sales?

SELECT EXTRACT(YEAR FROM date) AS YEAR,
    avg(temperature)
    FROM walmart_store_sales
    GROUP BY YEAR --this query gets the average temperature in each year,with focus on the year with highest sales(2011),i was able to get the average temp of the year as 58.79853 which according to research is a relatively cool weather
    avg(temperature)
    FROM walmart_store_sales
    GROUP BY YEAR --this query was used to get the average temperature for each year with focus on the year which had the highest sales being 2012,the average temperature for the year  63.362403 which is relatively warm/cool according to City-Data Forum weather classification. 
    
--Conclude whether the weather has an essential impact on sales.
SELECT date,temperature,weekly_sales
    FROM walmart_store_sales
    ORDER BY date DESC,temperature --from the data given,there is hardly any correlation between weather and the weekly sales as average sales between ranges (40-49,50-59,60-69) have no trend.

--Do the sales always rise near the holiday season for all the years?
SELECT avg(weekly_sales),
    holiday_flag 
    FROM walmart_store_sales
GROUP BY holiday_flag --the average sales for holiday days is greater than that of none holiday sales,this shows that on average,sales always rise near the holiday seasons and sort of overlapses into holiday days thereby leading to an increase in avergae sales.

