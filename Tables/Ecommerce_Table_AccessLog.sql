USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ecommerce_Table_AccessLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[InternetProtocol] [varchar](50) NULL,
	[UserAgent] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
 CONSTRAINT [PK_Ecommerce_Table_AccessLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


