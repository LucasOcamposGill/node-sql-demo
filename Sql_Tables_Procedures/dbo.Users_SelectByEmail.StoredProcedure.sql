USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectByEmail]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_SelectByEmail]
			@Email nvarchar(50)

/*

	declare @Email nvarchar(50) = "testingagain@email.com"
	Execute [dbo].[Users_SelectByEmail] @Email

*/

as
BEGIN

			SELECT [Id]
				  ,[FirstName]
				  ,[LastName]
				  ,[Email]
				  ,[Password]
				  ,[TenantId]
			  FROM [dbo].[Users]
			  Where Email = @Email
END


GO
