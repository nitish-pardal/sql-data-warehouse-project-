/*
=================================================================================
create Database and schemas
=================================================================================
Script purpose
  This script create a new "DataWarehouse" after checking if it already exists .
  if the databse exists, it is dorpped and recreated.  additionally , the script sets up three schemas 
  within the database :'bronze','silver','gold'
*/


USE master;
Go

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM SYS.DATABASES WHERE NAME ='DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse ;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABaSE DataWarehouse;
Go 

USE DataWarehouse;
Go

--create Schemas
Create SCHEMA bronze;
GO

Create SCHEMA silver;
GO

Create SCHEMA gold;
Go