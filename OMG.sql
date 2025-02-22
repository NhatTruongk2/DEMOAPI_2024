USE [master]
GO
/****** Object:  Database [OMG]    Script Date: 5/14/2024 9:34:38 PM ******/
CREATE DATABASE [OMG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OMG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OMG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OMG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OMG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OMG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OMG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OMG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OMG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OMG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OMG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OMG] SET ARITHABORT OFF 
GO
ALTER DATABASE [OMG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OMG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OMG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OMG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OMG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OMG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OMG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OMG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OMG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OMG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OMG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OMG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OMG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OMG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OMG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OMG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OMG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OMG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OMG] SET  MULTI_USER 
GO
ALTER DATABASE [OMG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OMG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OMG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OMG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OMG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OMG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OMG] SET QUERY_STORE = ON
GO
ALTER DATABASE [OMG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [OMG]
GO
/****** Object:  Table [dbo].[history]    Script Date: 5/14/2024 9:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id] [int] NULL,
	[sid] [int] NULL,
	[value] [nchar](10) NULL,
	[time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sensor]    Script Date: 5/14/2024 9:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sensor](
	[sid] [int] NULL,
	[name] [nchar](10) NULL,
	[unit] [nchar](10) NULL,
	[value] [int] NULL,
	[time] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.92     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'91.85     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'88.76     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'91.14     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'83.99     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'85.42     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'90.62     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'83.26     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'93.92     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'89.06     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'94        ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'92.14     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'94.75     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'90.08     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'86.6      ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'92.25     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.55     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'83.01     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.52     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'90.07     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'94.27     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'87.71     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'93.09     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'94.41     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.87     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'81.35     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'93.78     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'91.52     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'81.08     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'85.36     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'85.92     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'86.68     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'92.24     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.08     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'90.6      ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'86        ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'84.59     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'94.49     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'82.02     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'84.18     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'88.67     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'86.05     ', NULL)
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (NULL, 2, N'80.45     ', NULL)
GO
/****** Object:  StoredProcedure [dbo].[SP_Chart]    Script Date: 5/14/2024 9:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Chart]
AS
BEGIN
    DECLARE @json nvarchar(max) = N'{"ok":1,"msg":"ok","data":[';

    SELECT @json += FORMATMESSAGE(N'{"id":"%d","sid":"%d","value":"%s","time":"%s"},',
                              [id], [sid], CONVERT(nvarchar(50), [value]), CONVERT(nvarchar(50), [time]))
    FROM history;

    IF RIGHT(@json, 1) = ','
    BEGIN
        SET @json = LEFT(@json, LEN(@json) - 1);
    END

    SET @json = @json + ']}';

    SELECT @json AS json;
END
GO
USE [master]
GO
ALTER DATABASE [OMG] SET  READ_WRITE 
GO
