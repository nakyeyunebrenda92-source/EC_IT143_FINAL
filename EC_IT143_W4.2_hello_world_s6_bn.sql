-- Q: What is the classic first message in programming?
TRUNCATE TABLE dbo.tbl_hello_world;
INSERT INTO dbo.tbl_hello_world 
SELECT * FROM dbo.vw_hello_world;