USE [master]
GO
/****** Object:  Database [DaleTest]    Script Date: 25/01/2023 1:02:12 p. m. ******/
CREATE DATABASE [DaleTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DaleTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DaleTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DaleTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DaleTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DaleTest] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DaleTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DaleTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DaleTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DaleTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DaleTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DaleTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [DaleTest] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DaleTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DaleTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DaleTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DaleTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DaleTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DaleTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DaleTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DaleTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DaleTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DaleTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DaleTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DaleTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DaleTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DaleTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DaleTest] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DaleTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DaleTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DaleTest] SET  MULTI_USER 
GO
ALTER DATABASE [DaleTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DaleTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DaleTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DaleTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DaleTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DaleTest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DaleTest] SET QUERY_STORE = ON
GO
ALTER DATABASE [DaleTest] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DaleTest]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/01/2023 1:02:12 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteDB]    Script Date: 25/01/2023 1:02:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteDB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [varchar](100) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ClienteDB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoDB]    Script Date: 25/01/2023 1:02:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoDB](
	[Nombre] [nvarchar](450) NOT NULL,
	[ValorUnitario] [int] NOT NULL,
 CONSTRAINT [PK_ProductoDB] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DaleTest] SET  READ_WRITE 
GO
