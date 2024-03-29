USE [Language]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_import$]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_import$](
	[ID] [int] NOT NULL,
	[Фамилия] [nvarchar](255) NULL,
	[ Имя] [nvarchar](255) NULL,
	[ Отчество] [nvarchar](255) NULL,
	[ Пол] [nvarchar](255) NULL,
	[ Телефон] [nvarchar](255) NULL,
	[ Фотография клиента] [nvarchar](255) NULL,
	[ Дата рождения] [nvarchar](255) NULL,
	[ Email] [nvarchar](255) NULL,
	[ Дата регистрации] [nvarchar](255) NULL,
 CONSTRAINT [PK_client_import$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicee]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicee](
	[ID] [int] NOT NULL,
	[Наименование услуги] [nvarchar](255) NULL,
	[ Длительность] [nvarchar](255) NULL,
	[ Стоимость] [float] NULL,
	[ Действующая скидка] [float] NULL,
 CONSTRAINT [PK_Servicee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[ID] [int] NOT NULL,
	[Клиент] [nvarchar](255) NULL,
	[Начало оказания услуги] [datetime] NULL,
	[Услуга] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sheet1$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 12.03.2021 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (1, N'Голубев', N' Иосиф', N' Тимофеевич', N' м', N' 7(78)972-73-11 ', N' Клиенты\m18.jpg', N' 1982-05-06', N' smcnabb@att.net', N' 2018-08-18')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (2, N'Ермакова', N'Алла', N'Мироновна', N'ж', N' 7(06)437-13-73 ', N' Клиенты\48.jpg', N' 1976-01-22', N' whimsy@aol.com', N' 2017-02-09')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (3, N'Селиверстов', N'Глеб', N'Максимович', N' м', N' 7(20)554-28-68 ', N' Клиенты\m37.jpg', N' 1999-06-20', N' jigsaw@sbcglobal.net', N' 2016-01-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (4, N'Агафонов', N' Юстиниан', N' Олегович', N' м', N' 7(303)810-28-78 ', N' Клиенты\m1.jpg', N' 1997-02-02', N' staffelb@sbcglobal.net', N' 2016-06-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (5, N'Колобова', N' Злата', N' Романовна', N' ж', N' 7(50)884-07-35 ', N' Клиенты\18.jpg', N' 1994-08-25', N' sinkou@aol.com', N' 2016-12-03')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (6, N'Сысоева', N'Дарина', N'Ярославовна', N' ж', N' 7(0698)387-96-04 ', N' Клиенты\32.jpg', N' 1982-02-03', N' treit@verizon.net', N' 2016-05-13')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (7, N'Некрасов', N'Варлам', N'Михайлович', N'м', N' 7(019)258-06-35 ', N' Клиенты\m42.jpg', N' 2000-11-12', N' dogdude@verizon.net', N' 2017-12-03')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (8, N'Крюков', N' Наум', N' Ильяович', N' м', N' 7(81)657-88-92 ', N' Клиенты\m30.jpg', N' 1993-11-17', N' floxy@hotmail.com', N' 2017-02-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (9, N'Сидорова', N'Татьяна', N'Михайловна', N' ж', N' 7(51)732-91-79 ', N' Клиенты\42.jpg', N' 1974-04-24', N' tbeck@mac.com', N' 2018-10-03')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (10, N'Трофимова', N'Альжбета', N'Якововна', N' ж', N' 7(1084)658-92-95 ', N' Клиенты\25.jpg', N' 1988-10-22', N' gbacon@mac.com', N' 2017-09-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (11, N'Новиков', N'Адриан', N'Аркадьевич', N' м', N' 7(70)572-33-62 ', N' Клиенты\m40.jpg', N' 1974-01-15', N' multiplx@verizon.net', N' 2018-11-23')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (12, N'Мишина', N'Иветта', N'Андреевна', N' ж', N' 7(3926)244-81-96 ', N' Клиенты\30.jpg', N' 2002-10-05', N' aukjan@yahoo.com', N' 2016-01-24')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (13, N'Шестаков', N'Геннадий', N'Рубенович', N' м', N' 7(2066)037-11-60 ', N' Клиенты\m41.jpg', N' 2001-07-01', N' tokuhirom@live.com', N' 2018-12-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (14, N'Зуев', N'Матвей', N'Иванович', N' м', N' 7(5383)893-04-66 ', N' Клиенты\m38.jpg', N' 1981-03-28', N' brickbat@verizon.net', N' 2018-12-18')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (15, N'Турова', N'Георгина', N'Семёновна', N' ж', N' 7(555)321-42-99 ', N' Клиенты\27.jpg', N' 1974-05-28', N' yruan@optonline.net', N' 2018-02-22')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (16, N'Анисимов', N'Валентин', N'Пантелеймонович', N' м', N' 7(700)326-70-24 ', N' Клиенты\m99.jpg', N' 2000-12-10', N' aaribaud@hotmail.com', N' 2018-01-20')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (17, N'Анисимова', N' Тамара', N' Витальевна', N' ж', N' 7(66)128-04-10 ', N' Клиенты\2.jpg', N' 1988-06-16', N' schwaang@mac.com', N' 2016-02-25')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (18, N'Колобов', N' Орест', N' Юлианович', N' м', N' 7(1680)508-58-26 ', N' Клиенты\m27.jpg', N' 2001-07-14', N' parkes@verizon.net', N' 2017-01-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (19, N'Филатов', N'Аристарх', N'Дмитриевич', N' м', N' 7(696)235-29-24 ', N' Клиенты\m43.jpg', N' 1989-05-29', N' hampton@att.net', N' 2017-01-11')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (20, N'Орлова', N'Влада', N'Мартыновна', N' ж', N' 7(2506)433-38-35 ', N' Клиенты\22.jpg', N' 1990-06-26', N' rnelson@yahoo.ca', N' 2016-03-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (21, N'Алексеева', N' Элина', N' Матвеевна', N' ж', N' 7(8086)245-64-81 ', N' Клиенты\1.jpg', N' 2002-05-07', N' pthomsen@verizon.net', N' 2018-03-28')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (22, N'Бобров', N'Агафон', N'Лаврентьевич', N' м', N' 7(2159)507-39-57 ', N' Клиенты\m35.jpg', N' 1995-07-29', N' petersen@comcast.net', N' 2017-05-09')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (23, N'Бирюкова', N' Инара', N' Улебовна', N' ж', N' 7(098)346-50-58 ', N' Клиенты\5.jpg', N' 1978-07-21', N' smpeters@hotmail.com', N' 2017-10-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (24, N'Панфилов', N'Марк', N'Рудольфович', N' м', N' 7(764)282-55-22 ', N' Клиенты\m45.jpg', N' 1991-04-13', N' cremonini@optonline.net', N' 2016-02-23')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (25, N'Колесникова', N'Алина', N'Еремеевна', N' ж', N' 7(74)977-39-71 ', N' Клиенты\40.jpg', N' 2001-04-19', N' gfxguy@outlook.com', N' 2017-01-18')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (26, N'Морозов', N'Наум', N'Валерьянович', N' м', N' 7(636)050-96-13 ', N' Клиенты\m49.jpg', N' 1985-07-04', N' salesgeek@mac.com', N' 2016-05-02')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (27, N'Горбачёв', N'Давид', N'Тимурович', N' м', N' 7(53)602-85-41 ', N' Клиенты\m36.jpg', N' 1983-05-22', N' hedwig@att.net', N' 2018-12-17')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (28, N'Васильев', N' Оскар', N' Богданович', N' м', N' 7(585)801-94-29 ', N' Клиенты\m15.jpg', N' 1971-01-30', N' miturria@verizon.net', N' 2017-05-28')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (29, N'Ершова', N' Номи', N' Андреевна', N' ж', N' 7(7757)315-90-99 ', N' Клиенты\14.jpg', N' 2001-09-13', N' miltchev@mac.com', N' 2016-06-30')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (30, N'Медведев', N' Святослав', N' Юлианович', N'м', N' 7(3520)435-21-20 ', N' Клиенты\m13.jpg', N' 1972-10-04', N' hllam@comcast.net', N' 2018-10-13')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (31, N'Баранова', N' Эльмира', N' Дмитриевна', N'ж', N' 7(9240)643-15-50 ', N' Клиенты\4.jpg', N' 1977-01-15', N' jgmyers@comcast.net', N' 2016-07-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (32, N'Попова', N'Харита', N'Якуновна', N' ж', N' 7(335)386-81-06 ', N' Клиенты\36.jpg', N' 1997-12-16', N' firstpr@verizon.net', N' 2016-07-05')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (33, N'Кудряшов', N'Аверкий', N'Константинович', N' м', N' 7(88)732-96-30 ', N' Клиенты\m33.jpg', N' 1991-07-26', N' nanop@msn.com', N' 2018-03-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (34, N'Горшкова', N' Марта', N' Иосифовна', N'ж', N' 7(544)650-59-03 ', N' Клиенты\9.jpg', N' 2001-02-13', N' gbacon@mac.com', N' 2016-08-04')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (35, N'Кудрявцев', N' Богдан', N' Христофорович', N' м', N' 7(20)131-84-09 ', N' Клиенты\m31.jpg', N' 1988-02-27', N' lukka@hotmail.com', N' 2016-10-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (36, N'Гусев', N' Яков', N' Авксентьевич', N'м', N' 7(0972)781-11-37 ', N' Клиенты\m20.jpg', N' 1995-12-10', N' jdhedden@icloud.com', N' 2017-11-20')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (37, N'Крюкова', N' Авигея', N' Святославовна', N' ж', N' 7(499)318-88-53 ', N' Клиенты\19.jpg', N' 2000-08-10', N' simone@gmail.com', N' 2018-01-03')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (38, N'Степанова', N' Амелия', N' Робертовна', N' ж', N' 7(1217)441-28-42 ', N' Клиенты\15.jpg', N' 1970-06-06', N' rasca@hotmail.com', N' 2017-09-27')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (39, N'Суворова', N'Божена', N'Анатольевна', N' ж', N' 7(347)895-86-57 ', N' Клиенты\34.jpg', N' 1981-03-09', N' attwood@aol.com', N' 2016-01-28')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (40, N'Борисов', N' Аввакум', N' Артемович', N' м', N' 7(2296)930-08-88 ', N' Клиенты\m12.jpg', N' 1974-04-25', N' chlim@live.com', N' 2017-03-11')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (41, N'Бобылёв', N' Георгий', N' Витальевич', N' м', N' 7(88)685-13-51 ', N' Клиенты\m11.jpg', N' 1983-12-19', N' csilvers@mac.com', N' 2018-04-06')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (42, N'Дроздов', N' Вольдемар', N' Артемович', N' м', N' 7(307)456-99-05 ', N' Клиенты\m21.jpg', N' 1976-02-07', N' smpeters@me.com', N' 2017-07-18')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (43, N'Беляева', N'Сабрина', N'Федосеевна', N' ж', N' 7(6580)534-32-58 ', N' Клиенты\47.jpg', N' 1972-07-26', N' agapow@gmail.com', N' 2017-06-14')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (44, N'Блохин', N' Пантелеймон', N' Феликсович', N' м', N' 7(9524)556-48-98 ', N' Клиенты\m8.jpg', N' 1978-03-06', N' balchen@comcast.net', N' 2018-02-14')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (45, N'Шашкова', N'Гелла', N'Эдуардовна', N' ж', N' 7(57)446-21-04 ', N' Клиенты\43.jpg', N' 1979-02-24', N' jadavis@mac.com', N' 2016-11-16')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (46, N'Калашников', N' Артур', N' Юрьевич', N' м', N' 7(147)947-47-21 ', N' Клиенты\m10.jpg', N' 1972-12-13', N' oevans@aol.com', N' 2017-08-20')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (47, N'Корнилова', N'Анэля', N'Михайловна', N' ж', N' 7(20)980-01-60 ', N' Клиенты\26.jpg', N' 1973-04-02', N' jonathan@aol.com', N' 2016-05-22')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (48, N'Гущина', N' Янита', N' Федоровна', N' ж', N' 7(4544)716-68-96 ', N' Клиенты\11.jpg', N' 1999-03-02', N' lishoy@att.net', N' 2018-02-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (49, N'Волков', N'Людвиг', N'Витальевич', N' м', N' 7(8459)592-05-58 ', N' Клиенты\m50.jpg', N' 1977-12-27', N' jrkorson@msn.com', N' 2016-04-27')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (50, N'Князев', N' Терентий', N' Валерьевич', N' м', N' 7(98)397-23-23 ', N' Клиенты\m26.jpg', N' 1991-06-19', N' rjones@aol.com', N' 2018-06-25')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (51, N'Силин', N'Гаянэ', N'Анатольевич', N' м', N' 7(4547)615-22-69 ', N' Клиенты\m46.jpg', N' 1976-05-27', N' multiplx@comcast.net', N' 2017-05-05')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (52, N'Казаков', N'Дмитрий', N'Русланович', N' м', N' 7(51)682-19-40 ', N' Клиенты\m44.jpg', N' 1978-12-15', N' ozawa@verizon.net', N' 2016-05-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (53, N'Гусева', N' Роза', N' Дмитриевна', N'ж', N' 7(23)064-51-84 ', N' Клиенты\10.jpg', N' 1999-02-13', N' martyloo@live.com', N' 2017-12-12')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (54, N'Мамонтова', N'Марфа', N'Мироновна', N' ж', N' 7(38)095-64-18 ', N' Клиенты\29.jpg', N' 1984-10-19', N' rfoley@verizon.net', N' 2018-02-27')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (55, N'Галкин', N' Эрик', N' Онисимович', N' м', N' 7(759)873-77-39 ', N' Клиенты\m16.jpg', N' 1975-01-18', N' snunez@verizon.net', N' 2016-07-19')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (56, N'Архипова', N'Прасковья', N'Валерьевна', N' ж', N' 7(86)540-10-21 ', N' Клиенты\33.jpg', N' 1979-01-09', N' cgcra@live.com', N' 2018-07-23')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (57, N'Овчинникова', N'Лаура', N'Еремеевна', N' ж', N' 7(85)829-33-79 ', N' Клиенты\35.jpg', N' 1992-04-03', N' carcus@yahoo.ca', N' 2018-11-24')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (58, N'Андреева', N'Патрисия', N'Валерьевна', N' ж', N' 7(9648)953-81-26 ', N' Клиенты\37.jpg', N' 1993-11-18', N' jigsaw@aol.com', N' 2016-07-17')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (59, N'Авдеев', N'Самуил', N'Улебович', N' м', N' 7(3168)043-63-31 ', N' Клиенты\m96.jpg', N' 1996-07-04', N' cliffordj@mac.com', N' 2016-02-11')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (60, N'Бурова', N'Светлана', N'Лукьевна', N' ж', N' 7(358)173-82-21 ', N' Клиенты\39.jpg', N' 1979-01-04', N' wsnyder@aol.com', N' 2016-10-13')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (61, N'Ершов', N' Глеб', N' Федорович', N'м', N' 7(2608)298-40-82 ', N' Клиенты\m23.jpg', N' 1970-06-14', N' sjava@aol.com', N' 2016-09-14')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (62, N'Игнатов', N'Захар', N'Павлович', N' м', N' 7(578)574-73-36 ', N' Клиенты\m98.jpg', N' 1998-10-07', N' dieman@icloud.com', N' 2017-11-10')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (63, N'Комиссарова', N' Амалия', N' Робертовна', N'ж', N' 7(22)647-46-32 ', N' Клиенты\17.jpg', N' 1971-08-18', N' jorgb@msn.com', N' 2017-08-04')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (64, N'Быков', N' Трофим', N' Константинович', N' м', N' 7(3414)460-12-05 ', N' Клиенты\m14.jpg', N' 1994-12-20', N' jguyer@aol.com', N' 2016-04-17')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (65, N'Кузьмин', N' Леонтий', N' Валерьянович', N' м', N' 7(1340)148-90-68 ', N' Клиенты\m17.jpg', N' 2000-05-05', N' msloan@hotmail.com', N' 2017-10-12')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (66, N'Белозёрова', N' Диана', N' Антоновна', N' ж', N' 7(9900)174-59-87 ', N' Клиенты\7.jpg', N' 1989-02-27', N' dialworld@aol.com', N' 2017-01-30')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (67, N'Блинов', N' Евгений', N' Мэлсович', N' м', N' 7(0852)321-82-64 ', N' Клиенты\m7.jpg', N' 1994-01-05', N' moxfulder@outlook.com', N' 2017-05-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (68, N'Лазарев', N'Алексей', N'Богданович', N' м', N' 7(0055)737-37-48 ', N' Клиенты\m48.jpg', N' 1977-03-10', N' claesjac@me.com', N' 2017-01-02')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (69, N'Афанасьева', N'Розалия', N'Макаровна', N'ж', N' 7(0661)413-23-32 ', N' Клиенты\31.jpg', N' 1977-05-01', N' malattia@hotmail.com', N' 2017-09-06')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (70, N'Дементьева', N'Эдита', N'Онисимовна', N' ж', N' 7(198)922-28-76 ', N' Клиенты\38.jpg', N' 1975-09-17', N' frosal@hotmail.com', N' 2018-11-24')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (71, N'Калинин', N'Петр', N'Иванович', N'м', N' 7(90)316-07-17 ', N' Клиенты\m47.jpg', N' 1993-09-08', N' aschmitz@hotmail.com', N' 2016-05-26')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (72, N'Андреев', N' Станислав', N' Максович', N' м', N' 7(02)993-91-28 ', N' Клиенты\m3.jpg', N' 1975-10-10', N' budinger@mac.com', N' 2017-12-26')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (73, N'Киселёв', N' Устин', N' Яковлевич', N'м', N' 7(83)334-52-76 ', N' Клиенты\m25.jpg', N' 1985-01-08', N' dalamb@verizon.net', N' 2018-06-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (74, N'Гордеев', N' Павел', N' Семенович', N' м', N' 7(5243)599-66-72 ', N' Клиенты\m19.jpg', N' 1984-09-06', N' dawnsong@verizon.net', N' 2016-07-19')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (75, N'Горбачёва', N' Никки', N' Еремеевна', N'ж', N' 7(94)789-69-20 ', N' Клиенты\8.jpg', N' 1987-04-21', N' chinthaka@att.net', N' 2018-08-16')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (76, N'Копылов', N' Касьян', N' Робертович', N' м', N' 7(5774)679-82-06 ', N' Клиенты\m29.jpg', N' 1983-08-04', N' crobles@sbcglobal.net', N' 2018-03-18')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (77, N'Ефремов', N' Витольд', N' Авксентьевич', N' м', N' 7(93)922-14-03 ', N' Клиенты\m28.jpg', N' 1975-12-02', N' kwilliams@yahoo.ca', N' 2018-04-09')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (78, N'Баранов', N' Михаил', N' Романович', N' м', N' 7(750)985-94-13 ', N' Клиенты\m5.jpg', N' 1997-07-12', N' bigmauler@outlook.com', N' 2018-10-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (79, N'Дмитриева', N' Элина', N' Даниловна', N' ж', N' 7(787)140-48-84 ', N' Клиенты\12.jpg', N' 1988-12-10', N' vmalik@live.com', N' 2017-02-11')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (80, N'Федотов', N' Осип', N' Анатольевич', N' м', N' 7(590)702-33-06 ', N' Клиенты\m9.jpg', N' 1971-04-13', N' breegster@hotmail.com', N' 2018-07-23')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (81, N'Быкова', N' Тала', N' Георгьевна', N' ж', N' 7(13)915-53-53 ', N' Клиенты\6.jpg', N' 2000-02-22', N' ganter@optonline.net', N' 2016-08-13')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (82, N'Дементьев', N'Вадим', N'Ростиславович', N' м', N' 7(79)330-46-15 ', N' Клиенты\m39.jpg', N' 1993-07-10', N' jacks@aol.com', N' 2018-03-05')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (83, N'Евсеев', N' Макар', N' Васильевич', N' м', N' 7(2141)077-85-70 ', N' Клиенты\m22.jpg', N' 1977-09-13', N' parsimony@sbcglobal.net', N' 2018-12-05')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (84, N'Абрамов', N'Станислав', N'Филатович', N'м', N' 7(6545)478-87-79 ', N' Клиенты\m32.jpg', N' 1989-05-18', N' solomon@att.net', N' 2016-12-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (85, N'Артемьева', N' Лиза', N' Максимовна', N' ж', N' 7(696)972-70-21 ', N' Клиенты\3.jpg', N' 1996-05-17', N' snunez@yahoo.ca', N' 2018-10-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (86, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N' 7(9940)977-45-73 ', N' Клиенты\20.jpg', N' 1993-08-24', N' nichoj@mac.com', N' 2016-03-27')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (87, N'Ефимова', N' Магда', N' Платоновна', N' ж', N' 7(9261)386-15-92 ', N' Клиенты\16.jpg', N' 1995-08-16', N' rbarreira@me.com', N' 2017-08-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (88, N'Ефимов', N' Альберт', N' Проклович', N' м', N' 7(416)375-97-19 ', N' Клиенты\m6.jpg', N' 1997-10-29', N' houle@live.com', N' 2018-06-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (89, N'Лазарева', N'Эльвина', N'Робертовна', N' ж', N' 7(5564)609-81-37 ', N' Клиенты\28.jpg', N' 1996-02-16', N' ahuillet@comcast.net', N' 2018-04-11')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (90, N'Воронова', N'Изабелла', N'Вячеславовна', N' ж', N' 7(17)433-44-98 ', N' Клиенты\21.jpg', N' 1999-09-24', N' kildjean@sbcglobal.net', N' 2017-12-21')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (91, N'Куликова', N'Эвелина', N'Вячеславовна', N' ж', N' 7(0236)682-42-78 ', N' Клиенты\23.jpg', N' 1997-11-14', N' ilikered@hotmail.com', N' 2018-02-01')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (92, N'Егорова', N' Амалия', N' Дамировна', N'ж', N' 7(7486)408-12-26 ', N' Клиенты\13.jpg', N' 1999-09-28', N' drezet@yahoo.com', N' 2016-06-30')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (93, N'Александров', N' Станислав', N' Эдуардович', N' м', N' 7(18)164-05-12 ', N' Клиенты\m2.jpg', N' 1981-07-04', N' bigmauler@aol.com', N' 2018-11-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (94, N'Цветков', N' Демьян', N' Львович', N' м', N' 7(93)546-43-73 ', N' Клиенты\m4.jpg', N' 1996-03-29', N' hauma@icloud.com', N' 2016-02-12')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (95, N'Устинова', N'Юнона', N'Валентиновна', N' ж', N' 7(33)367-13-07', N' Клиенты\44.jpg', N' 1982-08-08', N' kempsonc@live.com', N' 2017-05-28')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (96, N'Костина', N'Любава', N'Авксентьевна', N' ж', N' 7(6419)959-21-87 ', N' Клиенты\41.jpg', N' 1972-07-13', N' gordonjcp@hotmail.com', N' 2016-02-26')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (97, N'Смирнов', N'Мартын', N'Арсеньевич', N' м', N' 7(6251)589-02-43 ', N' Клиенты\m34.jpg', N' 1996-06-25', N' haddawy@live.com', N' 2017-02-07')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (98, N'Федотова', N'Сандра', N'Владленовна', N' ж', N' 7(126)195-25-86 ', N' Клиенты\24.jpg', N' 1985-03-29', N' penna@verizon.net', N' 2016-11-08')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (99, N'Журавлёв', N' Леонтий', N' Яковлевич', N'м', N' 7(4403)308-56-96 ', N' Клиенты\m24.jpg', N' 2000-03-02', N' cmdrgravy@me.com', N' 2018-01-15')
INSERT [dbo].[client_import$] ([ID], [Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Фотография клиента], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (100, N'Большаков', N'Вадим', N'Данилович', N' м', N' 7(386)641-13-37 ', N' Клиенты\m97.jpg', N' 1970-05-15', N' uncle@gmail.com', N' 2018-08-04')
GO
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (1, N'Коррекция нарощенных ресниц', N' 45 мин', 1310, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (2, N'Подготовка к экзамену ACT', N' 50 мин', 1440, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (3, N'Киноклуб итальянского языка для студентов', N' 30 мин', 1760, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (4, N'Урок в группе французского языка для школьников', N'100 мин', 1970, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (5, N'Ультразвуковой пилинг', N' 45 мин', 1440, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (6, N'Киноклуб немецкого языка для детей', N' 120 мин', 1670, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (7, N'Урок в группе испанского языка для взрослых', N'30 мин', 1730, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (8, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N' 70 мин', 1610, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (9, N'Киноклуб английского языка для студентов', N'80 мин', 980, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (10, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N' 120 мин', 1180, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (11, N'Подготовка к экзамену IELTS Speaking Club', N' 90 мин', 1430, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (12, N'Ремонт подвески (ходовой)', N'180 мин', 680, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (13, N'Химический пилинг', N'25 мин', 1880, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (14, N'Киноклуб немецкого языка для студентов', N' 50 мин', 1140, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (15, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N' 110 мин', 1670, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (16, N'Киноклуб итальянского языка для детей', N' 70 мин', 1480, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (17, N'Урок в группе японского языка для школьников', N' 80 мин', 1300, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (18, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N' 110 мин', 900, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (19, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'42 мин', 1410, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (20, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N' 30 мин', 1580, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (21, N'Снятие и установка колес', N' 390 мин', 3130, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (22, N'Урок в группе английского языка для школьников', N'110 мин', 900, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (23, N'Занятие с русскоязычным репетитором японского языка', N'40 мин', 1260, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (24, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'30 мин', 990, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (25, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'70 мин', 1840, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (26, N'Индивидуальный онлайн-урок немецкого языка по Skype', N' 90 мин', 970, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (27, N'Урок в группе китайского языка для взрослых', N'70 мин', 1730, 0.25)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (28, N'Киноклуб французского языка для взрослых', N'90 мин', 1770, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (29, N'Ремонт автоэлектрики', N' 450 мин', 4230, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (30, N'Урок в группе китайского языка для школьников', N'50 мин', 1180, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (31, N'Удаление катализатора', N' 510 мин', 1930, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (32, N'Киноклуб китайского языка для студентов', N' 100 мин', 1990, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (33, N'Урок в группе китайского языка для студентов', N'40 мин', 2000, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (34, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N' 30 мин', 1330, 0.2)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (35, N'Киноклуб китайского языка для детей', N' 100 мин', 1120, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (36, N'Подготовка к экзамену TOEFL', N'100 мин', 1070, 0.05)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (37, N'Урок в группе итальянского языка для взрослых', N' 40 мин', 1290, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (38, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'120 мин', 1300, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (39, N'Миндальный пилинг', N'45 мин', 2430, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (40, N'Занятие с репетитором-носителем французского языка', N' 50 мин', 2040, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (41, N'Занятие с русскоязычным репетитором английского языка', N' 90 мин', 1950, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (42, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N' 90 мин', 1200, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (43, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N' 120 мин', 1760, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (44, N'Занятие с репетитором-носителем немецкого языка', N'120 мин', 1120, NULL)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (45, N'Киноклуб португальского языка для детей', N' 90 мин', 1710, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (46, N'Киноклуб португальского языка для студентов', N'30 мин', 1170, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (47, N'Киноклуб немецкого языка для взрослых', N' 100 мин', 1560, 0.1)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (48, N'Урок в группе немецкого языка для школьников', N'30 мин', 1570, 0.15)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (49, N'Урок в группе английского языка для взрослых', N'50 мин', 1010, 0.25)
INSERT [dbo].[Servicee] ([ID], [Наименование услуги], [ Длительность], [ Стоимость], [ Действующая скидка]) VALUES (50, N'Ремонт кронштейна глушителя', N' 570 мин', 1410, NULL)
GO
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (1, N'Ефимова', CAST(N'2019-12-22T15:10:00.000' AS DateTime), N'Урок в группе немецкого языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (2, N'Бобылёв', CAST(N'2019-06-07T17:20:00.000' AS DateTime), N'Киноклуб португальского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (3, N'Зуев', CAST(N'2019-03-04T17:20:00.000' AS DateTime), N'Индивидуальный урок испанского языка с преподавателем-носителем языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (4, N'Колобова', CAST(N'2019-12-01T14:40:00.000' AS DateTime), N'Киноклуб итальянского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (5, N'Калашников', CAST(N'2019-06-26T10:10:00.000' AS DateTime), N'Индивидуальный урок немецкого языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (6, N'Голубев', CAST(N'2019-12-05T10:20:00.000' AS DateTime), N'Занятие с русскоязычным репетитором английского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (7, N'Суворова', CAST(N'2019-11-16T11:20:00.000' AS DateTime), N'Урок в группе французского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (8, N'Калинин', CAST(N'2019-01-01T14:50:00.000' AS DateTime), N'Киноклуб итальянского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (9, N'Калашников', CAST(N'2019-02-01T18:00:00.000' AS DateTime), N'Интенсивный онлайн-курс немецкого языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (10, N'Агафонов', CAST(N'2019-06-23T08:00:00.000' AS DateTime), N'Киноклуб французского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (11, N'Попова', CAST(N'2019-08-18T16:00:00.000' AS DateTime), N'Киноклуб немецкого языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (12, N'Морозов', CAST(N'2019-11-27T18:50:00.000' AS DateTime), N'Урок в группе итальянского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (13, N'Медведев', CAST(N'2019-09-06T19:20:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (14, N'Калашников', CAST(N'2019-12-31T08:30:00.000' AS DateTime), N'Интенсивный онлайн-курс немецкого языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (15, N'Горбачёв', CAST(N'2019-12-28T16:00:00.000' AS DateTime), N'Киноклуб китайского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (16, N'Федотова', CAST(N'2019-01-29T16:30:00.000' AS DateTime), N'Урок в группе японского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (17, N'Бобров', CAST(N'2019-11-12T18:50:00.000' AS DateTime), N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (18, N'Калашников', CAST(N'2019-01-10T08:30:00.000' AS DateTime), N'Подготовка к экзамену TOEFL')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (19, N'Егорова', CAST(N'2019-09-29T13:40:00.000' AS DateTime), N'Индивидуальный урок немецкого языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (20, N'Александров', CAST(N'2019-03-23T19:50:00.000' AS DateTime), N'Киноклуб португальского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (21, N'Федотова', CAST(N'2019-04-29T15:00:00.000' AS DateTime), N'Урок в группе немецкого языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (22, N'Костина', CAST(N'2019-09-04T08:10:00.000' AS DateTime), N'Интенсивный курс с преподавателем-носителем английского языка для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (23, N'Казаков', CAST(N'2019-01-23T18:30:00.000' AS DateTime), N'Занятие с репетитором-носителем немецкого языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (24, N'Бобров', CAST(N'2019-01-16T09:00:00.000' AS DateTime), N'Урок в группе английского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (25, N'Евсеев', CAST(N'2019-07-15T14:10:00.000' AS DateTime), N'Киноклуб португальского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (26, N'Бобылёв', CAST(N'2019-04-04T09:10:00.000' AS DateTime), N'Занятие с репетитором-носителем французского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (27, N'Воронова', CAST(N'2019-04-30T18:10:00.000' AS DateTime), N'Урок в группе английского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (28, N'Некрасов', CAST(N'2019-05-25T17:10:00.000' AS DateTime), N'Интенсивный курс с преподавателем-носителем английского языка для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (29, N'Голубев', CAST(N'2019-08-11T12:50:00.000' AS DateTime), N'Занятие с репетитором-носителем французского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (30, N'Ершов', CAST(N'2019-01-09T10:20:00.000' AS DateTime), N'Индивидуальный урок немецкого языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (31, N'Горбачёв', CAST(N'2019-04-09T11:10:00.000' AS DateTime), N'Урок в группе китайского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (32, N'Степанова', CAST(N'2019-05-22T16:10:00.000' AS DateTime), N'Урок в группе английского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (33, N'Турова', CAST(N'2019-09-28T10:00:00.000' AS DateTime), N'Урок в группе итальянского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (34, N'Ершов', CAST(N'2019-01-05T16:00:00.000' AS DateTime), N'Урок в группе китайского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (35, N'Ефремов', CAST(N'2019-05-08T14:10:00.000' AS DateTime), N'Урок в группе испанского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (36, N'Федотова', CAST(N'2019-11-09T13:00:00.000' AS DateTime), N'Киноклуб немецкого языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (37, N'Комиссарова', CAST(N'2019-01-16T14:20:00.000' AS DateTime), N'Урок в группе немецкого языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (38, N'Колобова', CAST(N'2019-01-11T18:10:00.000' AS DateTime), N'Индивидуальный онлайн-урок немецкого языка по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (39, N'Комиссарова', CAST(N'2019-08-29T19:00:00.000' AS DateTime), N'Индивидуальный урок испанского языка с преподавателем-носителем языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (40, N'Ефимова', CAST(N'2019-12-31T19:10:00.000' AS DateTime), N'Киноклуб французского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (41, N'Воронова', CAST(N'2019-05-17T13:30:00.000' AS DateTime), N'Индивидуальный урок немецкого языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (42, N'Киселёв', CAST(N'2019-10-02T10:10:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (43, N'Корнилова', CAST(N'2019-11-27T11:30:00.000' AS DateTime), N'Киноклуб немецкого языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (44, N'Корнилова', CAST(N'2019-07-10T15:30:00.000' AS DateTime), N'Киноклуб португальского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (45, N'Блинов', CAST(N'2019-04-16T13:20:00.000' AS DateTime), N'Урок в группе китайского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (46, N'Андреев', CAST(N'2019-11-19T15:50:00.000' AS DateTime), N'Интенсивный онлайн-курс немецкого языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (47, N'Абрамов', CAST(N'2019-06-13T11:30:00.000' AS DateTime), N'Индивидуальный урок итальянского языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (48, N'Киселёв', CAST(N'2019-12-31T18:00:00.000' AS DateTime), N'Урок в группе японского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (49, N'Бобров', CAST(N'2019-12-19T19:30:00.000' AS DateTime), N'Интенсивный онлайн-курс немецкого языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (50, N'Костина', CAST(N'2019-03-16T11:30:00.000' AS DateTime), N'Индивидуальный онлайн-урок немецкого языка по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (51, N'Морозов', CAST(N'2019-11-23T18:40:00.000' AS DateTime), N'Урок в группе японского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (52, N'Васильев', CAST(N'2019-12-14T08:40:00.000' AS DateTime), N'Киноклуб итальянского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (53, N'Баранова', CAST(N'2019-07-04T17:10:00.000' AS DateTime), N'Индивидуальный урок французского языка с преподавателем-носителем языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (54, N'Куликова', CAST(N'2019-02-13T18:00:00.000' AS DateTime), N'Урок в группе китайского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (55, N'Калинин', CAST(N'2019-08-29T10:10:00.000' AS DateTime), N'Урок в группе испанского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (56, N'Большаков', CAST(N'2019-01-11T12:50:00.000' AS DateTime), N'Киноклуб португальского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (57, N'Гущина', CAST(N'2019-03-01T11:50:00.000' AS DateTime), N'Интенсивный курс с преподавателем-носителем португальского языка для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (58, N'Куликова', CAST(N'2019-02-12T19:40:00.000' AS DateTime), N'Урок в группе китайского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (59, N'Горбачёв', CAST(N'2019-12-26T16:30:00.000' AS DateTime), N'Урок в группе английского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (60, N'Гущина', CAST(N'2019-12-22T09:20:00.000' AS DateTime), N'Урок в группе итальянского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (61, N'Евсеев', CAST(N'2019-11-09T18:50:00.000' AS DateTime), N'Интенсивный курс с преподавателем-носителем английского языка для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (62, N'Агафонов', CAST(N'2019-08-27T11:40:00.000' AS DateTime), N'Подготовка к экзамену ACT')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (63, N'Блохин', CAST(N'2019-01-22T16:50:00.000' AS DateTime), N'Киноклуб португальского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (64, N'Кузьмина', CAST(N'2019-07-31T18:10:00.000' AS DateTime), N'Урок в группе французского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (65, N'Лазарев', CAST(N'2019-08-15T18:30:00.000' AS DateTime), N'Занятие с репетитором-носителем немецкого языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (66, N'Колобова', CAST(N'2019-02-11T13:30:00.000' AS DateTime), N'Интенсивный онлайн-курс португальского языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (67, N'Бобров', CAST(N'2019-01-05T08:40:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (68, N'Куликова', CAST(N'2019-06-06T19:20:00.000' AS DateTime), N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (69, N'Дмитриева', CAST(N'2019-01-06T15:00:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (70, N'Волков', CAST(N'2019-03-20T10:40:00.000' AS DateTime), N'Занятие с репетитором-носителем французского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (71, N'Федотова', CAST(N'2019-08-06T16:50:00.000' AS DateTime), N'Занятие с репетитором-носителем французского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (72, N'Лазарев', CAST(N'2019-10-17T13:30:00.000' AS DateTime), N'Киноклуб итальянского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (73, N'Игнатов', CAST(N'2019-04-07T10:40:00.000' AS DateTime), N'Индивидуальный онлайн-урок немецкого языка по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (74, N'Зуев', CAST(N'2019-06-28T14:20:00.000' AS DateTime), N'Подготовка к экзамену IELTS Speaking Club')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (75, N'Степанова', CAST(N'2019-01-03T18:50:00.000' AS DateTime), N'Киноклуб итальянского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (76, N'Ефимова', CAST(N'2019-01-22T10:50:00.000' AS DateTime), N'Киноклуб китайского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (77, N'Андреева', CAST(N'2019-01-31T12:00:00.000' AS DateTime), N'Индивидуальный онлайн-урок немецкого языка по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (78, N'Федотова', CAST(N'2019-07-17T08:20:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (79, N'Корнилова', CAST(N'2019-04-29T12:40:00.000' AS DateTime), N'Урок в группе французского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (80, N'Большаков', CAST(N'2019-02-18T18:20:00.000' AS DateTime), N'Интенсивный онлайн-курс китайского языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (81, N'Казаков', CAST(N'2019-03-15T10:50:00.000' AS DateTime), N'Урок в группе немецкого языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (82, N'Селиверстов', CAST(N'2019-09-10T18:20:00.000' AS DateTime), N'Урок в группе китайского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (83, N'Киселёв', CAST(N'2019-08-06T11:50:00.000' AS DateTime), N'Индивидуальный онлайн-урок немецкого языка по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (84, N'Попова', CAST(N'2019-08-20T19:10:00.000' AS DateTime), N'Урок в группе китайского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (85, N'Гущина', CAST(N'2019-11-15T17:50:00.000' AS DateTime), N'Подготовка к экзамену ACT')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (86, N'Ершов', CAST(N'2019-03-03T17:20:00.000' AS DateTime), N'Индивидуальный урок немецкого языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (87, N'Ефимова', CAST(N'2019-10-21T10:20:00.000' AS DateTime), N'Индивидуальный урок испанского языка с преподавателем-носителем языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (88, N'Агафонов', CAST(N'2019-10-12T08:50:00.000' AS DateTime), N'Киноклуб немецкого языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (89, N'Суворова', CAST(N'2019-11-11T18:50:00.000' AS DateTime), N'Интенсивный онлайн-курс китайского языка для компаний по Skype')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (90, N'Орлова', CAST(N'2019-01-03T14:40:00.000' AS DateTime), N'Киноклуб немецкого языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (91, N'Блохин', CAST(N'2019-07-06T11:30:00.000' AS DateTime), N'Киноклуб английского языка для студентов')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (92, N'Турова', CAST(N'2019-03-25T18:20:00.000' AS DateTime), N'Занятие с русскоязычным репетитором японского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (93, N'Беляева', CAST(N'2019-10-27T16:20:00.000' AS DateTime), N'Индивидуальный урок итальянского языка с русскоязычным преподавателем')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (94, N'Киселёв', CAST(N'2019-05-15T09:20:00.000' AS DateTime), N'Урок в группе испанского языка для взрослых')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (95, N'Андреев', CAST(N'2019-08-30T11:40:00.000' AS DateTime), N'Киноклуб португальского языка для детей')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (96, N'Бобылёв', CAST(N'2019-02-16T18:50:00.000' AS DateTime), N'Индивидуальный урок английского языка с преподавателем-носителем языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (97, N'Воронова', CAST(N'2019-09-24T13:40:00.000' AS DateTime), N'Занятие с русскоязычным репетитором английского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (98, N'Колобова', CAST(N'2019-06-09T13:40:00.000' AS DateTime), N'Занятие с русскоязычным репетитором японского языка')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (99, N'Куликова', CAST(N'2019-04-13T09:00:00.000' AS DateTime), N'Урок в группе французского языка для школьников')
INSERT [dbo].[Sheet1$] ([ID], [Клиент], [Начало оказания услуги], [Услуга]) VALUES (100, N'Селиверстов', CAST(N'2019-04-05T13:20:00.000' AS DateTime), N'Урок в группе китайского языка для школьников')
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_client_import$] FOREIGN KEY([ClientID])
REFERENCES [dbo].[client_import$] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_client_import$]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Servicee] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Servicee] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Servicee]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Sheet1$] FOREIGN KEY([ID])
REFERENCES [dbo].[Sheet1$] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Sheet1$]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
