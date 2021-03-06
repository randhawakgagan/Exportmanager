USE [master]
GO
/****** Object:  Database [LicenseManager]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE DATABASE [LicenseManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LicenseManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LicenseManager.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LicenseManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LicenseManager_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LicenseManager] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LicenseManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LicenseManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LicenseManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LicenseManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LicenseManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LicenseManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [LicenseManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LicenseManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LicenseManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LicenseManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LicenseManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LicenseManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LicenseManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LicenseManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LicenseManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LicenseManager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LicenseManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LicenseManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LicenseManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LicenseManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LicenseManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LicenseManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LicenseManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LicenseManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LicenseManager] SET  MULTI_USER 
GO
ALTER DATABASE [LicenseManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LicenseManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LicenseManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LicenseManager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LicenseManager] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LicenseManager]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Country__3214EC07C0B1A749] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Export]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Export](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Reference_No] [varchar](50) NOT NULL,
	[Export_Date] [datetime] NOT NULL,
	[License_Id] [int] NULL,
 CONSTRAINT [PK__Exports__3214EC07D73552FF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Export_Country]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Export_Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
 CONSTRAINT [PK__Export_C__3214EC07DF43137C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Export_Item]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Exporter_Id] [int] NOT NULL,
	[Item_Id] [int] NOT NULL,
	[No_Of_Units] [int] NOT NULL CONSTRAINT [DF__Export_It__No_Of__60A75C0F]  DEFAULT ((0)),
 CONSTRAINT [PK__Export_I__3214EC079EBD1DDC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Unit_Value] [money] NOT NULL CONSTRAINT [DF__Item__Unit_Value__1ED998B2]  DEFAULT ((0)),
 CONSTRAINT [PK__Item__3214EC07F4BE1349] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[License]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[License_No] [nvarchar](50) NOT NULL,
	[Expiry_Date] [datetime] NOT NULL,
	[Notes] [nvarchar](500) NULL,
 CONSTRAINT [PK__License__3214EC07994ECD37] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[License_Country]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License_Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[License_Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
 CONSTRAINT [PK__License___3214EC073B7C7921] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[License_Item]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License_Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[License_Id] [int] NOT NULL,
	[Item_Id] [int] NOT NULL,
	[No_Units] [int] NOT NULL,
 CONSTRAINT [PK__License___3214EC0771716AC1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notify]    Script Date: 9/4/2016 7:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notify](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[License_Id] [int] NOT NULL,
	[Email_Id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Notify__3214EC0717EFE2EA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/4/2016 7:07:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Export]  WITH CHECK ADD  CONSTRAINT [FK_Export_ToTable] FOREIGN KEY([License_Id])
REFERENCES [dbo].[License] ([Id])
GO
ALTER TABLE [dbo].[Export] CHECK CONSTRAINT [FK_Export_ToTable]
GO
ALTER TABLE [dbo].[Export_Country]  WITH CHECK ADD  CONSTRAINT [FK_ExportCountry_ToTable] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Export_Country] CHECK CONSTRAINT [FK_ExportCountry_ToTable]
GO
ALTER TABLE [dbo].[Export_Country]  WITH CHECK ADD  CONSTRAINT [FK_ExportCountry_ToTable_1] FOREIGN KEY([Export_Id])
REFERENCES [dbo].[Export] ([Id])
GO
ALTER TABLE [dbo].[Export_Country] CHECK CONSTRAINT [FK_ExportCountry_ToTable_1]
GO
ALTER TABLE [dbo].[Export_Item]  WITH CHECK ADD  CONSTRAINT [FK_ExportItems_ToTable] FOREIGN KEY([Exporter_Id])
REFERENCES [dbo].[Export] ([Id])
GO
ALTER TABLE [dbo].[Export_Item] CHECK CONSTRAINT [FK_ExportItems_ToTable]
GO
ALTER TABLE [dbo].[Export_Item]  WITH CHECK ADD  CONSTRAINT [FK_ExportItems_ToTable_1] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Export_Item] CHECK CONSTRAINT [FK_ExportItems_ToTable_1]
GO
ALTER TABLE [dbo].[License_Country]  WITH CHECK ADD  CONSTRAINT [FK_LicenseCountry_ToTable] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[License_Country] CHECK CONSTRAINT [FK_LicenseCountry_ToTable]
GO
ALTER TABLE [dbo].[License_Country]  WITH CHECK ADD  CONSTRAINT [FK_LicenseCountry_ToTable_1] FOREIGN KEY([License_Id])
REFERENCES [dbo].[License] ([Id])
GO
ALTER TABLE [dbo].[License_Country] CHECK CONSTRAINT [FK_LicenseCountry_ToTable_1]
GO
ALTER TABLE [dbo].[License_Item]  WITH CHECK ADD  CONSTRAINT [FK_LicenseItem_ToTable] FOREIGN KEY([License_Id])
REFERENCES [dbo].[License] ([Id])
GO
ALTER TABLE [dbo].[License_Item] CHECK CONSTRAINT [FK_LicenseItem_ToTable]
GO
ALTER TABLE [dbo].[License_Item]  WITH CHECK ADD  CONSTRAINT [FK_LicenseItem_ToTable_1] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[License_Item] CHECK CONSTRAINT [FK_LicenseItem_ToTable_1]
GO
USE [master]
GO
ALTER DATABASE [LicenseManager] SET  READ_WRITE 
GO
