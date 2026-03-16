CREATE DATABASE Mini_Project
USE Mini_Project`sample - superstore`

/*Total revenue*/
SELECT SUM(Sales) AS Total_Revenue FROM `sample - superstore`

/*Product performance*/
SELECT Category , SUM(Sales) AS Revenue FROM `sample - superstore`
GROUP BY Category 
ORDER BY Revenue DESC

/*Region wise Revenue*/
SELECT Region , SUM(Sales) AS Region_wise_Revenue FROM `sample - superstore`
GROUP BY Region 
ORDER BY Region_wise_Revenue

/*Month wise Sales*/
SELECT
   MONTH(`Order Date`) AS Months,
   SUM(Sales) AS Month_wise_Sales
FROM `sample - superstore`
GROUP BY Months
ORDER BY Month_wise_Sales

SET SQL_SAFE_UPDATES=0
UPDATE `sample - superstore`
SET `Order Date`=STR_TO_DATE(`Order Date`,'%m/%d/%Y')