USE [master]
GO
/****** Object:  Database [schoolmanagement]    Script Date: 08/22/2023 19:16:29 ******/
CREATE DATABASE [schoolmanagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'schoolmanagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\schoolmanagement.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'schoolmanagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\schoolmanagement_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [schoolmanagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [schoolmanagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [schoolmanagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [schoolmanagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [schoolmanagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [schoolmanagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [schoolmanagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [schoolmanagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [schoolmanagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [schoolmanagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [schoolmanagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [schoolmanagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [schoolmanagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [schoolmanagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [schoolmanagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [schoolmanagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [schoolmanagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [schoolmanagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [schoolmanagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [schoolmanagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [schoolmanagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [schoolmanagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [schoolmanagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [schoolmanagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [schoolmanagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [schoolmanagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [schoolmanagement] SET  MULTI_USER 
GO
ALTER DATABASE [schoolmanagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [schoolmanagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [schoolmanagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [schoolmanagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [schoolmanagement]
GO
/****** Object:  Table [dbo].[tbl_classes]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_classes](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](20) NULL,
	[Section] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ClassSubRel]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ClassSubRel](
	[ClassID] [int] NULL,
	[SubjectID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_rolemaster]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rolemaster](
	[RoleID] [int] IDENTITY(1000,1) NOT NULL,
	[RoleName] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_teacherandclassRel]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teacherandclassRel](
	[UserID] [int] NULL,
	[ClassID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_userlogin]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userlogin](
	[UserID] [int] NULL,
	[Password] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_userroleRel]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userroleRel](
	[UserId] [int] NULL,
	[RoleID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 08/22/2023 19:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailID] [nvarchar](100) NULL,
	[ContactNo] [bigint] NULL,
	[Address] [nvarchar](100) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [schoolmanagement] SET  READ_WRITE 
GO
