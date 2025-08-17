SELECT TOP (1000) [EmployeeKey]
      ,[ParentEmployeeKey]
      ,[EmployeeNationalIDAlternateKey]
      ,[ParentEmployeeNationalIDAlternateKey]
      ,[SalesTerritoryKey]
      ,[FirstName]
      ,[LastName]
      ,[MiddleName]
      ,[NameStyle]
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
      ,[LoginID]
      ,[EmailAddress]
      ,[Phone]
      ,[MaritalStatus]
      ,[EmergencyContactName]
      ,[EmergencyContactPhone]
      ,[SalariedFlag]
      ,[Gender]
      ,[PayFrequency]
      ,[BaseRate]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[SalesPersonFlag]
      ,[DepartmentName]
      ,[StartDate]
      ,[EndDate]
      ,[Status]
      ,[EmployeePhoto]
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]

select top (10)
EmployeeKey,
Firstname,
LastName
From dbo.DimEmployee

select * from dbo.DimEmployee

select top (10) * from dbo.DimEmployee

select top (10) FirstName, title * from dbo.DimEmployee

select top (10) FirstName, title From dbo.DimEmployee