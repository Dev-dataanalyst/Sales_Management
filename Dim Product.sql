
SELECT 
	p.[ProductKey],
	p.[ProductAlternateKey] as ProductItemCode,
	p.[EnglishProductName] as ProductName,
	ps.EnglishProductSubcategoryName as SubCategory,
	pc.EnglishProductCategoryName as ProductCategory,
	p.[Color] as ProductColor,
	p.[Size] as ProductSize,
	p.[ProductLine] as ProductLine,
	p.[ModelName] as ProductModelName,
	p.[EnglishDescription] as ProductDescription,
	IsNUll (p.[Status], 'Outdated') as ProductStatus
FROM [dbo].[DimProduct] as p
Left Join 
  dbo.DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
Left Join 
  dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
Order By p.ProductKey asc;