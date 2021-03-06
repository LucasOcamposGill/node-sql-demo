USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectPaginated]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Friends_SelectPaginated]	@pageIndex int
											,@pageSize int


AS
/*

	DECLARE 
			@pageIndex			int	= 0
			,@pageSize			int	= 5

EXECUTE dbo.Friends_SelectPaginated		@pageIndex
										,@pageSize


*/

BEGIN


	Declare @offset int = @pageIndex * @pageSize

		SELECT	Id
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
		ORDER BY Id

		OFFSET @offSet Rows
		Fetch Next @pageSize Rows ONLY

END

GO
