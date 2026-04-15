-- Q: How many players are on each team?
TRUNCATE TABLE dbo.tbl_team_counts;
INSERT INTO dbo.tbl_team_counts 
SELECT * FROM dbo.vw_team_counts;