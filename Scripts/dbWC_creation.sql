USE [master]
GO

/****** Object:  Database [WC]    Script Date: 4/1/2021 11:50:29 PM ******/
CREATE DATABASE [WC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WC.mdf' , SIZE = 30720KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WC_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [WC] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WC] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WC] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WC] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WC] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WC] SET ARITHABORT OFF 
GO

ALTER DATABASE [WC] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WC] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WC] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WC] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WC] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WC] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WC] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WC] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WC] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WC] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WC] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WC] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [WC] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [WC] SET  MULTI_USER 
GO

ALTER DATABASE [WC] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WC] SET DB_CHAINING OFF 
GO

ALTER DATABASE [WC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [WC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [WC] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [WC] SET  READ_WRITE 
GO

