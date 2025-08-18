select * 
from DimCustomer
where FirstName in ('Jon', 'Lauren', 'Carol')

select * 
from DimCustomer
where FirstName not in ('Jon', 'Lauren', 'Carol')

select * 
from DimCustomer
where FirstName not in ('Jon', 'Lauren', 'Carol')
and EnglishEducation not in ('High School')

select * 
from DimCustomer
where FirstName not in ('Jon', 'Lauren', 'Carol')
and EnglishEducation not in ('High School', 'Partial College')

select * 
from DimCustomer
where FirstName not in ('Jon', 'Lauren', 'Carol')
and EnglishEducation not in ('High School', 'Partial College')
order by EnglishEducation

select * 
from DimCustomer
where FirstName not in ('Jon', 'Lauren', 'Carol')
and EnglishEducation not in ('High School', 'Partial College')
and SpanishEducation not in ('Profesional' , 'Gestión')
order by EnglishEducation