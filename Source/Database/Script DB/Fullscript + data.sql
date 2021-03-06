USE [master]
GO
/****** Object:  Database [TravelGuide]    Script Date: 11/1/2018 3:51:01 PM ******/
CREATE DATABASE [TravelGuide]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelGuide', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TravelGuide.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TravelGuide_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TravelGuide_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TravelGuide] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelGuide].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelGuide] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelGuide] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelGuide] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelGuide] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelGuide] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelGuide] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TravelGuide] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TravelGuide] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelGuide] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelGuide] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelGuide] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelGuide] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelGuide] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelGuide] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelGuide] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelGuide] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelGuide] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelGuide] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelGuide] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelGuide] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelGuide] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelGuide] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TravelGuide] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelGuide] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelGuide] SET  MULTI_USER 
GO
ALTER DATABASE [TravelGuide] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelGuide] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelGuide] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelGuide] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TravelGuide]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[ID_ADMIN] [int] NOT NULL,
	[NAME_ADMIN] [varchar](200) NOT NULL,
	[ADDRESS_ADMIN] [varchar](200) NULL,
	[TEL_ADMIN] [varchar](10) NULL,
	[EMAIL_ADMIN] [varchar](50) NULL,
	[DISASBLE] [bit] NULL,
	[PASS_ADMIN] [varchar](50) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[ID_ADMIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CITY](
	[ID_CITY] [varchar](3) NOT NULL,
	[NAME_CITY] [varchar](50) NULL,
 CONSTRAINT [PK_CITY] PRIMARY KEY CLUSTERED 
(
	[ID_CITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMMENT](
	[CONTENT_COMMENT] [varchar](1000) NULL,
	[ID_HOTEL] [int] NULL,
	[ID_RESTAURANT] [int] NULL,
	[ID_TRAVEL] [int] NULL,
	[ID_RESORT] [int] NULL,
	[ID_TOURISTSPOT] [int] NULL,
	[DT_COMMENT] [date] NULL,
	[FLAG_REPLY] [bit] NULL,
	[ID_COMMENT] [char](32) NOT NULL,
	[ID_USER] [char](32) NULL,
	[ID_REPLY] [char](32) NULL,
 CONSTRAINT [PK_COMMENT] PRIMARY KEY CLUSTERED 
(
	[ID_COMMENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOTEL]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOTEL](
	[ID_HOTEL] [int] NOT NULL,
	[NAME_HOTEL] [varchar](200) NOT NULL,
	[ID_CITY] [varchar](3) NULL,
	[ADDRESS_HOTEL] [varchar](200) NULL,
	[TEL_HOTEL] [varchar](10) NULL,
	[QUALITY_HOTEL] [int] NULL,
	[INTRODUCE_HOTEL] [varchar](200) NULL,
	[DES_HOTEL] [varchar](1000) NULL,
	[IMAGE_HOTEL] [varchar](200) NULL,
	[AVAILABLE] [bit] NULL,
	[PRICE_HOTEL] [int] NULL,
	[ISDISCOUNT_HOTEL] [bit] NULL,
	[DISCOUNT_HOTEL] [int] NULL,
	[IMAGE_DETAIL_HOTEL] [varchar](200) NULL,
 CONSTRAINT [PK_HOTEL] PRIMARY KEY CLUSTERED 
(
	[ID_HOTEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESORT]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RESORT](
	[ID_RESORT] [int] NOT NULL,
	[NAME_RESORT] [varchar](200) NOT NULL,
	[ID_CITY] [varchar](3) NULL,
	[ADDRESS_RESORT] [varchar](200) NULL,
	[TEL_RESORT] [varchar](10) NULL,
	[QUALITY_RESORT] [int] NULL,
	[AVAILABLE] [bit] NULL,
	[DES_RESORT] [varchar](1000) NULL,
	[IMAGE_RESORT] [varchar](200) NULL,
	[ISDISCOUNT_RESORT] [bit] NULL,
	[DISCOUNT_RESORT] [int] NULL,
	[PRICE_RESORT] [int] NULL,
	[IMAGE_DETAIL_RESORT] [varchar](200) NULL,
	[INTRODUCE_RESORT] [varchar](200) NULL,
 CONSTRAINT [PK_RESORT] PRIMARY KEY CLUSTERED 
(
	[ID_RESORT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESTAURANT]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RESTAURANT](
	[ID_RESTAURANT] [int] NOT NULL,
	[NAME_RESTAURANT] [varchar](200) NOT NULL,
	[ID_CITY] [varchar](3) NULL,
	[ADDRESS_RESTAURANT] [varchar](200) NULL,
	[TEL_RESTAURANT] [varchar](10) NULL,
	[QUALITY_RESTAURANT] [int] NULL,
	[AVAILABLE] [bit] NULL,
	[DES_RESTAURANT] [varchar](1000) NULL,
	[INTRODUCE_RESTAURANT] [varchar](200) NULL,
	[IMAGE_RESTAURANT] [varchar](200) NULL,
	[ISDISCOUNT_RES] [bit] NULL,
	[DISCOUNT_RES] [int] NULL,
	[PRICE_RESTAURANT] [int] NULL,
	[IMAGE_DETAIL_RESTAURANT] [varchar](200) NULL,
 CONSTRAINT [PK_RESTAURANT] PRIMARY KEY CLUSTERED 
(
	[ID_RESTAURANT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOURIST_SPOTS]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOURIST_SPOTS](
	[ID_TOURISTSPOT] [int] NOT NULL,
	[NAME_TOURISTSPOT] [varchar](200) NOT NULL,
	[ID_CITY] [varchar](3) NULL,
	[ADDRESS_TOURISTSPOT] [varchar](200) NULL,
	[TEL_TOURISTSPOT] [varchar](10) NULL,
	[QUALITY_TOURISTSPOT] [int] NULL,
	[DES_TOURIST_SPOTS] [varchar](1000) NULL,
	[INTRODUCE_TOURIST_SPOTS] [varchar](200) NULL,
	[IMAGE_TOURIST_SPOTS] [varchar](200) NULL,
	[IMAGE_DETAIL_TOURIST_SPOTS] [varchar](200) NULL,
 CONSTRAINT [PK_TOURISTSPOT] PRIMARY KEY CLUSTERED 
(
	[ID_TOURISTSPOT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRAVEL]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRAVEL](
	[ID_TRAVEL] [int] NOT NULL,
	[NAME_TRAVEL] [varchar](200) NOT NULL,
	[ID_CITY] [varchar](3) NULL,
	[ADDRESS_TRAVEL] [varchar](200) NULL,
	[TEL_TRAVEL] [varchar](10) NULL,
	[QUALITY_TRAVEL] [int] NULL,
	[AVAILABLE] [bit] NULL,
	[DES_TRAVEL] [varchar](1000) NULL,
	[INTRODUCE_TRAVEL] [varchar](200) NULL,
	[IMAGE_TRAVEL] [varchar](200) NULL,
	[ISDISCOUNT_TRAVEL] [bit] NULL,
	[DISCOUNT_TRAVEL] [int] NULL,
	[IMAGE_DETAIL_TRAVEL] [varchar](200) NULL,
 CONSTRAINT [PK_TRAVEL] PRIMARY KEY CLUSTERED 
(
	[ID_TRAVEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USERACCOUNT]    Script Date: 11/1/2018 3:51:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERACCOUNT](
	[NAME_USER] [varchar](200) NOT NULL,
	[ADDRESS_USER] [varchar](200) NULL,
	[TEL_USER] [varchar](10) NULL,
	[EMAIL_USER] [varchar](50) NULL,
	[DISASBLE] [bit] NULL,
	[PASS_USER] [varchar](50) NULL,
	[ID_USER] [char](32) NOT NULL,
 CONSTRAINT [PK_USERACCOUNT] PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ADMIN] ([ID_ADMIN], [NAME_ADMIN], [ADDRESS_ADMIN], [TEL_ADMIN], [EMAIL_ADMIN], [DISASBLE], [PASS_ADMIN]) VALUES (1, N'vu123', N'123 qwe', N'123', N'vu123@gmail.com', 0, N'123123')
INSERT [dbo].[ADMIN] ([ID_ADMIN], [NAME_ADMIN], [ADDRESS_ADMIN], [TEL_ADMIN], [EMAIL_ADMIN], [DISASBLE], [PASS_ADMIN]) VALUES (2, N'truong123', N'123 qwe', N'123', N'truong123@gmail.com', 0, N'123123')
INSERT [dbo].[ADMIN] ([ID_ADMIN], [NAME_ADMIN], [ADDRESS_ADMIN], [TEL_ADMIN], [EMAIL_ADMIN], [DISASBLE], [PASS_ADMIN]) VALUES (3, N'admin', N'asdf', N'123', N'adminTest@gmail.com', 0, N'123123')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'BL', N'Bac Lieu')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'BT', N'Binh Thuan')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'BTR', N'Ben Tre')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'CM', N'Ca Mau')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'CT', N'Can Tho')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'Dla', N'Da Lat')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'DN', N'Da Nang')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'DNA', N'Dong Nai')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'KG', N'Kien Giang')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'NT', N'Nha Trang')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'PT', N'Phan Thiet')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'QN', N'Quang Ninh')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'SG', N'Sai Gon')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'TN', N'Tay Ninh')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'TV', N'Tra Vinh')
INSERT [dbo].[CITY] ([ID_CITY], [NAME_CITY]) VALUES (N'VT', N'Vung Tau')
INSERT [dbo].[COMMENT] ([CONTENT_COMMENT], [ID_HOTEL], [ID_RESTAURANT], [ID_TRAVEL], [ID_RESORT], [ID_TOURISTSPOT], [DT_COMMENT], [FLAG_REPLY], [ID_COMMENT], [ID_USER], [ID_REPLY]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, CAST(0xE63E0B00 AS Date), NULL, N'108c983d75eb4a9280929568ebd0049f', NULL, NULL)
INSERT [dbo].[COMMENT] ([CONTENT_COMMENT], [ID_HOTEL], [ID_RESTAURANT], [ID_TRAVEL], [ID_RESORT], [ID_TOURISTSPOT], [DT_COMMENT], [FLAG_REPLY], [ID_COMMENT], [ID_USER], [ID_REPLY]) VALUES (N'Test', 1, NULL, NULL, NULL, NULL, CAST(0xE63E0B00 AS Date), 0, N'4579435e8f614036a18241aa7043fdea', N'20ece0e6a5c445eba5fccd250afcff38', NULL)
INSERT [dbo].[COMMENT] ([CONTENT_COMMENT], [ID_HOTEL], [ID_RESTAURANT], [ID_TRAVEL], [ID_RESORT], [ID_TOURISTSPOT], [DT_COMMENT], [FLAG_REPLY], [ID_COMMENT], [ID_USER], [ID_REPLY]) VALUES (N'Test', 1, NULL, NULL, NULL, NULL, CAST(0xE63E0B00 AS Date), 0, N'5aa20c5ccdcb40f4b652180e0490dccb', N'20ece0e6a5c445eba5fccd250afcff38', NULL)
INSERT [dbo].[COMMENT] ([CONTENT_COMMENT], [ID_HOTEL], [ID_RESTAURANT], [ID_TRAVEL], [ID_RESORT], [ID_TOURISTSPOT], [DT_COMMENT], [FLAG_REPLY], [ID_COMMENT], [ID_USER], [ID_REPLY]) VALUES (N'Test 4', 1, NULL, NULL, NULL, NULL, CAST(0xE63E0B00 AS Date), 0, N'78ef220af6244effaf8598f0bad9ddec', N'20ece0e6a5c445eba5fccd250afcff38', NULL)
INSERT [dbo].[COMMENT] ([CONTENT_COMMENT], [ID_HOTEL], [ID_RESTAURANT], [ID_TRAVEL], [ID_RESORT], [ID_TOURISTSPOT], [DT_COMMENT], [FLAG_REPLY], [ID_COMMENT], [ID_USER], [ID_REPLY]) VALUES (N'Test', 1, NULL, NULL, NULL, NULL, CAST(0xE63E0B00 AS Date), 0, N'd6e53e94c1cc46d89b62bfe6403e5a4e', N'20ece0e6a5c445eba5fccd250afcff38', NULL)
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (1, N'Muong Thanh Luxury Ca Mau Hotel', N'CM', N'The administrative and political center of Ca Mau province, Ward 9, Ca Mau city', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/CM_infor_7.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/CM_details_2.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (2, N'Anh Nguyet Hotel', N'CM', N'207 Phan Ngoc Hien, Ward 6, Ca Mau, Vietnam', N'0978155791', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/CM_infor_1.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/CM_details_6.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (3, N'Ham Luong Hotel', N'BT', N'200 C, Hung Vuong Street', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/BT_infor_2.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/BT_details_2.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (4, N'Ozon Hotel', N'CM', N'Ham Rong, Nam Can, Ca Mau', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/CM_infor_13.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/CM_details_7.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (5, N'International Hotel', N'CT', N'The administrative and political center of Ca Mau province, Ward 9, Ca Mau city', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/CT_infor_12.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/CT_infor_14.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (6, N'Vinpearl Can Tho Hotel', N'CT', N'209 Street 30/4, Xuan Khanh Street, Ninh Kieu District, Can Tho City', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/CT_infor_18.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/CT_details_2.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME_HOTEL], [ID_CITY], [ADDRESS_HOTEL], [TEL_HOTEL], [QUALITY_HOTEL], [INTRODUCE_HOTEL], [DES_HOTEL], [IMAGE_HOTEL], [AVAILABLE], [PRICE_HOTEL], [ISDISCOUNT_HOTEL], [DISCOUNT_HOTEL], [IMAGE_DETAIL_HOTEL]) VALUES (7, N'Sai Gon Ban Me Hotel', N'Dla', N'No 01-03 Phan Chu Trinh Street, Buon Ma Thuot, Dak Lak, Viet Nam', N'0291389689', 9, N'Hotel housed 285 rooms and suites .Hotel also housed 9 conference rooms, a gym and game rooms. There are 2 in house restaurants serving chinese and western cuisine,an executive lounge', N'Hotel is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments.  Hotel is part of a lovingly restored 1800 palace', N'~/Content/image/Hotel/infor/Dla_Sai Gon Ban Me Hotel_4.jpg', 1, 500, 0, 0, N'~/Content/image/Hotel/details/Dla_Sai Gon Ban Me Hotel_2.jpg')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (1, N'Ho Nam Resort', N'BL', N'Ward 1, Bac Lieu', N'0291389689', 9, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/BL_infor_4.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/BL_detail_3.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (2, N'Nha Mat Resort', N'BL', N'Nha Mat Resort, Nha Mat District, Bac Lieu Province', N'0911892288', 8, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/BL_infor_5.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/BT_infor_2.jpg', N'
You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market.')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (3, N'Ben Tre Riverside Resort', N'BT', N'708 Nguyen Van Tu Street, Ward 7, Ben Tre, Ben Tre', N'0978155791', 7, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/BT_infor_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/BT_infor_2.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (4, N'Forever Green Resort', N'BT', N'Phu Khuong, Phu Tuc, Chau Thanh, Ben Tre, Phu Tuc, Chau Thanh, Ben Tre', N'0978155791', 6, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/BT_infor_10.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/BT_infor_9.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (5, N'Resort Victoria Can Tho', N'CT', N'Cai Khe Ward, Ninh Kieu District Can Tho City', N'0978155791', 9, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/CT_infor_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/CT_infor_2.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (6, N'Vinpearl Resort & Spa Da Nang', N'DN', N'Non Nuoc beach, Da Nang', N'0978155791', 8, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/DN_Vinpearl Resort & Spa Da Nang_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/DN_Vinpearl Resort & Spa Da Nang_5.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (7, N'DIAMOND HOTEL RESORT', N'DNA', N'106 Nguyen Tri Phuong, Bien Hoa', N'0978155791', 5, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/Dna_DIAMOND HOTEL RESORT_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/Dna_DIAMOND HOTEL RESORT_5.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market ')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (8, N'InterContinental Danang Sun Peninsula Resort', N'DN', N'Tho Quang, Son Tra, Da Nang', N'0978155791', 9, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/DN_InterContinental Danang Sun Peninsula Resort_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/DN_InterContinental Danang Sun Peninsula Resort_2.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (9, N'Pullman Danang Beach Resort', N'DN', N'101 Nguyen Giap street, Khue My, Ngu Hanh Son, Da Nang 055000', N'0978155791', 5, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/DN_Pullman Danang Beach Resort_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/DN_Pullman Danang Beach Resort_4.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESORT] ([ID_RESORT], [NAME_RESORT], [ID_CITY], [ADDRESS_RESORT], [TEL_RESORT], [QUALITY_RESORT], [AVAILABLE], [DES_RESORT], [IMAGE_RESORT], [ISDISCOUNT_RESORT], [DISCOUNT_RESORT], [PRICE_RESORT], [IMAGE_DETAIL_RESORT], [INTRODUCE_RESORT]) VALUES (10, N'Ho Tram Beach Boutique Resort & Spa', N'VT', N'Xuyen Moc, Ba Ria Ba Ria Vung Tau, Vung Tau', N'0978155791', 5, 1, N'There is 1 Honeymoon suite of 56 mq; it is directly on the beach with stunning view, private terrace, large en-suite bathroom, indoor jacuzzi, mini bar, tea & coffee facilities and paid wifi connection. It have the possibility to be connect with a suite of 36 mq, with private entrance to make a Royal Family Suite of 92 mq.', N'~/Content/image/Resort/info/DN_InterContinental Danang Sun Peninsula Resort_1.jpg', 0, 0, 500, N'~/Content/image/Resort/detail/VT_Ho Tram Beach Boutique Resort & Spa_1.jpg', N'You will enjoy popular activities such as sightseeing, cycling and casual walks around the charming town centre, observing local people trading in the colourful open market')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (1, N'Thuyen Trang Quan', N'BL', N'128 Vo Thi Sau Street, Zone 2, Ward 8, Bac Lieu City, Vietnam', N'0291389689', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/BL_infor_1.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/BL_details_2.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (2, N'3D Coffee', N'BTR', N'98 C My Thanh An, Ben Tre 83000, Vietnam', N'0945784291', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/DN_infor_2.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/BT_details_1.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (3, N'Café Lotus Ninh Kieu', N'CT', N'2 Hai Ba Trung | Tan An, Ninh Kieu, Can Tho 10.029656, Vietnam', N'0931044688', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/CT_infor_2.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/CT_details_2.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (4, N'Anchor Beer Club', N'DN', N'29 Quang Dung Street, Thanh Khe District, Danang', N'0978155791', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/DN_infor_1.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/DN_details_1.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (5, N'La Maison Deli', N'DN', N'Lot A1-2-3 Street 2, Binh Hien Ward, Hai Chau District', N'0291389689', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/DN_infor_6.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/DN_details_6.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (6, N'Pink Pearl', N'KG', N'Bai Khem, An Thoi, Phu Quoc Island', N'0291389689', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/KG_infor_1.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/KG_details_1.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (7, N'The Pepper Tree Restaurant', N'KG', N'Tran Hung Dao Street La veranda hotel, Duong Dong, Phu Quoc Island, Vietnam', N'0973982988', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/KG_infor_5.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/KG_details_6.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (8, N'Artist Alley Restaurant', N'Dla', N'124/1 Phan Dinh Phung, Da Lat 670000, Vietnam', N'0941662207', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/LD_infor_1.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/LD_details_1.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (9, N'Poke Saigon Ly Tu Trong', N'SG', N'42 bis Ly Tu Trong First Floor, Ho Chi Minh City , Vietnam', N'0902474388', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/SG_Panel_4.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/SG_details_4.jpg')
INSERT [dbo].[RESTAURANT] ([ID_RESTAURANT], [NAME_RESTAURANT], [ID_CITY], [ADDRESS_RESTAURANT], [TEL_RESTAURANT], [QUALITY_RESTAURANT], [AVAILABLE], [DES_RESTAURANT], [INTRODUCE_RESTAURANT], [IMAGE_RESTAURANT], [ISDISCOUNT_RES], [DISCOUNT_RES], [PRICE_RESTAURANT], [IMAGE_DETAIL_RESTAURANT]) VALUES (10, N'The Chopsticks Saigon Restaurant', N'SG', N'216/4 Dien Bien Phu | Ward 7, District 3, Ho Chi Minh City 700000, Vietnam', N'0839322889', 9, 1, N'We are ready to arrange you an unforgettable celebration, restaurant staff will take care about all the smolest details: decorate the hall, arrange musicians, agree the celebration menu with the customer, will make all kinds of world cuisine dishes.', N'Serving delicious international and local cuisine in a romantic ambience. The delectable buffet spread, together with the amorous setting of both the indoor and terrace seating areas', N'~/Content/image/Restaurant/infor/SG_infor_15.jpg', 0, 0, 500, N'~/Content/image/Restaurant/details/SG_details_11.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (1, N'Vinh Hung ancient tower', N'DN', N'Vinh Hung A, Vinh Loi, DA NANG', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/Panel-5.jpg', N'~/Content/image/Tourist_Spots/detail/Panel-1.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (2, N'Phat ba Nam Hai', N'BL', N'De Bien, Nha Mat Ward, Bac Lieu', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/BL_Phat ba Nam Hai_1.jpg', N'~/Content/image/Tourist_Spots/detail/BL_Phat ba Nam Hai_2.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (3, N'Cong Tu Bac Lieu House', N'BL', N'No. 13, Dien Bien Phu, Ward 3, Bac Lieu City, Bac Lieu Province', N'0291389689', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/BL_CONG TU BAC LIEU HOUSE_1.JPG', N'~/Content/image/Tourist_Spots/detail/Panel-12.JPG')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (4, N'Cu Chi Tunnels', N'SG', N'TL15, Phu Hiep, Ho Chi Minh', N'0291389689', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/Panel-8.jpg', N'~/Content/image/Tourist_Spots/detail/Panel-9.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (5, N'Poshanu Cham Tower ', N'BL', N'Phu Hai, Phan Thiet city, Binh Thuan', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/Panel-13.jpg', N'~/Content/image/Tourist_Spots/detail/PT_Poshanu Cham Tower_1.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (6, N'Ba Om Pond', N'TV', N'Tra Vinh', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/Panel-16.jpg', N'~/Content/image/Tourist_Spots/detail/Panel-17.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (7, N'Sandy hills', N'BL', N'706B, Quarter 5, Mui Ne Ward, Phan Thiet city, Binh Thuan', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/Panel-19.jpg', N'~/Content/image/Tourist_Spots/detail/Panel-18.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (8, N'Duc Ba Cathedral', N'BL', N'01 Commune Paris, Ben Nghe, District 1, District 1 Ho Chi Minh', N'0978155791', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/SG_Duc Ba Cathedral_2.jpg', N'~/Content/image/Tourist_Spots/detail/SG_Duc Ba Cathedral_1.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (9, N'Ba Den Mountain', N'BL', N'Tay Ninh', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/TN_Ba Den Mountain_1.jpg', N'~/Content/image/Tourist_Spots/detail/TN_Ba Den Mountain_2.jpg')
INSERT [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT], [NAME_TOURISTSPOT], [ID_CITY], [ADDRESS_TOURISTSPOT], [TEL_TOURISTSPOT], [QUALITY_TOURISTSPOT], [DES_TOURIST_SPOTS], [INTRODUCE_TOURIST_SPOTS], [IMAGE_TOURIST_SPOTS], [IMAGE_DETAIL_TOURIST_SPOTS]) VALUES (10, N'Dau Tieng Lake', N'BL', N'Tay Ninh', N'', 9, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Tourist_Spots/info/TN_Dau Tieng Lake_1.jpg', N'~/Content/image/Tourist_Spots/detail/TN_Dau Tieng Lake_2.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (1, N'DKN', N'SG', N'SAI GON', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/image-12.jpg', 0, 0, N'~/Content/image/Travel/detail/RR.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (2, N'MAI LINH', N'TN', N'TAY NINH', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/1.jpg', 0, 0, N'~/Content/image/Travel/detail/RR2.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (3, N'PHUONG TRANG', N'CT', N'CAN THO', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/lexus.jpg', 0, 0, N'~/Content/image/Travel/detail/LEXUS.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (4, N'SAO DO', N'DN', N'DA NANG', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/Audi.jpg', 0, 0, N'~/Content/image/Travel/detail/AUDI.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (5, N'HUNG CUONG', N'VT', N'VUNG TAU', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/BMW.jpg', 0, 0, N'~/Content/image/Travel/detail/BMW.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (6, N'DKN', N'PT', N'PHAN THIET', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/image-11.jpg', 0, 0, N'~/Content/image/Travel/detail/RR3.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (7, N'VIN', N'BT', N'BEN TRE', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/Lexus_LS.jpg', 0, 0, N'~/Content/image/Travel/detail/MEC1.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (8, N'VINASUN', N'Dla', N'LAM DONG', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/14.jpg', 0, 0, N'~/Content/image/Travel/detail/SCBBG7ZH0JC003862-1c.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (9, N'TAY NINH', N'KG', N'KIEN GIANG', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/mercedes-maybach.jpg', 0, 0, N'~/Content/image/Travel/detail/Maybach.jpg')
INSERT [dbo].[TRAVEL] ([ID_TRAVEL], [NAME_TRAVEL], [ID_CITY], [ADDRESS_TRAVEL], [TEL_TRAVEL], [QUALITY_TRAVEL], [AVAILABLE], [DES_TRAVEL], [INTRODUCE_TRAVEL], [IMAGE_TRAVEL], [ISDISCOUNT_TRAVEL], [DISCOUNT_TRAVEL], [IMAGE_DETAIL_TRAVEL]) VALUES (10, N'IPHONE', N'TV', N'TRA VINH', N'0978155791', 9, 1, N'This article explains different ways to split a table across multiple entities and similarly to break an entity and map to multiple tables using entity framework code first', N'Note that the Students.cs has a StudentPhoto property which is assigned with [Required] attribute. This makes the relation one-to-one between Students and StudentPhotoes tables.', N'~/Content/image/Travel/info/15.jpg', 0, 0, N'~/Content/image/Travel/detail/MEC1.jpg')
INSERT [dbo].[USERACCOUNT] ([NAME_USER], [ADDRESS_USER], [TEL_USER], [EMAIL_USER], [DISASBLE], [PASS_USER], [ID_USER]) VALUES (N'Vu Ho', N'123 qwe', N'123123', N'vu123@gmail.com', 1, N'123123', N'20ece0e6a5c445eba5fccd250afcff38')
INSERT [dbo].[USERACCOUNT] ([NAME_USER], [ADDRESS_USER], [TEL_USER], [EMAIL_USER], [DISASBLE], [PASS_USER], [ID_USER]) VALUES (N'Vu Ho', N'123 qwe', N'123123', N'test123@gmail.com', 1, N'123123', N'd27010cecebb45a280e5b56e8767e662')
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTHOTEL] FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTHOTEL]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTRESORT] FOREIGN KEY([ID_RESORT])
REFERENCES [dbo].[RESORT] ([ID_RESORT])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTRESORT]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTRESTAURANT] FOREIGN KEY([ID_RESTAURANT])
REFERENCES [dbo].[RESTAURANT] ([ID_RESTAURANT])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTRESTAURANT]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTTOURISTSPOTS] FOREIGN KEY([ID_TOURISTSPOT])
REFERENCES [dbo].[TOURIST_SPOTS] ([ID_TOURISTSPOT])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTTOURISTSPOTS]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTTRAVEL] FOREIGN KEY([ID_TRAVEL])
REFERENCES [dbo].[TRAVEL] ([ID_TRAVEL])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTTRAVEL]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTUSERACCOUNT] FOREIGN KEY([ID_USER])
REFERENCES [dbo].[USERACCOUNT] ([ID_USER])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMENTUSERACCOUNT]
GO
ALTER TABLE [dbo].[HOTEL]  WITH CHECK ADD  CONSTRAINT [FK_HOTELCITY] FOREIGN KEY([ID_CITY])
REFERENCES [dbo].[CITY] ([ID_CITY])
GO
ALTER TABLE [dbo].[HOTEL] CHECK CONSTRAINT [FK_HOTELCITY]
GO
ALTER TABLE [dbo].[RESORT]  WITH CHECK ADD  CONSTRAINT [FK_RESORTCITY] FOREIGN KEY([ID_CITY])
REFERENCES [dbo].[CITY] ([ID_CITY])
GO
ALTER TABLE [dbo].[RESORT] CHECK CONSTRAINT [FK_RESORTCITY]
GO
ALTER TABLE [dbo].[RESTAURANT]  WITH CHECK ADD  CONSTRAINT [FK_RESTAURANTCITY] FOREIGN KEY([ID_CITY])
REFERENCES [dbo].[CITY] ([ID_CITY])
GO
ALTER TABLE [dbo].[RESTAURANT] CHECK CONSTRAINT [FK_RESTAURANTCITY]
GO
ALTER TABLE [dbo].[TOURIST_SPOTS]  WITH CHECK ADD  CONSTRAINT [FK_TOURISTSPOTCITY] FOREIGN KEY([ID_CITY])
REFERENCES [dbo].[CITY] ([ID_CITY])
GO
ALTER TABLE [dbo].[TOURIST_SPOTS] CHECK CONSTRAINT [FK_TOURISTSPOTCITY]
GO
ALTER TABLE [dbo].[TRAVEL]  WITH CHECK ADD  CONSTRAINT [FK_TRAVELCITY] FOREIGN KEY([ID_CITY])
REFERENCES [dbo].[CITY] ([ID_CITY])
GO
ALTER TABLE [dbo].[TRAVEL] CHECK CONSTRAINT [FK_TRAVELCITY]
GO
USE [master]
GO
ALTER DATABASE [TravelGuide] SET  READ_WRITE 
GO
