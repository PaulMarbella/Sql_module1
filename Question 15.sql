--Question 15
select ShipCountry as Country, COUNT(ShipCountry)as 'Order Count' from [dbo].[Orders]
group by ShipCountry 
order by count(ShipCountry) DESC