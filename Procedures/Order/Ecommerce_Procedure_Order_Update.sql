USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Order_Update]
    @Id INT,
    @IdUser INT,
    @OrderStatus INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Ecommerce_Table_Order]
    SET IdUser = @IdUser,
		OrderStatus = @OrderStatus,
		DateUpdate = GetDate()
    WHERE Id = @Id;
END;
GO


