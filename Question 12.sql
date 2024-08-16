--Question 12
select Employees.LastName+', '+Employees.FirstName as 'Employee Name', format (Employees.HireDate, 'mm/dd/yyyy') as
'Date Hired' from[dbo].[Employees]