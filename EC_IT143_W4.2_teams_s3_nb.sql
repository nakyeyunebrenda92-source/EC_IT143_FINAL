-- Q: How many players are on each team?
SELECT team_name, COUNT(*) AS PlayerCount
FROM [MyCommunitiesDB].[dbo].[Teams]
GROUP BY team_name;