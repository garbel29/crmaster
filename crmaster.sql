/***** Edison Raunel Feliz Matricula 19-SIIN-1-023 SECCION 0541*****/
USE [master]
GO
/***** Garber Figuereo mosquea Matrícula 19-SIIT-1-078 Sección 0541*****/
/****** Object:  Database [CRMaster]    Script Date: 28/04/2021 16:39:40 ******/
CREATE DATABASE [CRMaster]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRMaster', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CRMaster.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRMaster_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CRMaster_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CRMaster] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRMaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRMaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRMaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRMaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRMaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRMaster] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRMaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRMaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRMaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRMaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRMaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRMaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRMaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRMaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRMaster] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CRMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRMaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRMaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRMaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRMaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRMaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRMaster] SET RECOVERY FULL 
GO
ALTER DATABASE [CRMaster] SET  MULTI_USER 
GO
ALTER DATABASE [CRMaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRMaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRMaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRMaster] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRMaster] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CRMaster] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CRMaster', N'ON'
GO
ALTER DATABASE [CRMaster] SET QUERY_STORE = OFF
GO
USE [CRMaster]
GO
/****** Object:  Table [dbo].[tbCategorias]    Script Date: 28/04/2021 16:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCategorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbCategorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCiudad]    Script Date: 28/04/2021 16:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCiudad](
	[CiudadId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Zona] [nvarchar](25) NOT NULL,
	[DiaRuta] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tbCiudad] PRIMARY KEY CLUSTERED 
(
	[CiudadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbClientes]    Script Date: 28/04/2021 16:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbClientes](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Codigo] [nvarchar](10) NOT NULL,
	[Telefono] [nvarchar](14) NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Categoria] [int] NOT NULL,
 CONSTRAINT [PK_tbClientes] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 28/04/2021 16:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUsuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Usuario] [nvarchar](25) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[Rol] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVendedor]    Script Date: 28/04/2021 16:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVendedor](
	[VendedorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](40) NOT NULL,
	[Telefono] [nvarchar](14) NOT NULL,
	[SueldoBase] [decimal](18, 2) NOT NULL,
	[Zona] [int] NOT NULL,
	[Comision] [decimal](2, 2) NOT NULL,
 CONSTRAINT [PK_tbVendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbCategorias] FOREIGN KEY([Categoria])
REFERENCES [dbo].[tbCategorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[tbClientes] CHECK CONSTRAINT [FK_tbClientes_tbCategorias]
GO
ALTER TABLE [dbo].[tbClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbCiudad] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[tbCiudad] ([CiudadId])
GO
ALTER TABLE [dbo].[tbClientes] CHECK CONSTRAINT [FK_tbClientes_tbCiudad]
GO
ALTER TABLE [dbo].[tbVendedor]  WITH CHECK ADD  CONSTRAINT [FK_tbVendedor_tbCiudad] FOREIGN KEY([Zona])
REFERENCES [dbo].[tbCiudad] ([CiudadId])
GO
ALTER TABLE [dbo].[tbVendedor] CHECK CONSTRAINT [FK_tbVendedor_tbCiudad]
GO
USE [master]
GO
ALTER DATABASE [CRMaster] SET  READ_WRITE 
GO
