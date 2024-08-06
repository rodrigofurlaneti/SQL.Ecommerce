USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_ContactUs_Update]
    @Id INT,
    @Name VARCHAR(50),
    @Email VARCHAR(50),
    @CellPhone NVARCHAR(11),
    @Message VARCHAR(MAX),
    @DateInsert DATETIME,
    @DateUpdate DATETIME,
    @Status INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Ecommerce_Table_ContactUs]
    SET Name = @Name,
        Email = @Email,
        CellPhone = @CellPhone,
        Message = @Message,
		DateUpdate = GetDate()
    WHERE Id = @Id;
END;
GO


