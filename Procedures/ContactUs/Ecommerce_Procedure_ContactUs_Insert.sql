USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_ContactUs_Insert]
    @Name VARCHAR(50),
    @Email VARCHAR(50),
    @CellPhone VARCHAR(11),
    @Message VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Ecommerce_Table_ContactUs] (Name, Email, CellPhone, Message, DateInsert, DateUpdate, Status)
    VALUES (@Name, @Email, @CellPhone, @Message, GETDATE(), GETDATE(), 1);

    -- Optionally, return the ID of the newly inserted user
    SELECT SCOPE_IDENTITY() AS NewUserId;
END;
GO


