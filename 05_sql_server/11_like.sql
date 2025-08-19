select *
from DimEmployee
where FirstName like 'and%'
order by FirstName

select *
from DimEmployee
where FirstName like '%na'
order by FirstName

select *
from DimEmployee
where FirstName not like '%na'
order by FirstName

select *
from DimEmployee
where FirstName like '%ja%'
order by FirstName

select *
from DimEmployee
where FirstName like '%ja_'
order by FirstName

select *
from DimEmployee
where FirstName like '%ja__'
order by FirstName
