USE [master]
GO
/****** Object:  Database [Online_Bank_Mid]    Script Date: 3/16/2017 1:01:20 AM ******/
CREATE DATABASE [Online_Bank_Mid]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Online_Bank_Mid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Online_Bank_Mid.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Online_Bank_Mid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Online_Bank_Mid_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Online_Bank_Mid] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Online_Bank_Mid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Online_Bank_Mid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET ARITHABORT OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Online_Bank_Mid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Online_Bank_Mid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Online_Bank_Mid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Online_Bank_Mid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Online_Bank_Mid] SET  MULTI_USER 
GO
ALTER DATABASE [Online_Bank_Mid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Online_Bank_Mid] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Online_Bank_Mid] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Online_Bank_Mid] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Online_Bank_Mid] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Online_Bank_Mid]
GO
/****** Object:  Table [dbo].[admins_table]    Script Date: 3/16/2017 1:01:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admins_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[user_pass] [varchar](50) NOT NULL,
	[user_image] [varchar](1000) NULL,
 CONSTRAINT [PK_admins_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/16/2017 1:01:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[acc_no] [varchar](50) NOT NULL,
	[acc_name] [varchar](50) NOT NULL,
	[acc_pass] [varchar](50) NOT NULL,
	[acc_image] [varchar](50) NULL,
	[acc_opening_date] [datetime] NULL,
	[acc_balance] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[acc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users_transaction_info]    Script Date: 3/16/2017 1:01:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users_transaction_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[from_acc] [varchar](50) NOT NULL,
	[to_acc] [varchar](50) NOT NULL,
	[amount] [float] NOT NULL,
	[action] [varchar](50) NOT NULL,
	[transaction_date] [datetime] NULL,
 CONSTRAINT [PK_users_transaction_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Online_Bank_Mid] SET  READ_WRITE 
GO
