USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Order_Delete]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Ecommerce_Table_Order]
	    SET DateUpdate = GetDate(),
			OrderStatus = 0
    WHERE Id = @Id;
END;
GO


