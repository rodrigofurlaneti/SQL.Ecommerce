USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Order_Insert]
    @IdUser INT,
    @IdProduct INT,
    @Amount INT,
    @IdOrder INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @OrderId INT;

    IF @IdOrder = 0
    BEGIN
        INSERT INTO [dbo].[Ecommerce_Table_Order] 
		(IdUser, DateInsert, DateUpdate, OrderStatus)
        VALUES 
		(@IdUser, GETDATE(), GETDATE(), 1);

        -- Retorna o ID do novo pedido inserido
        SET @OrderId = SCOPE_IDENTITY();

		EXECUTE [dbo].[Ecommerce_Procedure_Order_X_Product_Insert] @OrderId, @IdProduct, @Amount;

		-- Retorna o ID do pedido
		SELECT @OrderId AS OrderId;
    END
    ELSE
    BEGIN

		EXECUTE [dbo].[Ecommerce_Procedure_Order_X_Product_Insert] @IdOrder, @IdProduct, @Amount;

		-- Retorna o ID do pedido
		SELECT @IdOrder AS OrderId;
    END

END

GO


