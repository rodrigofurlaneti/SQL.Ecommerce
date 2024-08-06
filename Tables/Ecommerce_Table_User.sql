USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ecommerce_Table_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Number] [varchar](5) NULL,
	[Complement] [varchar](50) NULL,
	[Neighborhood] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](8) NULL,
	[CellPhone] [varchar](11) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](10) NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Ecommerce_Table_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


