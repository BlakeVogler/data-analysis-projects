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
*/

-- 4. January 2017, average weekly hours worked by production and nonsupervisory employees across all industries?

SELECT 
 series_id,
 
 value
FROM january_2017
WH
