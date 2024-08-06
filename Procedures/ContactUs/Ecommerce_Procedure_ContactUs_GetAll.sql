USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_ContactUs_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        Name,
        Email,
        CellPhone,
        Message,
        DateInsert,
        DateUpdate,
        CASE 
            WHEN Status = 1 THEN CAST(1 AS BIT)
            ELSE CAST(0 AS BIT)
        END AS Status
    FROM 
	 [dbo].[Ecommerce_Table_ContactUs];
END;
GO


