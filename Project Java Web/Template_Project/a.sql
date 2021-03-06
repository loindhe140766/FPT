USE [TemplateProject]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[total] [int] NULL,
	[recName] [nvarchar](50) NULL,
	[recPhone] [varchar](12) NULL,
	[recAddress] [nvarchar](200) NULL,
	[cid] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[bid] [int] NULL,
	[pid] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[subTotal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cName] [nvarchar](200) NOT NULL,
	[image] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cusId] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2021 9:14:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[image] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[cId] [int] NULL,
 CONSTRAINT [PK__Product__DD36D562DF8A67A6] PRIMARY KEY CLUSTERED 
(
	[pId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin', N'123')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin2', N'1234')
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([bid], [date], [total], [recName], [recPhone], [recAddress], [cid], [status]) VALUES (9, CAST(N'2021-03-19' AS Date), 24499000, N'Hung San', N'0987987987', N'ha noi', 3, 2)
INSERT [dbo].[Bill] ([bid], [date], [total], [recName], [recPhone], [recAddress], [cid], [status]) VALUES (10, CAST(N'2021-03-22' AS Date), 6499000, N'Tuấn Long', N'13245648445', N'ninh binh', 2, 1)
INSERT [dbo].[Bill] ([bid], [date], [total], [recName], [recPhone], [recAddress], [cid], [status]) VALUES (11, CAST(N'2021-03-28' AS Date), 21000000, N'Minh Toan', N'0866188629', N'Dai hoc FPT', 5, 0)
INSERT [dbo].[Bill] ([bid], [date], [total], [recName], [recPhone], [recAddress], [cid], [status]) VALUES (12, CAST(N'2021-03-29' AS Date), 27998000, N'Đỗ Tuấn Long', N'13245648445', N'hn', 2, 2)
INSERT [dbo].[Bill] ([bid], [date], [total], [recName], [recPhone], [recAddress], [cid], [status]) VALUES (13, CAST(N'2021-04-11' AS Date), 3999000, N'Minh Toan', N'0866188629', N'ha noi', 5, 0)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (9, 3, 2500000, 1, 2500000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (9, 4, 21999000, 1, 21999000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (10, 2, 3999000, 1, 3999000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (10, 3, 2500000, 1, 2500000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (11, 27, 16000000, 1, 16000000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (11, 28, 5000000, 1, 5000000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (12, 1, 23999000, 1, 23999000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (12, 2, 3999000, 1, 3999000)
INSERT [dbo].[BillDetail] ([bid], [pid], [price], [quantity], [subTotal]) VALUES (13, 2, 3999000, 1, 3999000)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cId], [cName], [image]) VALUES (1, N'Apple', N'Apple-logo.png')
INSERT [dbo].[Category] ([cId], [cName], [image]) VALUES (2, N'SamSung', N'Logo-Samsung.png')
INSERT [dbo].[Category] ([cId], [cName], [image]) VALUES (3, N'OPPO', N'OPPO.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([cusId], [fullName], [address], [phone], [username], [password]) VALUES (1, N'Duc Loi', N'ha Noi', N'0866188629', N'ducloi', N'123')
INSERT [dbo].[Customer] ([cusId], [fullName], [address], [phone], [username], [password]) VALUES (2, N'Đỗ Tuấn Long', N'ninh binh', N'13245648445', N'longsan', N'123')
INSERT [dbo].[Customer] ([cusId], [fullName], [address], [phone], [username], [password]) VALUES (3, N'Hung San', N'ha noi', N'0987987987', N'hungsan', N'123')
INSERT [dbo].[Customer] ([cusId], [fullName], [address], [phone], [username], [password]) VALUES (4, N'Vinh San', N'Vinh', N'0987654321', N'vinhsan', N'123')
INSERT [dbo].[Customer] ([cusId], [fullName], [address], [phone], [username], [password]) VALUES (5, N'Minh Toan', N'ha noi', N'0866188629', N'toansan', N'123')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (1, N'IPhone 12 256GB', 29, 23999000.0000, N'ip12.jpg', N'Xịn quá trời Mua đi bạn ơi', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (2, N'SamSung Galaxy A20', 34, 3999000.0000, N'a20.jpg', N'ok', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (3, N'OPPO A12', 10, 2500000.0000, N'a12.jpg', N'OPPO', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (4, N'IPhone 11 128GB', 38, 21999000.0000, N'ip11.jpg', N'IP', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (6, N'SamSung Galaxy A50', 30, 4999000.0000, N'a50.jpg', N'cũng ok ra phết', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (7, N'SamSung Galaxy A30', 30, 3000000.0000, N'a30.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (8, N'SamSung Galaxy A71', 8, 6000000.0000, N'a71.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (9, N'OPPO A15', 12, 3000000.0000, N'a15.jpg', N'Mua đi bạn ơi', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (10, N'OPPO A92', 13, 4500000.0000, N'a92.jpg', N'Mua đi bạn ơi', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (11, N'SamSung Galaxy A70', 30, 5699000.0000, N'a70.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (12, N'IPhone 11 Pro 128GB', 20, 22999000.0000, N'ip11Pro.jpg', N'IPhone 11 128GB', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (13, N'IPhone 12 ProMax 256GB', 25, 25999000.0000, N'ip12ProMax.jpg', N'Mua đi bạn ơi', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (15, N'IPhone 11 ProMax 128GB', 20, 23499000.0000, N'ip11ProMax.jpg', N'IPhone 12 ProMax 128GB', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (16, N'IPhone 12 Mini 64GB', 20, 20499000.0000, N'ip12Mini.jpg', N'cũng ok ra phết', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (17, N'IP X 128GB', 20, 18999000.0000, N'ipX.jpg', N'cũng ok ra phết', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (19, N'IP XSMax 128GB', 30, 19999000.0000, N'ipXSMax.jpg', N'cũng ok ra phết', 1)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (20, N'SamSung Galaxy J7 Prime', 15, 4500000.0000, N'j7Prime.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (21, N'SamSung Galaxy J7 Pro', 20, 4500000.0000, N'j7pro.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (22, N'SamSung Galaxy S9', 20, 6300000.0000, N's9.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (23, N'SamSung Galxy S10', 10, 7400000.0000, N's10.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (24, N'SamSung Galaxy S20', 35, 12500000.0000, N's20.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (25, N'SamSung Galaxy S20 Ultra', 20, 13500000.0000, N's20Ultra.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (26, N'SamSung Galaxy S21', 18, 15000000.0000, N's21.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (27, N'SamSung Galaxy S21 Ultra', 20, 16000000.0000, N's21Ultra.jpg', N'Mua đi bạn ơi', 2)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (28, N'OPPO A93', 18, 5000000.0000, N'a93.jpg', N'Mua đi bạn ơi', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (29, N'OPPO Reno3', 20, 6000000.0000, N'reno3.jpg', N'Mua đi bạn ơi', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (30, N'OPPO Reno4', 20, 6500000.0000, N'reno4.jpg', N'Mua đi bạn ơi', 3)
INSERT [dbo].[Product] ([pId], [name], [quantity], [price], [image], [description], [cId]) VALUES (31, N'OPPO Reno5', 15, 7000000.0000, N'reno5.jpg', N'Mua đi bạn ơi', 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Customer] ([cusId])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__BillDetail__bid__5EBF139D] FOREIGN KEY([bid])
REFERENCES [dbo].[Bill] ([bid])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__BillDetail__bid__5EBF139D]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__BillDetail__pid__5FB337D6] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([pId])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__BillDetail__pid__5FB337D6]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__cId__3A81B327] FOREIGN KEY([cId])
REFERENCES [dbo].[Category] ([cId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__cId__3A81B327]
GO
