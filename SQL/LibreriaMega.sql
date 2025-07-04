USE [master]
GO
/****** Object:  Database [LibreriaMega]    Script Date: 21/06/2025 05:55:26 p. m. ******/
CREATE DATABASE [LibreriaMega]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibreriaMega', FILENAME = N'/var/opt/mssql/data/LibreriaMega.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibreriaMega_log', FILENAME = N'/var/opt/mssql/data/LibreriaMega_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LibreriaMega] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibreriaMega].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibreriaMega] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibreriaMega] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibreriaMega] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibreriaMega] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibreriaMega] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibreriaMega] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibreriaMega] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibreriaMega] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibreriaMega] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibreriaMega] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibreriaMega] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibreriaMega] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibreriaMega] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibreriaMega] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibreriaMega] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LibreriaMega] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibreriaMega] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibreriaMega] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibreriaMega] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibreriaMega] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibreriaMega] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibreriaMega] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibreriaMega] SET RECOVERY FULL 
GO
ALTER DATABASE [LibreriaMega] SET  MULTI_USER 
GO
ALTER DATABASE [LibreriaMega] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibreriaMega] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibreriaMega] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibreriaMega] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibreriaMega] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibreriaMega] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibreriaMega', N'ON'
GO
ALTER DATABASE [LibreriaMega] SET QUERY_STORE = ON
GO
ALTER DATABASE [LibreriaMega] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LibreriaMega]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 21/06/2025 05:55:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[GeneroID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[EsFavoritos] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GeneroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 21/06/2025 05:55:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[LibroID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[Autor] [varchar](255) NOT NULL,
	[GeneroID] [int] NOT NULL,
	[Calificacion] [int] NULL,
	[Leido] [bit] NOT NULL,
	[PorLeer] [bit] NOT NULL,
	[Recomendado] [bit] NOT NULL,
	[Prestado] [bit] NOT NULL,
	[PrestadoA] [varchar](100) NULL,
	[FechaPrestamo] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LibroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 

INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1, N'Ciencia Ficción', 1)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (2, N'Novela Histórica', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1002, N'Fantasía', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1003, N'Terror', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1004, N'Romance', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1005, N'Misterio', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1006, N'Drama', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1007, N'Aventura', 1)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1008, N'Biografía', 0)
INSERT [dbo].[Generos] ([GeneroID], [Nombre], [EsFavoritos]) VALUES (1009, N'Técnico', 1)
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Libros] ON 

INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (1, N'Dune', N'Frank Herbert', 1, 5, 1, 0, 1, 0, NULL, NULL)
INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (2, N'Rayuela', N'Julio Cortazar', 1, NULL, 0, 0, 0, 1, N'Juan Perez', NULL)
INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (1002, N'Contenedores & Codigo', N'Valeria Ramirez', 1009, NULL, 0, 0, 0, 1, N' Jose', NULL)
INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (1003, N'Variables Fantasma: Un Misterio en el Código', N'Emilio Cárdenas', 1009, 2, 1, 0, 1, 0, N'', NULL)
INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (1004, N'El Jardín de las Estaciones', N'Camila Ochoa', 1006, 0, 0, 0, 0, 0, N'', NULL)
INSERT [dbo].[Libros] ([LibroID], [Titulo], [Autor], [GeneroID], [Calificacion], [Leido], [PorLeer], [Recomendado], [Prestado], [PrestadoA], [FechaPrestamo]) VALUES (1006, N'Las Catedrales del Viento', N'Lucia Aranda', 2, 5, 1, 0, 1, 0, N'', NULL)
SET IDENTITY_INSERT [dbo].[Libros] OFF
GO
ALTER TABLE [dbo].[Generos] ADD  DEFAULT ((0)) FOR [EsFavoritos]
GO
ALTER TABLE [dbo].[Libros] ADD  DEFAULT ((0)) FOR [Leido]
GO
ALTER TABLE [dbo].[Libros] ADD  DEFAULT ((0)) FOR [PorLeer]
GO
ALTER TABLE [dbo].[Libros] ADD  DEFAULT ((0)) FOR [Recomendado]
GO
ALTER TABLE [dbo].[Libros] ADD  DEFAULT ((0)) FOR [Prestado]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([GeneroID])
REFERENCES [dbo].[Generos] ([GeneroID])
GO
USE [master]
GO
ALTER DATABASE [LibreriaMega] SET  READ_WRITE 
GO
