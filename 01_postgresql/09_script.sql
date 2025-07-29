--create year column
select 
extract(year from "Data_da_Ocorrencia") as ano,
*
from anac_sqlalchemy


--getting distincts years
select distinct
extract(year from "Data_da_Ocorrencia") as ano
from anac_sqlalchemy
order by 1 desc


--filter current year
select 
extract(year from "Data_da_Ocorrencia") as ano,
extract(year from current_date) as ano_atual,
*
from anac_sqlalchemy
where extract(year from "Data_da_Ocorrencia") = extract(year from current_date)


--filter 2024 year, beacuse is the date when the course was made
select 
extract(year from "Data_da_Ocorrencia") as ano,
extract(year from current_date) as ano_atual,
*
from anac_sqlalchemy
where extract(year from "Data_da_Ocorrencia") = 2024


-- create delete 2024 year data
delete from public.anac_sqlalchemy
where extract(year from "Data_da_Ocorrencia") = 2024