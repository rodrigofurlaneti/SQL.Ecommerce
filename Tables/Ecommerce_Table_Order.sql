USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ecommerce_Table_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[OrderStatus] [int] NULL,
 CONSTRAINT [PK_Ecommerce_Table_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


