USE [Digital]
GO
/****** Object:  Table [dbo].[Digital]    Script Date: 6/4/2021 5:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tittle] [varchar](max) NULL,
	[description] [text] NULL,
	[image] [varchar](200) NULL,
	[author] [varchar](200) NULL,
	[dateCreate] [datetime] NULL,
	[shortDes] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Digital] ON 

INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (1, N'Bitcoin plunges: A bust or a buy?', N'Cryptocurrencies that seemed to be defying gravity just weeks ago came back down to earth with a bump on Wednesday after a roller-coaster ride which could undermine their potential as mainstream investments.

The two main digital currencies, bitcoin and ether, fell as much as 30% and 45% respectively, but significantly pared losses after two of their biggest backers - Tesla Inc (TSLA.O) chief Elon Musk and Ark Invest''s (ARKK.P) Chief Executive Cathie Wood - indicated their support for bitcoin.

While many analysts thought the explosion in crypto interest this year was not sustainable, the trigger for the shake-out was China''s move on Tuesday to ban financial and payment institutions from providing cryptocurrency services. It also warned investors against speculative crypto trading.', N'i1.jpg', N'Tommy Wilkes', CAST(N'2021-05-20T00:00:00.000' AS DateTime), N'The two main digital currencies, bitcoin and ether, fell as much as 30% and 45% respectively, but significantly pared losses after two of their biggest backers - Tesla Inc (TSLA.O) chief Elon Musk and Ark Invest''s (ARKK.P) Chief Executive Cathie Wood - indicated their support for bitcoin')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (2, N'U.S. flying taxi startup steps up legal pressure on rival over trade secrets', N'Wisk Aero, a flying taxi startup backed by Boeing (BA.N) and Google co-founder Larry Page''s Kitty Hawk Corp, asked a California court on Wednesday to stop the alleged use of its trade secrets by rival Archer Aviation and said it was cooperating with a criminal U.S. probe.

Wisk and Archer, a special purpose acquisition company (SPAC) whose investors include United Airlines (UAL.O), compete in the increasingly crowded market for electric vertical takeoff and landing aircraft, or eVTOLs. \n

Wisk''s motion for a preliminary injunction and hearing on July 7 is part of its ongoing litigation against Archer, which it accuses of stealing trade secrets and infringing on its patents as the new Palo Alto-based SPAC seeks to certify its eVOTL aircraft by 2024', N'i1.jpg', N'Tracy Rucinski', CAST(N'2021-05-20T00:00:00.000' AS DateTime), N'Wisk and Archer, a special purpose acquisition company (SPAC) whose investors include United Airlines (UAL.O), compete in the increasingly crowded market for electric vertical takeoff and landing aircraft, or eVTOLs.')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (3, N'Twitter finds its AI tends to crop out Black people, men from photos', N'Twitter Inc''s (TWTR.N) image-cropping algorithm has a problematic bias toward excluding Black people and men, the company said in new research on Wednesday, adding that "how to crop an image is a decision best made by people."

The study by three of its machine learning researchers was conducted after user criticism last year about image previews in posts excluding Black people''s faces.

It found an 8% difference from demographic parity in favor of women, and a 4% favor toward white individuals.

The paper cited several possible reasons, including issues with image backgrounds and eye color, but said none were an excuse.', N'i1.jpg', N'Paresh Dave', CAST(N'2021-05-20T00:00:00.000' AS DateTime), N'It found an 8% difference from demographic parity in favor of women, and a 4% favor toward white individuals')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (4, N'Apple made more than $100 mln in commissions from ''Fortnite'' - executive at trial', N'Apple Inc (AAPL.O) made more than $100 million in commissions from Epic Games'' "Fortnite" during the two years the online game was on the App Store, an Apple executive testified on Wednesday.

Michael Schmid, Apple''s head of game business development for the App Store, took the stand during the third week of an antitrust trial in federal court in Oakland, California. Apple kicked the popular game off its App Store last year after Epic introduced its own system for in-app payments', N'i1.jpg', N'Stephen Nellis', CAST(N'2021-05-20T02:13:00.000' AS DateTime), N'Apple Inc (AAPL.O) made more than $100 million in commissions from Epic Games'' "Fortnite" during the two years the online game was on the App Store, an Apple executive testified on Wednesday')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (5, N'For some of Japan''s lonely workers, COVID-19 brings a homecoming', N'After four years spent working and living alone, far from his family and friends, Tsuyoshi Tatebayashi packed his bags at the end of March and returned, at last, to his wife and two daughters.

Like hundreds of thousands of other white-collar workers, the 44-year-old IT engineer had been on a solo assignment, known as "tanshin funin", and wasn''t expecting to return to his family so soon.

But as the COVID-19 pandemic dragged on, his employer, Fujitsu (6702.T), decided to bring its far-flung workers home, becoming one of Japan''s first big firms to make a start in ending the long-established practice', N'i1.jpg', N'Tim Kelly', CAST(N'2021-05-20T06:55:00.000' AS DateTime), N'After four years spent working and living alone, far from his family and friends, Tsuyoshi Tatebayashi packed his bags at the end of March and returned, at last, to his wife and two daughters.')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (6, N'Amazon.com faces five new racial, gender bias lawsuits', N'Amazon.com Inc (AMZN.O) was hit on Wednesday with five new lawsuits by women who worked in corporate or warehouse management roles, and accused the online retailer of gender bias, racial bias or both.', N'i1.jpg', N'Jonathan Stempel', CAST(N'2021-05-20T06:07:00.000' AS DateTime), N'Amazon.com Inc (AMZN.O) was hit on Wednesday with five new lawsuits by women who worked in corporate or warehouse management roles, and accused the online retailer of gender bias, racial bias or both.')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (7, N'Dell, HP say chip shortages will hit PC supplies this year', N'(Reuters) -Dell Technologies Inc and HP Inc (NYSE:HPQ) reported quarterly revenue that beat Wall Street estimates on Thursday, as customers continued to shop for personal computers, even as pandemic-led restrictions eased in many parts of the world.

However, shares of Dell fell 1%, while those of HP dropped as much as 6%, after both companies warned the ongoing computer chip shortage could impact their ability to meet demand for laptops this year.

"The component supply situation remains constrained," Dell Chief Financial Officer Thomas Sweet said in post earnings call, adding that rising costs to procure these chips would hit its operating income in the current quarter by the low to mid-single digits and lead to slightly lower revenue on a sequential basis.', N'i1.jpg', N'Reuters', CAST(N'2021-05-28T07:15:00.000' AS DateTime), N'Dell Technologies Inc (DELL.N) and HP Inc (HPQ.N) reported quarterly revenue that beat Wall Street estimates on Thursday, as customers continued to shop for personal computers, even as pandemic-led restrictions eased in many parts of the world.')
INSERT [dbo].[Digital] ([id], [tittle], [description], [image], [author], [dateCreate], [shortDes]) VALUES (8, N'Cryptos turn choppy as bounce momentum ebbs', N'Cryptocurrencies slipped on Thursday but without falling through recent lows, as enough traders clung to hopes that the asset class can claw its way back from last week''s plunge', N'i1.jpg', N'Reuters', CAST(N'2021-05-27T13:42:00.000' AS DateTime), N'Cryptocurrencies slipped on Thursday but without falling through recent lows, as enough traders clung to hopes that the asset class can claw its way back from last week''s plunge')
SET IDENTITY_INSERT [dbo].[Digital] OFF
GO
