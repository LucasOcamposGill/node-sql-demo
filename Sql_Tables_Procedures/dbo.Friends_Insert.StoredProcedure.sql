USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Friends_Insert]
           @Id int OUTPUT,
		   @Title nvarchar(120),
		   @Bio nvarchar(700),
		   @Summary nvarchar(255),
		   @Headline nvarchar(80),
		   @Slug nvarchar(100),
		   @StatusId int,
		   @PrimaryImage nvarchar(MAX)
as
/*

	DECLARE @Id					int		= 0

	DECLARE 
		   @Title				nvarchar(120)	= 'Lucas'
		   ,@Bio				nvarchar(700)	= 'Lucas bio'
		   ,@Summary			nvarchar(255)	= 'lucas summary'
		   ,@Headline			nvarchar(80)	= ' lucas headline'
		   ,@Slug				nvarchar(100)	= 'fgdsfghsdfgsdf'
		   ,@StatusId			int				= 1
		   ,@PrimaryImage		nvarchar(MAX)	= 'https://image.flaticon.com/icons/svg/2535/2535537.svg'

	EXECUTE dbo.Friends_Insert		@Id OUTPUT		
									,@Title			
									,@Bio			
									,@Summary		
									,@Headline		
									,@Slug			
									,@StatusId		
									,@PrimaryImage	
	Select *
	From bdo.Friends
	Where Id = @Id

*/
BEGIN

     INSERT INTO [dbo].[Friends]
           ([Title]
		   ,[Bio]
		   ,[Summary]
		   ,[Headline]
		   ,[Slug]
		   ,[StatusId]
		   ,[PrimaryImage])

	VALUES
		(
		   @Title ,
		   @Bio ,
		   @Summary,
		   @Headline,
		   @Slug ,
		   @StatusId,
		   @PrimaryImage 
		   )

		   SET @Id = SCOPE_IDENTITY()

END
GO
