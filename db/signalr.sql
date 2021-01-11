USE [master]
GO
/****** Object:  Database [signalr]    Script Date: 1/10/2021 8:57:23 PM ******/
CREATE DATABASE [signalr]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'signalr', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\signalr.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'signalr_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\signalr_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [signalr] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [signalr].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [signalr] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [signalr] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [signalr] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [signalr] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [signalr] SET ARITHABORT OFF 
GO
ALTER DATABASE [signalr] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [signalr] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [signalr] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [signalr] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [signalr] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [signalr] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [signalr] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [signalr] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [signalr] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [signalr] SET  ENABLE_BROKER 
GO
ALTER DATABASE [signalr] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [signalr] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [signalr] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [signalr] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [signalr] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [signalr] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [signalr] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [signalr] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [signalr] SET  MULTI_USER 
GO
ALTER DATABASE [signalr] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [signalr] SET DB_CHAINING OFF 
GO
ALTER DATABASE [signalr] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [signalr] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [signalr] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [signalr] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [signalr] SET QUERY_STORE = OFF
GO
USE [signalr]
GO
/****** Object:  Table [dbo].[mensajes]    Script Date: 1/10/2021 8:57:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensajes](
	[IdMensajes] [int] IDENTITY(1,1) NOT NULL,
	[Canal] [int] NULL,
	[Emisor] [int] NULL,
	[Receptor] [int] NULL,
	[Mensaje] [varchar](255) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMensajes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personas]    Script Date: 1/10/2021 8:57:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[fecha] [datetime] NULL,
	[canal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[mensajes] ON 

INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (1, 1, 1, 2, N'hola', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2, 1, 2, 1, N'Hola como estas?', CAST(N'2020-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (10, 1, 1, 2, N'Bien y tu?', CAST(N'2021-01-06T21:20:09.997' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (11, 1, 1, 2, N'Y tu mama que tal esta?', CAST(N'2021-01-06T21:20:23.707' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (12, 1, 2, 1, N'muy bien', CAST(N'2021-01-06T21:20:23.707' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (1003, 1, 1, 2, N'hola a todos!', CAST(N'2021-01-07T18:36:49.597' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (1004, 1, 1, 2, N'hola', CAST(N'2021-01-07T18:41:31.350' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2003, 1, 1, 2, N'Hola', CAST(N'2021-01-08T19:35:26.827' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2004, 1, 1, 2, N'Jose', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2005, 1, 2, 1, N'Pedro', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2006, 1, 1, 1, N'Luis', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2007, 1, 1, 1, N'mario', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2008, 1, 1, 1, N'Juan', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2009, 1, 1, 1, N'dasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2010, 1, 1, 2, N'Ultimo', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2011, 1, 2, 2, N'ultimo 2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2012, 1, 2, 2, N'ultimo3', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2013, 1, 2, 2, N'12323', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2014, 1, 2, 2, N'2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2015, 1, 2, 1, N'232123123', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2016, 1, 1, 1, N'Ultimo2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2017, 1, 1, 2, N'Ultimo', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2018, 1, 1, 2, N'Final', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2019, 1, 2, 2, N'final2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2020, 1, 2, 2, N'final3', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2021, 1, 2, 3, N'final4', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2022, 1, 2, 3, N'final 5', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2023, 1, 2, 3, N'final6', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2024, 1, 2, 3, N'dasdsad', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2025, 1, 2, 3, N'sdasad', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2026, 1, 2, 3, N'sfdfsdf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2027, 1, 2, 3, N'afdasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2028, 1, 1, 2, N'prueba1', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2029, 1, 1, 2, N'prueba2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2030, 1, 2, 3, N'prueba3', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2031, 1, 2, 3, N'prueba4', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2032, 1, 2, 3, N'prueba5', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2033, 1, 2, 3, N'prueba6', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2034, 1, 2, 3, N'weqweqwe', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2035, 1, 2, 3, N'ads', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2036, 1, 2, 3, N'dsad', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2037, 1, 2, 3, N'prueba1', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2038, 1, 2, 3, N'prueba2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2039, 1, 2, 32, N'prueba3', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2040, 1, 2, 3, N'ewqqwe', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2041, 1, 1, 21321321, N'32213123', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2042, 1, 2, 1, N'231', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2043, 1, 2, 2, N'prueba 1', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2044, 1, 1, 1, N'32123213', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2045, 1, 2, 2, N'2', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2046, 1, 2, 3, N'sdasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2047, 1, 2, 2, N'sdfsdfdsfdsf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2048, 1, 2, 2, N'fdssdfdsfdsf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2049, 1, 2, 2, N'sdfdsf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2050, 1, 2, 2, N'sdsadasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2051, 1, 2, 2, N'dsaasdsa', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2052, 1, 2, 2, N'sadsad', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2053, 1, 2, 21, N'213213', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2054, 1, 1, 2, N'sfdsfdsf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2055, 1, 1, 2, N'dasdsad', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2056, 1, 2, 2, N'dsadasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2057, 1, 1, 2, N'sadasdas', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2058, 1, 1, 2, N'sasdsadf', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2059, 1, 1, 2, N'dasdasd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2060, 1, 1, 2, N'fdsdfds', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2061, 1, 1, 2, N'fdsfdsfsd', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
INSERT [dbo].[mensajes] ([IdMensajes], [Canal], [Emisor], [Receptor], [Mensaje], [Fecha]) VALUES (2062, 1, 1, 2, N'dasdas', CAST(N'2021-01-08T19:35:35.410' AS DateTime))
SET IDENTITY_INSERT [dbo].[mensajes] OFF
GO
SET IDENTITY_INSERT [dbo].[personas] ON 

INSERT [dbo].[personas] ([Id], [Nombre], [Apellido], [fecha], [canal]) VALUES (1, N'Josue 2', N'Perez', CAST(N'2020-01-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[personas] ([Id], [Nombre], [Apellido], [fecha], [canal]) VALUES (2, N'Juan', N'Garcia', CAST(N'2020-01-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[personas] ([Id], [Nombre], [Apellido], [fecha], [canal]) VALUES (3, N'Marcos', N'Martinez', CAST(N'2020-01-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[personas] ([Id], [Nombre], [Apellido], [fecha], [canal]) VALUES (4, N'luis', N'lopez', CAST(N'2020-01-06T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[personas] ([Id], [Nombre], [Apellido], [fecha], [canal]) VALUES (5, N'turbi', N'jorge', CAST(N'2020-01-06T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[personas] OFF
GO
USE [master]
GO
ALTER DATABASE [signalr] SET  READ_WRITE 
GO
