USE [myDatabase]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 9/10/2020 12:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](120) NOT NULL,
	[Bio] [nvarchar](700) NOT NULL,
	[Summary] [nvarchar](255) NOT NULL,
	[Headline] [nvarchar](80) NOT NULL,
	[Slug] [nvarchar](100) NOT NULL,
	[StatusId] [int] NULL,
	[PrimaryImage] [nvarchar](max) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Friends] ON 

INSERT [dbo].[Friends] ([Id], [Title], [Bio], [Summary], [Headline], [Slug], [StatusId], [PrimaryImage], [DateAdded], [DateModified]) VALUES (7, N'Will', N'Wills bio ', N'Wills summary', N'Wills Headline', N'the slug', 1, N'the PRimary image', CAST(N'2020-03-19T17:33:24.3366667' AS DateTime2), CAST(N'2020-03-19T17:33:24.3366667' AS DateTime2))
INSERT [dbo].[Friends] ([Id], [Title], [Bio], [Summary], [Headline], [Slug], [StatusId], [PrimaryImage], [DateAdded], [DateModified]) VALUES (9, N'rob', N'robs bio', N'robs summary', N'robs headline', N'the slug', 1, N'the PRimary image', CAST(N'2020-03-19T23:08:27.5300000' AS DateTime2), CAST(N'2020-03-19T23:08:27.5300000' AS DateTime2))
INSERT [dbo].[Friends] ([Id], [Title], [Bio], [Summary], [Headline], [Slug], [StatusId], [PrimaryImage], [DateAdded], [DateModified]) VALUES (1002, N'Liam', N'the Bio', N'the summary', N'the headline', N'the slug', 1, N'the PRimary image', CAST(N'2020-05-29T22:55:44.3400000' AS DateTime2), CAST(N'2020-05-29T22:55:44.3400000' AS DateTime2))
INSERT [dbo].[Friends] ([Id], [Title], [Bio], [Summary], [Headline], [Slug], [StatusId], [PrimaryImage], [DateAdded], [DateModified]) VALUES (1004, N'Olivia', N'the Bio', N'the summary', N'the headline', N'the slug', 1, N'the PRimary image', CAST(N'2020-06-08T21:09:25.6400000' AS DateTime2), CAST(N'2020-06-08T21:09:25.6400000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Friends] OFF
ALTER TABLE [dbo].[Friends] ADD  CONSTRAINT [DF_Friends_DateAdded]  DEFAULT (getutcdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Friends] ADD  CONSTRAINT [DF_Friends_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
