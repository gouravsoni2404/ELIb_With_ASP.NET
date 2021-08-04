CREATE TABLE [dbo].[T_Books]
(
	[Id] INT NOT NULL IDENTITY (1, 1) PRIMARY KEY, 
    [Name] NCHAR(50) NOT NULL, 
    [Genre] NCHAR(50) NOT NULL, 
    [AuthorName] NCHAR(50) NOT NULL, 
    [PublisherName] NCHAR(50) NOT NULL, 
    [PublishDate] NCHAR(50) NOT NULL, 
    [Language] NCHAR(50) NOT NULL, 
    [Edition] NCHAR(50) NOT NULL, 
    [BookCost] NCHAR(50) NOT NULL, 
    [NoOfPages] NCHAR(50) NOT NULL, 
    [Discriptions] NCHAR(50) NOT NULL, 
    [ActualStock] NCHAR(50) NOT NULL, 
    [CurrentStock] NCHAR(50) NOT NULL, 
    [BookImagePath] NCHAR(50) NOT NULL,
)
