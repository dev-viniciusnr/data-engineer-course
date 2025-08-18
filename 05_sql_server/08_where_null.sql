select  FirstName, MiddleName, LastName, AddressLine1, AddressLine2
From dbo.DimCustomer
where AddressLine2 is not null

select  FirstName, MiddleName, LastName, AddressLine1, AddressLine2
From dbo.DimCustomer
where AddressLine2 is null

select  FirstName, MiddleName, LastName, AddressLine1, AddressLine2
From dbo.DimCustomer
where AddressLine2 is not null
and MiddleName is not  null

select  FirstName, MiddleName, LastName, AddressLine1, AddressLine2
From dbo.DimCustomer
where AddressLine2 is null
and MiddleName is not  null

select  
FirstName as Nome, 
MiddleName as Nome_do_Meio, 
LastName as Sobrenome, 
AddressLine1 as Endereco,
AddressLine2 as Endereco_2
From dbo.DimCustomer
where AddressLine2 is null
and MiddleName is not  null