-- SEE WHAT DATA WE MUST WORK

select *
from SALES;

-- Show, for each city and month
-- sale amount
-- cumulative sale amount for increasing months, separately for each city
select city, month, AMOUNT,
sum(Amount) OVER (
PARTITION BY CITY
ORDER BY MONTH --otherwise it could happen that you are summing month 8 and month 11. Never trust DB manager
ROWS UNBOUNDED PRECEDING -- in this example, it can be avoided but it is always better to add
)
from SALES;

--Show, for each city and month
-- sale amount
-- total sale amount on the whole time period for the current city
select city, month, AMOUNT,
sum(Amount) OVER (
PARTITION BY CITY
)
from SALES;

--Show, for each city and month
--- sale amount
--? ratio between current row amount and grand total
--? ratio between current row amount and total amount by city
--? ratio between current row amount and total amount by month

select city, month, AMOUNT,
sum(Amount) OVER (
PARTITION BY CITY
) AS GrandTotal,
amount/sum(Amount) OVER () AS RatioOverTotal,
amount/sum(Amount) OVER (
PARTITION BY CITY) AS RatioOverTotalCity,
amount/sum(Amount) OVER (
PARTITION BY MONTH ) AS RatioOverTotalMonth
from SALES;

-- Ranking and Dense Ranking
select city, month, AMOUNT
, rank() over (order by amount) AS RankingByAmount
FROM Sales
Order by month,RankingByAmount;

select city, month, AMOUNT
, dense_rank() over (order by amount) AS Dense_RankingByAmount
FROM Sales
Order by month,Dense_RankingByAmount;

-- GROUP BY EXTENSIONS
-- USED TO AVOID READING DATA OVER AND OVER, FOR EFFICIENCY PURPOSES
-- rollup          groups obtained removing 1 column at a time
-- cube            gropus obtained as all combinations
-- grouping sets   aggregations on group list


-- EXAMPLE 1
-- compute combinations : product, month, city && month, city && city
-- result -> "group by rollup(city,month,product)

-- EXAMPLE 2
-- compute all possible combinations : product, month, city && month, city && product,month && product,city && product && month && city && no_grouping
-- result -> "group by cube(city,month,product)

-- EXAMPLE 3
-- compute combinations : product,month,city && product,month
-- result -> "group by grouping sets((product,month),(product,month,city))

-- ROW NUMBER
select city, month, AMOUNT
,ROW_NUMBER() OVER (PARTITION BY month order by city) AS City_Number_Per_Month -- every month has 2 different cities
,ROW_NUMBER() OVER (PARTITION BY city order by month) AS Month_Number_Per_City -- every city has data covering 6 months
FROM Sales;

-- CUME DIST
-- useful when... wel,, it tells you the ratio but not the total number of lines for that order
select city, month, AMOUNT
,CUME_DIST() OVER (partition by city order by month) AS RatioOfLinesPerCity
FROM Sales;

-- NTILE(NUMBER)
-- it divides the result of the query into NUMBER sub-groups. Useful when.. maybe when you want to get 10% of your data? Go guess.
select city, month, AMOUNT
,NTILE(2) OVER (ORDER BY month) -- it doesn't create groups of 2, divides input data into 2 groups
FROM Sales;