USE [Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ecommerce_Procedure_Geolocation_Place_Insert]
    @PlaceId INT,
    @Licence VARCHAR(255),
    @OsmType VARCHAR(50),
    @OsmId BIGINT,
    @Latitude VARCHAR(50),
    @Longitude VARCHAR(50),
    @DisplayName VARCHAR(1000),
    @HouseNumber VARCHAR(50),
    @Road VARCHAR(255),
    @Suburb VARCHAR(255),
    @City VARCHAR(255),
    @Municipality VARCHAR(255),
    @County VARCHAR(255),
    @StateDistrict VARCHAR(255),
    @State VARCHAR(255),
    @ISO3166_2_lvl4 VARCHAR(50),
    @Region VARCHAR(255),
    @Postcode VARCHAR(50),
    @Country VARCHAR(255),
    @CountryCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Ecommerce_Table_Geolocation_Places] (
        PlaceId, Licence, OsmType, OsmId, Latitude, Longitude, DisplayName,
        HouseNumber, Road, Suburb, City, Municipality, County, StateDistrict,
        State, ISO3166_2_lvl4, Region, Postcode, Country, CountryCode
    )
    VALUES (
        @PlaceId, @Licence, @OsmType, @OsmId, @Latitude, @Longitude, @DisplayName,
        @HouseNumber, @Road, @Suburb, @City, @Municipality, @County, @StateDistrict,
        @State, @ISO3166_2_lvl4, @Region, @Postcode, @Country, @CountryCode
    );

    SELECT SCOPE_IDENTITY() AS NewPlaceId;
END;

GO


