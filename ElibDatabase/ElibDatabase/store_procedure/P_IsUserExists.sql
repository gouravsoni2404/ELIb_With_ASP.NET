CREATE PROCEDURE [dbo].[P_IsUserExists]
	@UserNameId BIGINT,
	@Password VARCHAR,
	@Result BIT
AS
		IF EXISTS (SELECT UserName FROM T_Users WHERE Id = @UserNameId AND Password = @Password)
		BEGIN
			SET @Result = 1
		END
	ELSE
		BEGIN
			SET @Result = 0
		END
RETURN 0
