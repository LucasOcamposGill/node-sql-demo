USE [myDatabase]
GO
/****** Object:  StoredProcedure [dbo].[Users_DeleteById]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_DeleteById]
				@Id int


/*
	declare @Id int = 10
	Execute [dbo].[Users_DeleteById] @Id
*/



as
BEGIN

		DELETE 
		FROM [dbo].[Users]
		Where Id = @Id

END
GO
