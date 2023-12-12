-- Number of sales made in each time of the day per week

select *
from [WalmartSalesData.csv]

select Time_of_date,
COUNT(*) AS total_sales
from [WalmartSalesData.csv]
WHERE day_name = 'Monday'
Group by time_of_date
order by total_sales desc

--Which customer types brings in most revenue

select Customer_type,
cast(sum(total) as decimal (10, 2)) as total_revenue
from [WalmartSalesData.csv]
group by Customer_type
order by total_revenue desc

--Which City has the largest tax percent/ VAT?

select City,
CAST(AVG(Tax_5) AS decimal (10, 2)) AS VAT
from [WalmartSalesData.csv]
GROUP BY City
order by VAT desc

-- Which customer type pays the most VAT?

select Customer_type,
cast(AVG(Tax_5) as decimal (10, 2)) as VAT
from [WalmartSalesData.csv]
GROUP BY Customer_type
order by VAT desc

-- How many unique customer types does the data have?

select 
distinct Customer_type
from [WalmartSalesData.csv]

--How many unique payment methods does the data have?

select 
distinct Payment
from [WalmartSalesData.csv]

-- what is the most common customer type?

select COUNT(customer_type) AS number_of_customers, Customer_type 
FROM [WalmartSalesData.csv]
GROUP BY Customer_type


--What is the gender of most the customers?


select gender,
count(*) as gender_cnt
from [WalmartSalesData.csv]
group by Gender
order by gender_cnt

--What is the gender distribution per branch?

select gender,
count(*) as gender_cnt
from [WalmartSalesData.csv]
where Branch = 'a'
group by Gender
order by gender_cnt desc

-- what time of the day do customers give most rating?

select Time_of_date,
cast(avg(rating) as decimal (10, 2)) as avg_rating
from [WalmartSalesData.csv]
group by time_of_date
order by avg_rating desc

--which time of the day do customers give most ratings per branch

select Time_of_date,
cast(avg(rating) as decimal (10, 2)) as avg_rating
from [WalmartSalesData.csv]
where Branch = 'c'
group by time_of_date
order by avg_rating desc


--Which day of the week has the best avg rating?

select day_name,
cast(AVG(rating) as decimal (10, 2)) as rating_avg
from [WalmartSalesData.csv]
group by day_name
order by rating_avg desc

-- Which day of the week has the best average rating per branch?

select day_name,
cast(AVG(rating) as decimal (10, 2)) as rating_avg
from [WalmartSalesData.csv]
where Branch = 'b'
group by day_name
order by rating_avg desc
