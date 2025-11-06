-- 2. How many women employees were reported in 2016 in all industries? Round to the nearest whole number. 
/*
SELECT 
 s.id AS Total,
 d.series_title,
 d.series_id
FROM 
 dbo.annual_2016 AS s
INNER JOIN 
 dbo.series AS d
ON 
 s.series_id = d.series_id
WHERE
 RIGHT(d.series_id, 2) = '10';
 

 SELECT 
    COUNT(s.id) AS Total
FROM 
    dbo.annual_2016 AS s
INNER JOIN 
    dbo.series AS d
    ON s.series_id = d.series_id
WHERE
    RIGHT(s.series_id, 3) = '010';


-- 3. How many production/nonsupervisory employees were reported in 2016? Round to the nearest whole number. 

SELECT
 COUNT(id) as Total_Count
FROM dbo.annual_2016
WHERE
 RIGHT(series_id, 3) = '006';


-- 4. January 2017, average weekly hours worked by production and nonsupervisory employees across all industries?

SELECT 
 AVG(value) as AVG_Hours
FROM 
 dbo.january_2017
WHERE 
 RIGHT(series_id, 3) = '006'
GROUP BY 
 series_id;
 

 -- Ttl weekly payroll for production and nonsupervisory employees across all industries in January 2017 round to the nearest penny

 SELECT 
 series_id,
  ROUND(Sum(value) / 4, 2) AS 'Weekly Payroll',
  [period]
FROM 
 january_2017
WHERE 
 RIGHT(series_id, 3) = '003'
GROUP BY
 series_id,
 [period]
ORDER BY
 [period];
 
 -- which industry was the average weekly hours worked by production/nonsupervisory employees the highest? lowest?


 SELECT
 MAX(Average) AS HighestAverage,
 MIN(Average) AS LowestAverage
FROM (
    SELECT
     series_id,
     AVG(value) AS Average
    FROM 
     dbo.january_2017
WHERE 
 RIGHT(series_id, 3) = '006'
GROUP BY 
 series_id
) AS sub;

-- which industry was the total weekly payroll for production and nonsupervisory employees the highest? lowest?
 

 SELECT 
  MAX([Weekly Payroll]) AS maxpay,
  MIN([Weekly Payroll]) AS minpay
FROM (  Select
  series_id,
  ROUND(Sum(value) / 4, 2) AS [Weekly Payroll]
FROM dbo.january_2017
WHERE 
 RIGHT(series_id, 3) = '003'
GROUP BY
 series_id
) AS minmax;


SELECT TOP 
 50 *
FROM 
 annual_2016
LEFT JOIN series
ON annual_2016.series_id = series.series_id
ORDER BY id

SELECT TOP
 50 *
FROM 
 series
INNER JOIN
 datatype
ON series.data_type_code = datatype.data_type_code


SELECT TOP 50 *
FROM 
 series
LEFT JOIN 
 industry
ON series.industry_code = industry.industry_code

-- return the `series_id`, `industry_code`, `industry_name`, and `value` from the `january_2017` table but 
-- only if that value is greater than the average value for `annual_2016` of `data_type_code` 82.

SELECT 
 j.series_id,
 j.value,
 a.aav
FROM 
 january_2017 AS j
INNER JOIN ( 
    SELECT 
        series_id,
        AVG(value) AS aav
    FROM
        annual_2016
    WHERE RIGHT(series_id, 2) = '82'
    GROUP BY
        series_id
    HAVING
        AVG([value]) > 82
) AS a
ON 
 j.series_id = a.series_id
WHERE 
    j.value > a.aav
ORDER BY
    j.value;
    

Create a `Union` table comparing average weekly earnings of production and nonsupervisory employees between
 `annual_2016` and `january_2017` using the data type 30.  Round to the nearest penny.  You should have a column 
 for the average earnings and a column for the year, and the period.


SELECT
  ROUND(avg(value), 2) as avg,
  year,
  period,
  series_id
FROM
 dbo.annual_2016
WHERE
 RIGHT(series_id, 2) = '30'
GROUP BY
 [year],
 [period],
 series_id

UNION

SELECT
 round(avg(value), 2),
 year,
 period,
 series_id
FROM
 dbo.january_2017
WHERE
 RIGHT(series_id, 2) = '30'
GROUP BY
 [year],
 [period],
 series_id;
 

SELECT 
 series_id

WITH combined AS (

    SELECT
        ROUND(AVG(value), 2) AS avg,
        year,
        period,
        series_id
    FROM dbo.annual_2016
    WHERE RIGHT(series_id, 2) = '30'
    GROUP BY year, period, series_id

    UNION

    SELECT
        ROUND(AVG(value), 2) AS avg,
        year,
        period,
        series_id
    FROM dbo.january_2017
    WHERE RIGHT(series_id, 2) = '30'
    GROUP BY year, period, series_id
)

SELECT *
FROM combined
WHERE avg = (SELECT MAX(avg) FROM combined);


SELECT
 i.industry_name
FROM 
 industry as i
INNER JOIN series AS s
ON i.industry_code = s.industry_code
WHERE
 s.series_id LIKE '%CEU5552413030%';

 */