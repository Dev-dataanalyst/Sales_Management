
SELECT 
	c.[CustomerKey] AS CustomerKey,
	c.[FirstName] AS FirstName,
	c.[LastName] AS LastName,
	c.FirstName + ' ' + c.LastName as FullName,
	CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	c.[DateFirstPurchase] AS DateFirstPurchase,
	g.City AS CustomerCity
FROM [dbo].[DimCustomer] AS c
Left Join
dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey
ORDER BY CustomerKey ASC;