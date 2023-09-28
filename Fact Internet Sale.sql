
SELECT 
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	[SalesOrderNumber],
	[SalesAmount]
FROM [dbo].[FactInternetSales]
Where 
Left (OrderDateKey,4) >= Year(getdate())-2
Order By OrderDateKey;	