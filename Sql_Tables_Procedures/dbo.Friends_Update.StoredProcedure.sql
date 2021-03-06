USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Update]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Friends_Update]
		@Id	int,
		@Title nvarchar(120),
		@Bio nvarchar(700),
		@Summary nvarchar(255),
		@Headline nvarchar(80),
		@Slug nvarchar(100),
		@StatusId int,
		@PrimaryImage nvarchar(max)

	
as

BEGIN

		UPDATE [dbo].[Friends]
		SET	   [Title]			= @Title
			  ,[Bio]			= @Bio
			  ,[Summary]		= @Summary
			  ,[Headline]		= @Headline
			  ,[Slug]			= @Slug
			  ,[StatusId]		= @StatusId
			  ,[PrimaryImage]	= @PrimaryImage

		 WHERE Id = @Id
END


GO
