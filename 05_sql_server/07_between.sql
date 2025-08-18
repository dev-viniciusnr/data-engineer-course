select SalesOrderNumber, OrderQuantity, UnitPrice, SalesAmount
from FactResellerSales
where OrderQuantity between 5 and 10
order by OrderQuantity

select SalesOrderNumber, OrderQuantity, UnitPrice, SalesAmount
from FactResellerSales
where SalesAmount between 5000 and 10000
order by 4

select SalesOrderNumber, OrderQuantity, UnitPrice, SalesAmount
from FactResellerSales
where SalesAmount between 5000 and 10000
and OrderQuantity between 5 and 15
order by 4

select SalesOrderNumber, OrderQuantity, UnitPrice, SalesAmount
from FactResellerSales
where SalesAmount between 5000 and 10000
and OrderQuantity > 10
order by 4

select *
from DimEmployee
where Hire Date between '2008/01/01' and '2010/01/01'
order by HireDate