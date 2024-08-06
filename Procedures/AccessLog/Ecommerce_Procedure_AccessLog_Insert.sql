USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Ecommerce_Procedure_AccessLog_Insert]
    @Latitude VARCHAR(50),
	@Longitude VARCHAR(50),
	@InternetProtocol VARCHAR(50),
	@UserAgent VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
		
		INSERT INTO [dbo].[Ecommerce_Table_AccessLog] 
		(Latitude, Longitude, InternetProtocol, UserAgent, DateInsert)
        VALUES 
		(@Latitude, @Longitude, @InternetProtocol, @UserAgent, GETDATE());

END

GO


