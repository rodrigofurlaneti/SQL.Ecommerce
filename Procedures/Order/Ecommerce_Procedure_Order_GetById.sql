USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Order_GetById]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [dbo].[Ecommerce_Table_Order]
    WHERE Id = @Id;
END;
GO


