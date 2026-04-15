-- Q: How many players are on each team?
EXEC dbo.sp_refresh_team_counts;
SELECT * FROM dbo.tbl_team_counts;