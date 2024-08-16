--Question 1
select * from [dbo].[EmployeeTerritories]
--Question 2
select * from [dbo].[Customers]
where CompanyName like 'C%' or CompanyName like  'F%'
--Question 3
select * from [dbo].[Customers]
where Region is null
--Question 4
select * from [dbo].[Customers]
where city = 'London'
--Question 5
select * from [dbo].[Invoices]
--Question 6
select * from [dbo].[Territories]
where RTRIM(TerritoryDescription) like '%e' and RTRIM(TerritoryDescription) != 'Cambridge';
--Question 7
select * from [dbo].[Products]
select * from[dbo].[Suppliers]
where CompanyName = 'Tokyo Traders'
select * from [dbo].[Alphabetical list of products]
select A.* from [dbo].[Alphabetical list of products] A
inner join [dbo].[Suppliers]  on  A.SupplierID = Suppliers.SupplierID
where Suppliers.CompanyName = 'Tokyo Traders';
--Question 8
select TerritoryDescription from [dbo].[Territories]
order by TerritoryDescription 
--Question 9
select Territories.TerritoryDescription, Region.RegionDescription from [dbo].[Territories]
full join [dbo].[Region] on Territories.RegionID = Region.RegionID
order by Territories.TerritoryDescription
--Question 10
SELECT  distinct format(OrderDate,'yyyy') as ShowYear
FROM [dbo].[Orders]
ORDER BY ShowYear;
--Question 11
select * from [dbo].[Orders]
where ShipCountry in ('france','belgium','Austria')
--Question 12
select Employees.LastName+', '+Employees.FirstName as 'Employee Name', format (Employees.HireDate, 'mm/dd/yyyy') as
'Date Hired' from[dbo].[Employees]
--Question 13
select format(Orders.OrderDate,'mm/dd/yyyy'), 
Customers.CompanyName as 'Customer Name', 
Employees.FirstName+', '+Employees.LastName as 'Agent',
Shippers.CompanyName as 'Delivery Courier'
from [dbo].[Orders]
join [dbo].[Customers] on Orders.CustomerID = Customers.CustomerID
join [dbo].[Employees] on Orders.EmployeeID =  Employees.EmployeeID 
join [dbo].[Shippers] on Orders.ShipVia = Shippers.ShipperID
--Question 14
select ShipCountry as Country, COUNT(ShipCountry)as 'Order Count' from [dbo].[Orders]
group by ShipCountry
order by ShipCountry 
--Question 15
select ShipCountry as Country, COUNT(ShipCountry)as 'Order Count' from [dbo].[Orders]
group by ShipCountry 
order by count(ShipCountry) DESC
--Question 16
select * from [dbo].[Shippers]
insert into [dbo].[Shippers]
values ('To Go', 123422122)
--Question 17
update [dbo].[Shippers]
set Phone= 987654321
where CompanyName = 'MTLSI';
--Question 18
Delete from [dbo].[Shippers] where Phone = '123422122'
Delete from [dbo].[Shippers] where Phone = '123456534'
--Question 19
alter table [dbo].[Employees]
add MiddleName varchar(25) null;
select * from [dbo].[Employees]
--QUestion 20
update [dbo].[Employees]
set MiddleName = 'S.'
where LastName = 'King';
















 