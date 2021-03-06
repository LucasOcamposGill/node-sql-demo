USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_Insert]
           @Id int OUTPUT,
		   @FirstName nvarchar(50),
		   @LastName nvarchar(50),
		   @Email nvarchar(50),
		   @Password nvarchar(50),
		   @PasswordConfirm nvarchar(50),
		   @AvatarUrl nvarchar(MAX),
		   @TenantId nvarchar(50)


as 

/*

Declare		@Id						int				
		   ,@FirstName				nvarchar(50)	=	'Lucas'
		   ,@LastName				nvarchar(50)	=	'Ocampos'
		   ,@Email					nvarchar(50)	=	'Email@Email.com'
		   ,@Password				nvarchar(50)	=	'Password'
		   ,@PasswordConfirm		nvarchar(50)	=	'Password'
		   ,@AvatarUrl				nvarchar(MAX)	=	'AvatarUrl'
		   ,@TenantId				nvarchar(50)	=	'1'
Execute dbo.Users_Insert
			@Id	OUTPUT					
			,@FirstName				
			,@LastName				
			,@Email					
			,@Password				
			,@PasswordConfirm		
			,@AvatarUrl				
			,@TenantId	

Select * 
From Dbo.Users

*/


Begin


   DECLARE @DateAdded DATETIME2 = GETUTCDATE()
	INSERT INTO [dbo].Users
			([firstName]
           ,[LastName]
           ,[Email]
           ,[Password]
           ,[PasswordConfirm]
           ,[AvatarUrl]
           ,[TenantId]
		   ,[DateAdded]
		   )
     VALUES
			(
		   @FirstName,
		   @LastName,
		   @Email,
		   @Password,
		   @PasswordConfirm,
		   @AvatarUrl,
		   @TenantId,
		   @DateAdded
		   )

	SET @Id = SCOPE_IDENTITY()


END


GO
