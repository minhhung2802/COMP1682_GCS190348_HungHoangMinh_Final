USE [master]
GO
/****** Object:  Database [DBHungHoangFinal]    Script Date: 4/29/2024 5:56:44 PM ******/
CREATE DATABASE [DBHungHoangFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBHungHoangFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBHungHoangFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBHungHoangFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBHungHoangFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBHungHoangFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBHungHoangFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBHungHoangFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBHungHoangFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBHungHoangFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBHungHoangFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBHungHoangFinal] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBHungHoangFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBHungHoangFinal] SET  MULTI_USER 
GO
ALTER DATABASE [DBHungHoangFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBHungHoangFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBHungHoangFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBHungHoangFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBHungHoangFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBHungHoangFinal] SET QUERY_STORE = OFF
GO
USE [DBHungHoangFinal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[TasksId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[PageName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [bigint] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[ClientName] [nvarchar](max) NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[ProjectCost] [float] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ProjectCategoryId] [bigint] NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectImage]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectImage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ProjectId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleModule]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleModule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_RoleModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ReporterId] [bigint] NOT NULL,
	[ProjectId] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[Priority] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Avartar] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Gender] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[IsSupperAdmin] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 4/29/2024 5:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240314085639_Innit_DB', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Xây Dựng', 3, CAST(N'2024-04-25T20:03:20.5081143' AS DateTime2), CAST(N'2024-04-25T20:03:20.5081239' AS DateTime2), 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Content], [TasksId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'', 0, CAST(N'2024-04-25T20:13:54.0697460' AS DateTime2), CAST(N'2024-04-25T20:13:54.0697469' AS DateTime2), 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [ProjectName], [Phone], [Location], [ClientName], [StartTime], [EndTime], [ProjectCost], [Email], [Title], [ProjectCategoryId], [ShortDescription], [Description], [Status], [ServiceId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Xây Dựng Cầu Quận 2', N'0987654321', N'QUận 2', N'Hồ Quang Bảo', CAST(N'2024-04-25T20:03:00.0000000' AS DateTime2), CAST(N'2024-05-09T20:03:00.0000000' AS DateTime2), 0, N'tunx@devblock.net', N'', 1, N'Dịch vụ Xây Dựng', N'<h2><strong>C&ocirc;ng an TP.HCM đ&atilde; chia sẻ về c&aacute;c chi&ecirc;u thức lừa đảo m&agrave; người d&acirc;n cần lưu &yacute; trong dịp lễ tới đ&acirc;y.</strong></h2>

<p>Tại buổi họp b&aacute;o về t&igrave;nh h&igrave;nh kinh tế - x&atilde; hội TP.HCM, chiều 25-4, Thượng t&aacute; L&ecirc; Mạnh H&agrave;, Ph&oacute; Trưởng ph&ograve;ng Tham mưu C&ocirc;ng an TP.HCM chia sẻ về c&aacute;c chi&ecirc;u lừa đảo m&agrave; người d&acirc;n cần lưu &yacute; trong dịp lễ 30-4 v&agrave; 1-5.</p>

<p><img alt="Thượng tá Lê Mạnh Hà, Phó Trưởng phòng Tham mưu, Công an TP.HCM thông tin tại họp báo. Ảnh: THÀNH NHÂN" class="initial loaded news-image" src="https://icdn.24h.com.vn/upload/2-2024/images/2024-04-25//1714048428-4-thuong-ta-le-manh-ha-pho-truong-phong-tham-muu-cong-an-3-2-7209-width1000height667.jpg" style="box-sizing:border-box; cursor:pointer; display:block; height:auto; line-height:24px; margin:0px auto; max-width:100%; padding:0px; transition:all 2s ease-in 0s; vertical-align:middle; width:740px" /></p>

<p>Thượng t&aacute; L&ecirc; Mạnh H&agrave;, Ph&oacute; Trưởng ph&ograve;ng Tham mưu, C&ocirc;ng an TP.HCM th&ocirc;ng tin tại họp b&aacute;o. Ảnh: TH&Agrave;NH NH&Acirc;N</p>

<p><strong>Cảnh gi&aacute;c chi&ecirc;u lừa đảo v&eacute; m&aacute;y bay gi&aacute; rẻ</strong></p>

<p>Thượng t&aacute; L&ecirc; Mạnh H&agrave; cho biết, tội phạm lừa đảo qua mạng lu&ocirc;n lợi dụng những sự kiện, những t&igrave;nh huống v&agrave; nhu cầu của người d&acirc;n v&agrave;o từng thời điểm để đưa ra c&aacute;c thủ đoạn lừa đảo, nhằm chiếm đoạt t&agrave;i sản.</p>

<p>&quot;Dịp lễ 30-4, 1-5 v&agrave; m&ugrave;a du lịch h&egrave;, c&aacute;c thủ đoạn của tội phạm l&agrave; lừa người d&acirc;n mua c&aacute;c tour du lịch gi&aacute; rẻ, m&aacute;y bay gi&aacute; rẻ để chiếm đoạt tiền mua v&eacute; v&agrave; mua tour du lịch&quot; -Thượng t&aacute; L&ecirc; Mạnh H&agrave; lưu &yacute;.</p>

<p>Để ph&ograve;ng ngừa tội phạm, c&ocirc;ng an đ&atilde; đẩy mạnh tuy&ecirc;n truyền để người d&acirc;n đề cao cảnh gi&aacute;c kh&ocirc;ng mua v&eacute; m&aacute;y bay, mua tour du lịch gi&aacute; rẻ tr&ecirc;n mạng m&agrave; kh&ocirc;ng x&aacute;c định được trang web ch&iacute;nh thống.</p>

<p>C&aacute;c doanh nghiệp thuộc lĩnh vực cần cảnh gi&aacute;c ph&aacute;t hiện c&aacute;c trang web, t&agrave;i khoản giả mạo doanh nghiệp, kịp thời tố c&aacute;o đến cơ quan chức năng để ngăn chặn, xử l&yacute;.</p>

<p>Lực lượng c&ocirc;ng an cũng tăng cường c&ocirc;ng t&aacute;c nắm t&igrave;nh h&igrave;nh tr&ecirc;n kh&ocirc;ng gian mạng để kịp thời c&oacute; giải ph&aacute;p ph&ograve;ng ngừa, ph&aacute;t hiện, xử l&yacute; đối tượng phạm tội.</p>

<p>Đại diện C&ocirc;ng an TP.HCM cũng khuyến c&aacute;o, dịp lễ cũng l&agrave; thời điểm c&aacute;c gia đ&igrave;nh, bạn b&egrave; tụ họp để vui chơi, giải tr&iacute;, sẽ c&oacute; những buổi tiệc sử dụng đồ uống c&oacute; cồn (rượu, bia...), do đ&oacute;, c&aacute;c h&agrave;nh vi vi phạm nồng độ cồn, tốc độ, đi sai l&agrave;n, vượt đ&egrave;n đỏ, kh&ocirc;ng đội mũ bảo hiểm cũng ph&aacute;t sinh tăng, đ&acirc;y l&agrave; những nguy&ecirc;n nh&acirc;n g&acirc;y ra tai nạn giao th&ocirc;ng.</p>

<p>Để đảm bảo an to&agrave;n, lực lượng CSGT sẽ tăng cường tuần tra, kiểm so&aacute;t v&agrave; xử l&yacute; c&aacute;c h&agrave;nh vi vi phạm tr&ecirc;n. Người d&acirc;n cần tu&acirc;n thủ c&aacute;c quy định về trật tự an to&agrave;n giao th&ocirc;ng để bảo vệ an to&agrave;n cho bản th&acirc;n v&agrave; gia đ&igrave;nh.</p>

<p><strong>Khuyến c&aacute;o về việc đi lại dịp lễ</strong></p>

<p>Thượng t&aacute; L&ecirc; Mạnh H&agrave; cũng cho biết, C&ocirc;ng an TP.HCM cũng c&oacute; những đ&aacute;nh gi&aacute; cơ bản về t&igrave;nh h&igrave;nh đi lại trong dịp nghỉ lễ.</p>

<p>Hiện tại, Cao tốc Cam L&acirc;m - Vĩnh Hảo dự kiến được th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 4, kịp phục vụ lưu th&ocirc;ng trong dịp lễ n&agrave;y. Dự đo&aacute;n, lưu lượng phương tiện v&agrave;o cao tốc TP.HCM - Long Th&agrave;nh - Dầu Gi&acirc;y sẽ tăng cao</p>
', 10, 1, CAST(N'2024-04-25T20:06:26.5030425' AS DateTime2), CAST(N'2024-04-25T20:06:26.5030426' AS DateTime2), 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectImage] ON 

INSERT [dbo].[ProjectImage] ([Id], [ImageURL], [ProjectId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'~/Uploads/Project/55b819dc-5292-447c-9ae8-e877563eb64b.jpg', 1, CAST(N'2024-04-25T20:06:51.7072545' AS DateTime2), CAST(N'2024-04-25T20:06:51.7072560' AS DateTime2), 1, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ProjectImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Employee', CAST(N'2024-03-14T15:56:38.6050008' AS DateTime2), CAST(N'2024-03-14T15:56:38.6050036' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'Admin', CAST(N'2024-03-14T15:56:38.6050516' AS DateTime2), CAST(N'2024-03-14T15:56:38.6050519' AS DateTime2), 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [Alias], [ShortDescription], [Contents], [ImageURL], [SortOrder], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Dịch vụ Xây Dựng', NULL, N'Dịch vụ Xây Dựng', N'', N'~/Uploads/Service/81c66622-0faf-4b5f-9bf9-e3c5b02e92e8.jpg', 0, CAST(N'2024-04-25T20:03:02.0434980' AS DateTime2), CAST(N'2024-04-25T20:03:02.0435003' AS DateTime2), 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([Id], [Name], [Content], [ReporterId], [ProjectId], [Status], [StartTime], [EndTime], [Priority], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Dọn chân cầu', N'Conasasa', 2, 1, 30, CAST(N'2024-04-25T08:12:00.0000000' AS DateTime2), CAST(N'2024-05-02T08:12:00.0000000' AS DateTime2), 10, CAST(N'2024-04-25T20:14:17.7706213' AS DateTime2), CAST(N'2024-04-25T20:14:17.7706232' AS DateTime2), 1, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [Gender], [Level], [IsSupperAdmin], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'admin@gmail.com', N'123', N'098765432', N'admin@gmail.com', NULL, NULL, NULL, 0, 0, 0, CAST(N'2024-03-14T15:56:38.6034048' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [Gender], [Level], [IsSupperAdmin], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'Leader1@gmail.com', N'123456', N'0987654321', N'Leader1', N'', N'HCM', CAST(N'2024-04-25T20:11:00.0000000' AS DateTime2), 1, 2, 0, CAST(N'2024-04-25T20:11:38.5461359' AS DateTime2), CAST(N'2024-04-25T20:11:38.5461379' AS DateTime2), 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, 1, 1, CAST(N'2024-03-14T15:56:38.6050814' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
USE [master]
GO
ALTER DATABASE [DBHungHoangFinal] SET  READ_WRITE 
GO
