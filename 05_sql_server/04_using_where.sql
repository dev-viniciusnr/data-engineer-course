select * 
from DimCustomer
where EnglishEducation = 'High School'

select * 
from DimCustomer
where EnglishEducation = 'High School'
and EnglishOccupation = 'Manual'

select * 
from DimCustomer
--where EnglishEducation = 'High School'

select * 
from DimCustomer
where EnglishEducation in ('Bachelors','High School','Partial High School')

select * 
from DimCustomer
where EnglishEducation in ('Bachelors','High School','Partial High School')
order by EnglishEducation

select * 
from DimCustomer
where EnglishEducation in ('Bachelors','High School')
and SpanishOccupation in ('Administrativo', 'Profesional')
order by EnglishEducation

select * 
from DimCustomer
where FirstName = 'Blake'

select * 
from DimCustomer
where FirstName in ('Jon', 'Lauren', 'Jimmy')