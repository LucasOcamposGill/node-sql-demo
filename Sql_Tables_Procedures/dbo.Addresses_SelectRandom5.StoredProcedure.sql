USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Addresses_SelectRandom5]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Addresses_SelectRandom5]

/*

	Execute [dbo].[Addresses_SelectRandom5]

*/

as
BEGIN

	SELECT top 5
	      [Id]
		  ,[LineOne]
		  ,[SuiteNumber]
		  ,[City]
		  ,[State]
		  ,[PostalCode]
		  ,[IsActive]
		  ,[Lat]
		  ,[Long]
	  FROM [dbo].[Addresses]
	  Order By NEWID()

END



GO
