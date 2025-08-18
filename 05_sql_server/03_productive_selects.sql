select top 10 *
FROM AdventureWorksDW2019.dbo.FactResellerSales

select
ProductKey,
SalesOrderNumber,
SalesTerritoryKey,
OrderDateKey
FROM AdventureWorksDW2019.dbo.FactResellerSales

EXECUTE sp_columns FactResellerSales
EXEC sp_columns FactResellerSales

SELECT        ResellerKey, UnitPrice, SalesAmount, TaxAmt
FROM            FactResellerSales



select * 
from dbo.DimCustomer

select distinct
Firstname
from dbo.DimCustomer

select distinct
EnglishEducation
from dbo.DimCustomer