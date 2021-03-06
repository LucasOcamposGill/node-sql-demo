USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectAll]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC[dbo].[Friends_SelectAll]



/*
	Execute [dbo].[Friends_SelectAll]
*/

as
BEGIN

	SELECT		Id
				,Title
				,Bio
				,Summary
				,Headline
				,Slug
				,StatusId
				,PrimaryImage
				,DateAdded
				,DateModified
				, TotalCount = COUNT(1) OVER()
		FROM dbo.Friends
  Order By NEWID()


END


GO
