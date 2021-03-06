USE [RequestAdmin]
GO
/****** Object:  Table [dbo].[account]    Script Date: 6/19/2021 9:15:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[fullName] [varchar](100) NULL,
	[shortName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/19/2021 9:15:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 6/19/2021 9:15:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[requestTo] [int] NOT NULL,
	[studentID] [varchar](10) NOT NULL,
	[dateCreated] [datetime] NOT NULL,
	[title] [varchar](300) NULL,
	[content] [text] NULL,
	[status] [int] NULL,
	[clodeDate] [datetime] NULL,
	[solvedBy] [varchar](100) NULL,
	[attachFile] [varchar](200) NULL,
	[solution] [text] NULL,
 CONSTRAINT [PK__Request__3213E83F5E60C84F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/19/2021 9:15:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password], [fullName], [shortName]) VALUES (N'admin', N'123', N'NguyenDucLoi', N'LoiND')
INSERT [dbo].[account] ([username], [password], [fullName], [shortName]) VALUES (N'b', N'1', N'ABC', N'ABC')
GO
INSERT [dbo].[Department] ([id], [name]) VALUES (1, N'Academy department')
INSERT [dbo].[Department] ([id], [name]) VALUES (2, N'Trainning department')
INSERT [dbo].[Department] ([id], [name]) VALUES (3, N'Management Department')
INSERT [dbo].[Department] ([id], [name]) VALUES (4, N'Examination Department')
INSERT [dbo].[Department] ([id], [name]) VALUES (5, N'Development Department')
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (1, 1, N'HE140766', CAST(N'2021-05-31T00:00:00.000' AS DateTime), N'in query for PE result', N'i wanna check my solution again', 0, NULL, NULL, N'J3.L.P0001(onlineQuiz) .docx', NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (3, 2, N'HE140755', CAST(N'2021-05-31T00:00:00.000' AS DateTime), N'change class', N'i want to change my class from SE1411 to SE1431', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (4, 1, N'He140755', CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'mark my PE again', N'my PE point í lower than i think, can you mark again for me', 0, NULL, NULL, N'1.png', NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (5, 3, N'HE140777', CAST(N'2021-05-31T00:00:00.000' AS DateTime), N'change room', N'i am living in A304, now i want to change into D104', 0, NULL, NULL, N'1.JPG', NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (6, 4, N'HE140788', CAST(N'2021-06-11T00:00:00.000' AS DateTime), N're-take FE', N'i want to take my FE exam in SWT one more time to increase point', 0, NULL, NULL, N'4.jpg', NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (7, 2, N'HE140766', CAST(N'2021-06-11T00:00:00.000' AS DateTime), N'Register to learn traditional instruments', N'since my slot 4 is empty, i would like to register for traditional instrument lessons at this time', 0, NULL, NULL, N'5.jpg', NULL)
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (8, 2, N'HE140755', CAST(N'2021-06-11T00:00:00.000' AS DateTime), N'postpone 1 semester', N'Due to health issues, I would like to postpone the Fall 2021 semester', 1, CAST(N'2021-06-19T09:12:05.047' AS DateTime), N'LoiND', N'6.jpg', N'accept')
INSERT [dbo].[Request] ([id], [requestTo], [studentID], [dateCreated], [title], [content], [status], [clodeDate], [solvedBy], [attachFile], [solution]) VALUES (9, 3, N'HE140788', CAST(N'2021-06-11T00:00:00.000' AS DateTime), N'Register as a collaborator', N'I want to apply to be a collaborator in the school''s upcoming Super Big Open Day program', 0, NULL, NULL, N'4.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
INSERT [dbo].[Student] ([id], [name]) VALUES (N'HE140755', N'Dinh Hung')
INSERT [dbo].[Student] ([id], [name]) VALUES (N'HE140766', N'Nguyen Duc Loi')
INSERT [dbo].[Student] ([id], [name]) VALUES (N'HE140777', N'Tran The Vinh')
INSERT [dbo].[Student] ([id], [name]) VALUES (N'HE140788', N'Do Tuan Long')
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__request__3E52440B] FOREIGN KEY([requestTo])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__request__3E52440B]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__student__3F466844] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__student__3F466844]
GO
