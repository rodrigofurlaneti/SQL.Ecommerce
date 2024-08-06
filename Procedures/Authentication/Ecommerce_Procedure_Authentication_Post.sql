USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Authentication_Post]
    @Username VARCHAR(20),
	@Password VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
		FROM [dbo].[Ecommerce_Table_User]
			WHERE Username = @Username AND Password = @Password;
END;
GO


