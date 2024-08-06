USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ecommerce_Table_Geolocation_Places](
	[PlaceId] [int] NOT NULL,
	[Licence] [varchar](255) NULL,
	[OsmType] [varchar](50) NULL,
	[OsmId] [bigint] NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
	[DisplayName] [varchar](1000) NULL,
	[HouseNumber] [varchar](50) NULL,
	[Road] [varchar](255) NULL,
	[Suburb] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[Municipality] [varchar](255) NULL,
	[County] [varchar](255) NULL,
	[StateDistrict] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[ISO3166_2_lvl4] [varchar](50) NULL,
	[Region] [varchar](255) NULL,
	[Postcode] [varchar](50) NULL,
	[Country] [varchar](255) NULL,
	[CountryCode] [varchar](10) NULL
) ON [PRIMARY]
GO


