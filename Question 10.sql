--Question 10
SELECT  distinct format(OrderDate,'yyyy') as ShowYear
FROM [dbo].[Orders]
ORDER BY ShowYear;