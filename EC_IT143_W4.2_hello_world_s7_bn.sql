-- Q: What is the classic first message in programming?
DROP PROCEDURE IF EXISTS dbo.sp_refresh_hello_world;
GO
CREATE PROCEDURE dbo.sp_refresh_hello_world AS
BEGIN
    TRUNCATE TABLE dbo.tbl_hello_world;
    INSERT INTO dbo.tbl_hello_world 
    SELECT * FROM dbo.vw_hello_world;
END;