CREATE DATABASE [Final]

USE [Final]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 08/11/2020 01:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [nvarchar](10) NOT NULL,
	[TotalMoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 08/11/2020 01:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[OrderID] [nvarchar](10) NULL,
	[ProductName] [nvarchar](30) NULL,
	[Price] [int] NULL,
	[Amount] [int] NULL,
	[Into_Money] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 08/11/2020 01:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](30) NULL,
	[Price] [int] NULL,
	[Amount] [int] NULL,
	[ImgUrl] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/11/2020 01:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Account] [nvarchar](20) NULL,
	[Pass] [nvarchar](20) NULL,
	[Name] [nvarchar](30) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [bit] NULL,
	[Address] [nvarchar](50) NULL,
	[Question] [nvarchar](100) NULL,
	[Answer] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (N'1', 115680000)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (N'2', 0)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money]) VALUES (N'1', N'IPhone 11 256GB', 23900000, 3, 71700000)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money]) VALUES (N'1', N'IPhone 12 Mini 64GB', 21990000, 2, 43980000)
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (1, N'IPhone X 64GB', 9100000, 10, N'C:\Img\ipX.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (2, N'IPhone X 128GB', 10000000, 10, N'C:\Img\ipX.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (3, N'IPhone X Pro 128GB', 12500000, 9, N'C:\Img\ipXPro.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (4, N'IPhone X ProMax 256GB', 14000000, 10, N'C:\Img\ipXProMax.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (5, N'IPhone 11 64GB', 19990000, 10, N'C:\Img\ip11.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (6, N'IPhone 11 256GB', 23900000, 17, N'C:\Img\ip11.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (7, N'IPhone 11 128GB', 21900000, 20, N'C:\Img\ip11.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (8, N'IPhone 12 Mini 64GB', 21990000, 18, N'C:\Img\ip12mini.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (9, N'IPhone 12 64GB', 24990000, 20, N'C:\Img\ip12.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (10, N'IPhone 12 128GB', 26990000, 25, N'C:\Img\ip12.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (11, N'IPhone 12 Pro 128GB', 30990000, 25, N'C:\Img\ip12Pro.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (12, N'IPhone 12 Pro Max 128GB', 33990000, 25, N'C:\Img\ip12ProMax.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (13, N'IPhone 12 256GB', 25990000, 5, N'C:\Img\ip12.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (14, N'IPhone 12 Pro 256GB', 34990000, 25, N'C:\Img\ip12Pro.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (15, N'IPhone 12 Pro Max 256GB', 37990000, 25, N'C:\Img\ip12ProMax.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (16, N'IPhone 12 Pro 512GB', 40990000, 20, N'C:\Img\ip12Pro.PNG')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl]) VALUES (17, N'IPhone 12 Pro Max 512GB', 43990000, 25, N'C:\Img\ip12ProMax.PNG')
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer]) VALUES (N'admin', N'123', N'Team', CAST(N'2000-01-01' AS Date), 1, N'Ha Noi', N'What is your dream job?', N'Dong nat')
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer]) VALUES (N'admin1', N'123', N'Apple', CAST(N'2000-01-01' AS Date), 0, N'Ha Noi', N'What is your dream job?', N'Dong nat')
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
