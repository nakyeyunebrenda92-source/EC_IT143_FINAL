/*******************************************************************************
EC_IT143_W3.4_NB
Course: IT143
Author: Nakyeyune Brenda
Date: April 7, 2026
Description: This script contains 8 AdventureWorks questions and answers, 
             formatted according to the "24 Rules" standard.
*******************************************************************************/
-- Q1: What are the top 10 most expensive products based on list price?
-- Author: Nakyeyune Brenda
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q2: Which employees earn the highest salaries in the company?
-- Author: Nakyeyune Brenda
SELECT TOP 10 BusinessEntityID, Rate
FROM HumanResources.EmployeePayHistory
ORDER BY Rate DESC;
-- Q3: Which five products have the highest total sales quantity across all orders?
-- Author: Tony Owusu

SELECT TOP 5 p.Name, SUM(sod.OrderQty) AS TotalQuantity
FROM Production.Product AS p
JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
ORDER BY TotalQuantity DESC;
-- Q4: Which customers are located in the United States, and what are their associated sales territories?
-- Author: Tony Owusu

SELECT c.CustomerID, t.Name AS TerritoryName, t.[Group] AS Region
FROM Sales.Customer AS c
JOIN Sales.SalesTerritory AS t ON c.TerritoryID = t.TerritoryID
WHERE t.CountryRegionCode = 'US';
-- Q5: List products with no inventory that appear in open orders from the last 30 days.
-- Author: Djeamin yves Gnenessemin

SELECT DISTINCT p.Name
FROM Production.Product AS p
LEFT JOIN Production.ProductInventory AS i ON p.ProductID = i.ProductID
JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader AS soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE (i.Quantity IS NULL OR i.Quantity = 0)
  AND soh.OrderDate >= DATEADD(day, -30, '2014-06-01'); -- Adjusted date for AdventureWorks sample data

-- Q6: Which vendors delivered products late most frequently during 2012?
-- Author: Djeamin yves Gnenessemin

SELECT v.Name AS VendorName, 
       COUNT(*) AS LateDeliveries, 
       AVG(DATEDIFF(day, poh.OrderDate, poh.ShipDate)) AS AvgDaysLate
FROM Purchasing.Vendor AS v
JOIN Purchasing.PurchaseOrderHeader AS poh ON v.BusinessEntityID = poh.VendorID
WHERE poh.ShipDate > poh.OrderDate
  AND poh.OrderDate BETWEEN '2012-01-01' AND '2012-12-31'
GROUP BY v.Name
ORDER BY LateDeliveries DESC;
-- Q7: List all column names and data types from Production.Product.
-- Author: Joseph Nesly

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Product' 
  AND TABLE_SCHEMA = 'Production';
-- Q8: Which tables in AdventureWorks belong to the schema named ‘Sales’?
-- Author: Joseph Nesly

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Sales';