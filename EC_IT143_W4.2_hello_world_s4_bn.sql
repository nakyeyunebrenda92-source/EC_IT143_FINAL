-- Q: What is the classic first message in programming?
DROP VIEW IF EXISTS dbo.vw_hello_world;
GO
CREATE VIEW dbo.vw_hello_world AS 
SELECT 'Hello World' AS my_message;