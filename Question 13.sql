--Question 13
select format(Orders.OrderDate,'mm/dd/yyyy'), 
Customers.CompanyName as 'Customer Name', 
Employees.FirstName+', '+Employees.LastName as 'Agent',
Shippers.CompanyName as 'Delivery Courier'
from [dbo].[Orders]
join [dbo].[Customers] on Orders.CustomerID = Customers.CustomerID
join [dbo].[Employees] on Orders.EmployeeID =  Employees.EmployeeID 
join [dbo].[Shippers] on Orders.ShipVia = Shippers.ShipperID