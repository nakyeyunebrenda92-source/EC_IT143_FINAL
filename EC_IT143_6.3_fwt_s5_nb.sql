-- 1. Run the update
UPDATE dbo.t_w3_schools_customers
SET City = 'Kampala' 
WHERE CustomerID = 5;

-- 2. Verify the columns are now filled
SELECT CustomerID, ContactName, City, LastModified, ModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 5;