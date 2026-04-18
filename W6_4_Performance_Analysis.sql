-- =============================================
-- W6.4 Performance Analysis: SQL Indexing
-- Author: Nakyeyune Brenda
-- Description: Identifying missing indexes and 
-- optimizing query performance in AdventureWorks.
-- =============================================

USE [AdventureWorks2022];
GO

-- ---------------------------------------------------------
-- PART 1: SalesOrderDetail Optimization
-- ---------------------------------------------------------

-- 1. Initial Query
SELECT * FROM Sales.SalesOrderDetail 
WHERE CarrierTrackingNumber = '4E0A-4F28-81';

-- 2. Create Index if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_SalesOrderDetail_CarrierTrackingNumber' 
               AND object_id = OBJECT_ID('Sales.SalesOrderDetail'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_SalesOrderDetail_CarrierTrackingNumber]
    ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber]);
END
GO

-- ---------------------------------------------------------
-- PART 2: Person.Person Optimization
-- ---------------------------------------------------------

-- 1. Initial Query
SELECT * FROM Person.Person 
WHERE MiddleName = 'J' AND Title = 'Mr.';

-- 2. Create Index if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Person_MiddleName_Title' 
               AND object_id = OBJECT_ID('Person.Person'))
BEGIN
    CREATE NONCLUSTERED INDEX [IX_Person_MiddleName_Title]
    ON [Person].[Person] ([MiddleName], [Title]);
END
GO