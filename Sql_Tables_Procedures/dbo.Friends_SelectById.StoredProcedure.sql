USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectById]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Friends_SelectById]
			@Id int

/*

	declare @Id int = 10
	Execute [dbo].[Friends_SelectById] @Id

*/

as 
BEGIN

SELECT [Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImage]
      ,[DateAdded]
      ,[DateModified]
  FROM [dbo].[Friends]

  where Id = @Id
END


GO
