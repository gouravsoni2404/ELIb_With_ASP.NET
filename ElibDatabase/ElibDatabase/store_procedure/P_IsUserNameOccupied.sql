CREATE PROCEDURE [dbo].[P_IsUserNameOccupied]
	@UserNameId BIGINT,
	@Result BIT OUTPUT
AS
	IF EXISTS (SELECT UserName FROM T_Users WHERE Id = @UserNameId)
		BEGIN
			SET @Result = 1
		END
	ELSE
		BEGIN
			SET @Result = 0
		END