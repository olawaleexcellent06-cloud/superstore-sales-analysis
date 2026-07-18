SELECT * FROM superstore.`sample - superstore`;


select*
from superstore.`sample - superstore`
where sales > 1000;

select `Row id`, `order id`, `Category`
from superstore.`sample - superstore`
where category like 't%';


SELECT `Row ID`, `order id`, `order date`, `ship date`, `Customer ID`, `customer name`, `profit`
FROM superstore.`sample - superstore`
ORDER BY Profit DESC
LIMIT 10;

SELECT 
    Category,
    SUM(Sales) as TotalSales
FROM superstore.`sample - superstore`
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT 
    Region,
    AVG(Profit) as Avg_Profit
FROM superstore.`sample - superstore`
GROUP BY Region
ORDER BY Avg_Profit DESC;

SELECT 
    `Sub-Category`,
    SUM(Sales) as Total_Sales,
    SUM(Profit) as Total_Profit
FROM superstore.`sample - superstore`
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT 
    `Ship Mode`,
    COUNT(*) as Number_Of_Orders
FROM superstore.`sample - superstore`
GROUP BY `Ship Mode`;


select `product id`, `Product name`, `Category`, Sales
from superstore.`sample - superstore`
where profit > 1000
order by `product id`
limit 10;

SELECT 
    `Customer Name`,
    SUM(Profit) as TotalProfit
FROM superstore.`sample - superstore`
GROUP BY `Customer Name`
ORDER BY TotalProfit DESC
LIMIT 10;