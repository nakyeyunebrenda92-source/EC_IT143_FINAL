WITH Comparison AS (
    SELECT dbo.fn_GetFirstName(ContactName) AS udf_result,
           CASE 
               WHEN CHARINDEX(' ', ContactName) > 0 
               THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
               ELSE ContactName 
           END AS ad_hoc_result
    FROM dbo.t_w3_schools_customers
)
SELECT * FROM Comparison
WHERE udf_result <> ad_hoc_result; -- Show rows only if they ARE NOT equal