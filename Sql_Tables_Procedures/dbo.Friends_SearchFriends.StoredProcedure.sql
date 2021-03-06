USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SearchFriends]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Friends_SearchFriends]
			@query nvarchar(100)
			,@pageIndex int
			,@pageSize int
/*

	DECLARE 
		@query		nvarchar(100) = 'Miguel'
		,@pageIndex int				= 0
		,@pageSize int				= 1
	EXECUTE dbo.Friends_SearchFriends
	@query
	,@pageIndex
	,@pageSize
*/


as
BEGIN

Declare @offset int = @pageIndex * @pageSize

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
	, TotalCount = COUNT(1) OVER()
FROM [dbo].[Friends]


WHERE (Title LIKE '%' + @Query + '%' OR
		Bio LIKE '%' + @Query + '%' OR 
		Summary LIKE '%' + @Query + '%')
ORDER BY Id

		OFFSET @offSet Rows
		Fetch Next @pageSize Rows ONLY

END
GO
