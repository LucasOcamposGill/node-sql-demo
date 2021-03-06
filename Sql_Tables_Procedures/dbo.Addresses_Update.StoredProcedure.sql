USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Addresses_Update]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Addresses_Update]
			@Id int,
			@LineOne nvarchar(50),
			@SuiteNumber nvarchar(50),
			@City nvarchar(50),
			@State nvarchar(50),
			@PostalCode nvarchar(50),
			@IsActive bit,
			@Lat float,
			@Long float
as


/*

DECLARE 		@Id				int				=	2
				,@LineOne		nvarchar(50)	=	'test'
				,@SuiteNumber	nvarchar(50)	=	'233'
				,@City			nvarchar(50)	=	'cedf'
				,@State			nvarchar(50)	=	'sdsd'	
				,@PostalCode	nvarchar(50)	=	'33feve'
				,@IsActive		bit				=	'1'
				,@Lat			float			=	33.7473
				,@Long			float			=	33.7473

Execute [dbo].[Addresses_Update] 
				@Id	
				,@LineOne	
				,@SuiteNumber
				,@City		
				,@State		
				,@PostalCode	
				,@IsActive
				,@Lat
				,@Long
*/


BEGIN

	UPDATE [dbo].[Addresses]
	   SET [LineOne]		= @LineOne
		  ,[SuiteNumber]	= @SuiteNumber
		  ,[City]			= @City
		  ,[State]			= @State
		  ,[PostalCode]		= @PostalCode
		  ,[IsActive]		= @IsActive
		  ,[Lat]			= @Lat
		  ,[Long]			= @Long
	 WHERE Id = @Id


END


GO
