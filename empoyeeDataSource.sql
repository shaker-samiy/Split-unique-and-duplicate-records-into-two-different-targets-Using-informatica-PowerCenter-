
---DDL employee data source project[EDSP] 
--check the existance of data
SELECT * FROM employeedatasource;

--creat target table for unique records
CREATE TABLE UniqueEmployeeData
AS SELECT * FROM employeedatasource 
WHERE 1<>1;

SELECT * FROM UniqueEmployeeData;

--create target table for duplicated records
CREATE TABLE DuplicateEmployeeData;
As 
SELECT * FROM employeedatasource
WHERE 1<>1;

--add a column to check the count of records
ALTER TABLE UniqueEmployeeData ADD  RCNT INTEGER;
ALTER TABLE DuplicateEmployeeData ADD RCNT2 INTEGER;

-- add hash value for different appoach
ALTER TABLE DuplicateEmployeeData ADD HashValue varchar(200);
--
SELECT * FROM DuplicateEmployeeData;
SELECT * FROM UniqueEmployeeData;
--
--TRUNCATE TABLE UniqueEmployeeData;
--TRUNCATE TABLE DuplicateEmployeeData;





