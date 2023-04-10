CREATE TABLE [dbo].[Table]
(
	[ID] INT NOT NULL PRIMARY KEY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Password] NCHAR(20) NOT NULL, 
    [Country] NCHAR(20) NOT NULL, 
    [Gender] NCHAR(10) NOT NULL, 
    [DateofBirth] DATE NOT NULL
)
