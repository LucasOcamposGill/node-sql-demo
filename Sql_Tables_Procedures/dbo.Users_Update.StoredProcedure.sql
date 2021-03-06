USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Users_Update]
			@Id int,
		   @FirstName nvarchar(50),
		   @LastName nvarchar(50),
		   @Email nvarchar(50),
		   @Password nvarchar(50),
		   @PasswordConfirm nvarchar(50),
		   @AvatarUrl nvarchar(MAX),
		   @TenantId nvarchar(50)

as

Begin 

   DECLARE @DateModified DATETIME2 = GETUTCDATE()
   UPDATE [dbo].[Users] 
	SET
       [FirstName]				= @FirstName
      ,[LastName]				= @LastName
      ,[Email]					= @Email
      ,[Password]				= @Password
      ,[PasswordConfirm]		= @PasswordConfirm
      ,[AvatarUrl]				= @AvatarUrl
      ,[TenantId]				= @TenantId
      ,[DateModified]			= @DateModified
 WHERE Id = @Id


END


GO
