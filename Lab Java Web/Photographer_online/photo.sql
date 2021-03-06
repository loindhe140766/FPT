USE [Photographer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/3/2021 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Address] [nvarchar](300) NULL,
	[City] [nvarchar](300) NULL,
	[Country] [nvarchar](300) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 7/3/2021 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[GalleryID] [int] NOT NULL,
	[GalleryName] [varchar](100) NULL,
	[Description] [text] NULL,
	[BigImage] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 7/3/2021 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] NOT NULL,
	[GalleryID] [int] NULL,
	[image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([Address], [City], [Country], [Phone], [Email]) VALUES (N'Viet Nam', N'Ha Noi', N'FPT University', N'024 7300 1866', N'daihocfpt@fpt.edu.vn')
GO
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Description], [BigImage]) VALUES (1, N'Gallery 1', N'A photographer is a professional that focuses on the art of taking photographs with a digital or film camera. Photographers use artificial and/or natural lighting to snap pictures of various people, places and things in a variety of settings. Some photographers focus on studio work, while other explore the natural, outside world.', N'img3.jpg')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Description], [BigImage]) VALUES (2, N'Gallery 2', N'A photographer generally works in a freelance capacity, and is hired for specific jobs by numerous clients. Some photographers work exclusively in certain segments of the industry, such as wedding, graduation and other event-type settings, while others do mainly corporate work, and spend most of their time taking photographs that will appear on business websites and other promotional material.', N'img5.jpg')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Description], [BigImage]) VALUES (3, N'Galley 3', N'A part-time or freelance photographer who is hired by a client is responsible for following the client''s wishes down to the finest details, as well as for setting up a business model that makes pricing and options clearly visible and accessible.', N'img1.jpg')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Description], [BigImage]) VALUES (4, N'Galley 4', N'A professional photographer who works full-time often does studio work that involves taking pictures in a controlled interior setting, with professional or amateur models. These photographers can be freelance, or can also be kept on retainer by certain magazines and fashion companies.', N'img1.jpg')
GO
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (3, 1, N'img3.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (4, 1, N'img4.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (5, 1, N'img5.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (6, 1, N'img1.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (7, 1, N'img2.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (8, 1, N'img4.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (9, 1, N'img5.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (10, 1, N'img6.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (11, 2, N'img5.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (12, 2, N'img4.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (13, 2, N'img8.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (14, 2, N'img6.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (15, 2, N'img2.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (16, 2, N'img1.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (17, 2, N'img3.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (18, 2, N'img7.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (21, 3, N'img1.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (22, 3, N'img7.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (23, 3, N'img4.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (24, 3, N'img2.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (25, 3, N'img8.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (31, 4, N'img1.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (32, 4, N'img3.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (33, 4, N'img7.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (34, 4, N'img5.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (35, 4, N'img8.jpg')
INSERT [dbo].[Image] ([ID], [GalleryID], [image]) VALUES (36, 4, N'img4.jpg')
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([GalleryID])
GO
