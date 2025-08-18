select * from DimEmployee
order by FirstName

select * from DimEmployee
order by FirstName desc

select * from DimEmployee
order by FirstName, LastName desc

select * from DimEmployee
order by EmployeeKey

select * from DimEmployee
order by 6

select * from DimEmployee
order by 1

select EmployeeKey, FirstName, LastName, MiddleName from DimEmployee
order by 2

select EmployeeKey, FirstName, LastName, MiddleName from DimEmployee
order by 2, 4 desc

SELECT        EmployeeKey, LastName, FirstName, MiddleName
FROM            DimEmployee
ORDER BY FirstName, LastName DESC