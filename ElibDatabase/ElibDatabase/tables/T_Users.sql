CREATE TABLE [dbo].[T_Users]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [UserName] NCHAR(8) NOT NULL,
    [FullName] NCHAR(50) NOT NULL, 
    [DOB] DATE NOT NULL, 
    [ContactNo] NCHAR(10) NOT NULL, 
    [Email] NCHAR(50) NOT NULL, 
    [State] NCHAR(50) NOT NULL, 
    [City] NCHAR(50) NOT NULL, 
    [PinCode] INT NOT NULL, 
    [FullAddress] NCHAR(50) NOT NULL, 
    [Password] NCHAR(50) NOT NULL, 
    [AccountStatus] INT NOT NULL
)
