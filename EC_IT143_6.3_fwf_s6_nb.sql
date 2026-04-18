SELECT ContactName,
       -- This is the Ad Hoc way (from Step 3)
       CASE 
           WHEN CHARINDEX(' ', ContactName) > 0 
           THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
           ELSE ContactName 
       END AS ad_hoc_result,
       -- This is your NEW function (from Step 5)
       dbo.fn_GetFirstName(ContactName) AS udf_result
FROM dbo.t_w3_schools_customers;