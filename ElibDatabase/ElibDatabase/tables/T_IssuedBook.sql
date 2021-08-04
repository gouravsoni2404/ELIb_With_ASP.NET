CREATE TABLE [dbo].[T_IssuedBook]
(
	[Id] INT NOT NULL IDENTITY (1, 1) PRIMARY KEY, 
    [MemberId] INT NOT NULL, 
    [MemberName] NCHAR(50) NOT NULL, 
    [BookId] INT NOT NULL, 
    [BookName] NCHAR(50) NOT NULL, 
    [IssueDate] NCHAR(50) NOT NULL, 
    [DueDate] NCHAR(50) NOT NULL
)
