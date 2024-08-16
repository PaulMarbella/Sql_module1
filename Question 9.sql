--Question 9
select Territories.TerritoryDescription, Region.RegionDescription from [dbo].[Territories]
full join [dbo].[Region] on Territories.RegionID = Region.RegionID
order by Territories.TerritoryDescription