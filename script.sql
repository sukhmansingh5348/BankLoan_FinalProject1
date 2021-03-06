USE [master]
GO
/****** Object:  Database [bankloan]    Script Date: 3/25/2020 5:54:58 PM ******/
CREATE DATABASE [bankloan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bankloan_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bankloan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bankloan_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bankloan.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bankloan] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bankloan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bankloan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bankloan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bankloan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bankloan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bankloan] SET ARITHABORT OFF 
GO
ALTER DATABASE [bankloan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bankloan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bankloan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bankloan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bankloan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bankloan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bankloan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bankloan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bankloan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bankloan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bankloan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bankloan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bankloan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bankloan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bankloan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bankloan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bankloan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bankloan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bankloan] SET  MULTI_USER 
GO
ALTER DATABASE [bankloan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bankloan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bankloan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bankloan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bankloan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bankloan] SET QUERY_STORE = OFF
GO
USE [bankloan]
GO
/****** Object:  Table [dbo].[Emloyee]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emloyee](
	[id] [int] NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Designation] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installment]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installment](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[LoanType] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[PaymentDate] [varchar](50) NULL,
 CONSTRAINT [PK_Installment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[LoanType] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_Query_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 3/25/2020 5:54:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[salary] [varchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Loan] ON 

INSERT [dbo].[Loan] ([id], [Name], [Contact], [Address], [LoanType], [Amount]) VALUES (1, N'UTTAM SINGH', N'64484', N'VPO SHANKARPURA', N'car loan', N'5000')
SET IDENTITY_INSERT [dbo].[Loan] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [Name], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Query] ON 

INSERT [dbo].[Query] ([id], [Name], [Contact], [Email], [Msg]) VALUES (1, N'jarnail singh', N'singh', N'anokhasingh209@gmail.com', N'qwqw')
INSERT [dbo].[Query] ([id], [Name], [Contact], [Email], [Msg]) VALUES (2, N'hh', N'64484', N'harjotsinghsagar@gmail.com', N'j')
SET IDENTITY_INSERT [dbo].[Query] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [Name], [Contact], [Address], [Email], [Designation], [salary]) VALUES (1, N'UTTAM SINGH', N'64484', N'VPO SHANKARPURA', N'arshs2510@gmail.com', N'manager', N'5600')
SET IDENTITY_INSERT [dbo].[Staff] OFF
USE [master]
GO
ALTER DATABASE [bankloan] SET  READ_WRITE 
GO
