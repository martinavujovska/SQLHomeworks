

USE SEDC 
GO

/*create table*/

--CREATE TABLE dbo.Customer --ако не се пише dbo.Customer туку само Customer Эе го стае автоматски и dbo. ама убоо е да се пише dbo.
--(
--	[Id] int identity (1,1),
--	[Name] nvarchar(100) NOT NULL,
--	[City] nvarchar(100) NULL,
--	CONSTRAINT [PK_Costumer] PRIMARY KEY CLUSTERED (Id)
--)

--SELECT * FROM dbo.Costumer

--SELECT Id, Name, City
--FROM dbo.Costumer

--SELECT Name, City
--FROM dbo.Costumer

--INSERT INTO dbo.Costumer(Name, City)
--VALUES ('Vero Strumica', 'Strumica')

--INSERT INTO dbo.Costumer(Name, City)
--VALUES ('Tineks Skopje', 'Skopje')

--INSERT INTO dbo.Costumer(Name, City)
--VALUES('Vero Tetovo', 'Tetovo')

--SELECT *
--FROM dbo.Costumer
--WHERE City = 'Tetovo'

--DROP TABLE dbo.Costumer

CREATE TABLE dbo.BusinessEntity
(
[Id] int identity (1, 1),
[Name] nvarchar(100) NULL,
[Region] nvarchar(1000) NULL,
[Zipcode] nvarchar(10) NULL,
[Size] nvarchar(10) NULL
CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.BusinessEntity

CREATE TABLE dbo.Employee
(
[Id] int identity (1, 1),
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(1000) NOT NULL,
[DateOfBirth] date NULL,
[Gender] nchar(1) NULL,
[HireDate] date NULL,
[NationalIdNumber] nvarchar(20) NULL
CONSTRAINT [PK_EmployeeId] PRIMARY KEY CLUSTERED (Id)
)

