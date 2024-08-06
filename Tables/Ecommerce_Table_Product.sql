USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ecommerce_Table_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Details] [varchar](max) NULL,
	[Amount] [int] NULL,
	[Picture] [varchar](150) NULL,
	[ValueOf] [numeric](10, 2) NULL,
	[ValueFor] [numeric](10, 2) NULL,
	[Discount] [numeric](10, 2) NULL,
	[ProductStatus] [int] NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Ecommerce_Table_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


