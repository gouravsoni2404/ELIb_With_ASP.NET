CREATE PROCEDURE [dbo].[P_SaveUserDetails]
	@Id BIGINT, 
    @UserName NCHAR(8),
    @FullName NCHAR(50), 
    @DOB DATE, 
    @ContactNo NCHAR(10), 
    @Email NCHAR(50), 
    @State NCHAR(50), 
    @City NCHAR(50), 
    @PinCode INT, 
    @FullAddress NCHAR(50), 
    @Password NCHAR(50), 
    @AccountStatus INT
AS
	INSERT INTO T_Users(Id,
    UserName,
    FullName,
    DOB,
    ContactNo,
    Email,
    State,
    City,
    PinCode,
    FullAddress, 
    Password, 
    AccountStatus)
    values(@Id,
    @UserName,
    @FullName, 
    @DOB,
    @ContactNo, 
    @Email,  
    @State,
    @City, 
    @PinCode,
    @FullAddress,
    @Password, 
    @AccountStatus)
RETURN 0
