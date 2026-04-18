SELECT ContactName,
       CASE 
           WHEN CHARINDEX(' ', ContactName) > 0 
           THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
           ELSE ContactName 
       END AS first_name
FROM dbo.t_w3_schools_customers;