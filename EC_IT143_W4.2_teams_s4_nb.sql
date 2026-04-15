-- Q: How many players are on each team?
DROP VIEW IF EXISTS dbo.vw_team_counts;
GO
CREATE VIEW dbo.vw_team_counts AS 
SELECT team_name, COUNT(*) AS PlayerCount
FROM [MyCommunitiesDB].[dbo].[Teams]
GROUP BY team_name;