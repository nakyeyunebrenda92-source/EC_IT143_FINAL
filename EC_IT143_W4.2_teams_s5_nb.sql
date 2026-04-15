-- Q: How many players are on each team?
DROP TABLE IF EXISTS dbo.tbl_team_counts;
SELECT * INTO dbo.tbl_team_counts 
FROM dbo.vw_team_counts;