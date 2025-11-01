/*
SELECT RIGHT(Base_Name,3)
FROM dbo.other_fhv_services_jan_aug_2015
-- INC


select CHARINDEX(' ',Number_of_Trips) as 'Number_of_Trips',
CHARINDEX(' ', Number_of_Vehicles) as 'Number_of_Vehicles'
FROM dbo.other_FHV_services_jan_aug_2015
-- location of all the spaces


SELECT MONTH(Pick_Up_Date)
FROM dbo.other_FHV_services_jan_aug_2015
ORDER BY Pick_Up_Date DESC
-- no, expected the name month not number


SELECT DAY(Pick_Up_Date) AS 'Pick_Up_Day', DATENAME(month,Pick_Up_Date) AS 'Pick_Up_Month'
FROM dbo.other_FHV_services_jan_aug_2015
-- selects the number day and month name


SELECT MAX(start_lat)
FROM dbo.lyft
-- most easterly pick up


SELECT MAX(start_lng)
FROM dbo.lyft
-- most northern pick up

SELECT CONCAT_WS(':', Base_Number, Base_Name)
FROM dbo.other_FHV_services_jan_aug_2015
-- concatenate Base_Number with Base_Name

*/