select top (10) *
from FactResellerSales

--Select table name and Alt + F1

select SalesOrderNumber, OrderQuantity, UnitPrice, SalesAmount
from FactResellerSales

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where OrderQuantity > 10

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where OrderQuantity > 10
order by 2

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where OrderQuantity > 10
order by OrderQuantity desc

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where OrderQuantity >= 10
order by 2

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where OrderQuantity <= 30
order by 2

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where SalesAmount > 2000
order by 4

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where SalesAmount > 15000
order by 4

select SalesOrderNumber, OrderQuantity, UnitPrice,SalesAmount
from FactResellerSales
where SalesAmount < 1000
order by 4