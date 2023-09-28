/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
[DateKey],
[FullDateAlternateKey] as Date,
[EnglishDayNameOfWeek] as Day,
[EnglishMonthName] as Month,
Left ([EnglishMonthName], 3) as MonthShort, -- useful for front ned date navigation and front end graph
[MonthNumberOfYear] as MonthNo,
[CalendarQuarter] as Quarter,
[CalendarYear] as Year
FROM [dbo].[DimDate]
Where 
CalendarYear >= 2019;
