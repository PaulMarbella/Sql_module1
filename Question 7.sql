--Question 7
select * from [dbo].[Products]

select * from[dbo].[Suppliers]
where CompanyName = 'Tokyo Traders'

select * from [dbo].[Alphabetical list of products]


select A.* from [dbo].[Alphabetical list of products] A
inner join [dbo].[Suppliers]  on  A.SupplierID = Suppliers.SupplierID
where Suppliers.CompanyName = 'Tokyo Traders';