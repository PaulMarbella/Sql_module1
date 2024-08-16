--Question 6
select * from [dbo].[Territories]
where RTRIM(TerritoryDescription) like '%e' and RTRIM(TerritoryDescription) != 'Cambridge';