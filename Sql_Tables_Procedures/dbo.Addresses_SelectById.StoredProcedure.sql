USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Addresses_SelectById]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Addresses_SelectById]
			@Id int
/*

	declare @Id int = 10
	Execute [dbo].[Addresses_SelectById] @Id

*/

as
BEGIN

	SELECT 
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
	  Where Id = @Id

END



GO
