-- Q: How many players are on each team?
DROP PROCEDURE IF EXISTS dbo.sp_refresh_team_counts;
GO
CREATE PROCEDURE dbo.sp_refresh_team_counts AS
BEGIN
    TRUNCATE TABLE dbo.tbl_team_counts;
    INSERT INTO dbo.tbl_team_counts 
    SELECT * FROM dbo.vw_team_counts;
END;