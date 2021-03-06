USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectById]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Users_SelectById]
			@Id int

/*

	declare @Id int = 26
	Execute [dbo].[Users_SelectById] @Id

*/

as
BEGIN

			SELECT [Id]
				  ,[FirstName]
				  ,[LastName]
				  ,[Email]
				  ,[Password]
				  ,[PasswordConfirm]
				  ,[AvatarUrl]
				  ,[TenantId]
				  ,[DateAdded]
				  ,[DateModified]
			  FROM [dbo].[Users]
			  Where Id = @Id
END


GO
