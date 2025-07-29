
select * from public.anac_sqlalchemy
where "Data_da_Ocorrencia" >='2023-10-16'


select * from  public.anac_sqlalchemy
WHERE "Data_da_Ocorrencia" >= CURRENT_DATE - INTERVAL '3 months';


select  CURRENT_DATE - INTERVAL '3 months';


delete from public.anac_sqlalchemy	
WHERE "Data_da_Ocorrencia" >= CURRENT_DATE - INTERVAL '3 months';