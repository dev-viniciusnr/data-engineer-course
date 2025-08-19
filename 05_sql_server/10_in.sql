select * 
from DimEmployee
where EmployeeKey in (2, 5, 7)

select * 
from DimEmployee
where EmployeeKey = 2
OR EmployeeKey = 5
OR EmployeeKey = 7
or EmployeeKey = 10

select * 
from DimEmployee
where EmployeeKey in (2, 5, 7, 10, 12)

select * 
from DimEmployee
where FirstName in ('Guy', 'Roberto', 'Thierry', 'Jossef')

select * 
from DimEmployee
where FirstName not in ('Guy', 'Roberto', 'Thierry', 'Jossef')

select * 
from DimEmployee
where FirstName not in ('Guy', 'Roberto', 'Thierry', 'Jossef')
and DepartmentName in ('Marketing', 'Production')

select * 
from DimEmployee
where FirstName not in ('Guy', 'Roberto', 'Thierry', 'Jossef')
and DepartmentName not in ('Marketing', 'Production')

select * 
from DimEmployee
where FirstName not in ('Guy', 'Roberto', 'Thierry', 'Jossef')
and DepartmentName not in ('Marketing', 'Production')
order by DepartmentName