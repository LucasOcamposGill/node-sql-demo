USE [myDatabase]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](64) NOT NULL,
	[PasswordConfirm] [nvarchar](50) NOT NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[TenantId] [nvarchar](30) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [PasswordConfirm], [AvatarUrl], [TenantId], [DateAdded], [DateModified]) VALUES (37, N'pdated tuest', N'last', N'castncrewdemo@dispostable.com', N'$2b$04$MkFuN0KGz6ZkBv67VlvfL.owBl7WLV8dO2IzJkZyYpL', N'$2b$04$MkFuN0KGz6ZkBv67VlvfL.owBl7WLV8dO2IzJkZyYpL', N'1', N'33', CAST(N'2020-09-08T20:40:21.3933333' AS DateTime2), CAST(N'2020-09-08T20:40:21.3933333' AS DateTime2))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [PasswordConfirm], [AvatarUrl], [TenantId], [DateAdded], [DateModified]) VALUES (38, N'pdated tuest', N'last', N'castncrewdemo@dispostable.com', N'$2b$04$IYa2UPuS9VTMBSb6lq8Ip.uCygRI7yssqO26oJzogNS', N'$2b$04$IYa2UPuS9VTMBSb6lq8Ip.uCygRI7yssqO26oJzogNS', N'1', N'33', CAST(N'2020-09-08T20:40:54.3633333' AS DateTime2), CAST(N'2020-09-08T20:40:54.3633333' AS DateTime2))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [PasswordConfirm], [AvatarUrl], [TenantId], [DateAdded], [DateModified]) VALUES (39, N'pdated tuest', N'last', N'castncrewdemo@dispostable.com', N'$2b$04$XGDlCKsst3Tbrl/LZQS0Je4Tv.95QTWp90vAq5MMerH', N'$2b$04$XGDlCKsst3Tbrl/LZQS0Je4Tv.95QTWp90vAq5MMerH', N'1', N'33', CAST(N'2020-09-08T20:41:16.3100000' AS DateTime2), CAST(N'2020-09-08T20:42:04.2166667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateAdded]  DEFAULT (getutcdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
