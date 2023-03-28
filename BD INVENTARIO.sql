USE [master]
GO
/****** Object:  Database [SistemaInventarioCOPIA]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE DATABASE [SistemaInventarioCOPIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistemaInventario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NUEVA_BASE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistemaInventario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NUEVA_BASE.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemaInventarioCOPIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET RECOVERY FULL 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET  MULTI_USER 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SistemaInventarioCOPIA', N'ON'
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET QUERY_STORE = OFF
GO
USE [SistemaInventarioCOPIA]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/03/2023 03:34:49 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Ciudad] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Nombres] [nvarchar](max) NULL,
	[Pais] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BodegaProducto]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BodegaProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BodegaId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_BodegaProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bodegas]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodegas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Bodegas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarroCompras]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarroCompras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioAplicacionId] [nvarchar](450) NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_CarroCompras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compania]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compania](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](80) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[Pais] [nvarchar](60) NOT NULL,
	[Ciudad] [nvarchar](60) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](40) NOT NULL,
	[BodegaVentaId] [int] NOT NULL,
	[LogoUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Compania] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioAplicacionId] [nvarchar](450) NOT NULL,
	[FechaInicial] [datetime2](7) NOT NULL,
	[FechaFinal] [datetime2](7) NOT NULL,
	[BodegaId] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventarioDetalle]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventarioDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InventarioId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[StockAnterior] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_InventarioDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioAplicacionId] [nvarchar](450) NOT NULL,
	[FechaOrden] [datetime2](7) NOT NULL,
	[FechaEnvio] [datetime2](7) NOT NULL,
	[NumeroEnvio] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[TotalOrden] [float] NOT NULL,
	[EstadoOrden] [nvarchar](max) NULL,
	[EstadoPago] [nvarchar](max) NULL,
	[FechaPago] [datetime2](7) NOT NULL,
	[FechaMaximaPago] [datetime2](7) NOT NULL,
	[TransaccionId] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Ciudad] [nvarchar](max) NULL,
	[Pais] [nvarchar](max) NULL,
	[NombresCliente] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenDetalle]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrdenId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [float] NOT NULL,
 CONSTRAINT [PK_OrdenDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 28/03/2023 03:34:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroSerie] [nvarchar](30) NOT NULL,
	[Descripcion] [nvarchar](60) NOT NULL,
	[Precio] [float] NOT NULL,
	[Costo] [float] NOT NULL,
	[ImagenUrl] [nvarchar](max) NULL,
	[CategoriaId] [int] NOT NULL,
	[MarcaId] [int] NOT NULL,
	[PadreId] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200518014726_AgregarMigracionIdentidad', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200518015338_AgregarBodegaaBD', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525200537_agregarCategoria', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525233456_agregarMarca', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200530151658_agregarProductoADb', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200610035257_AgregarPropiedadesUsuario', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624050040_modelosInventario', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200704222713_AgregarCompania', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200710030213_AgregarCarroOrdenOrdenDetalle', N'3.1.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'487d8127-b665-4f4b-a1db-a8e8d11b4c20', N'Cliente', N'CLIENTE', N'd6c47dd5-c925-4e76-af7a-7e95ba4ed26e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4aeeecec-6cab-4822-95e5-01b2174af9f8', N'Admin', N'ADMIN', N'14eb81d0-5912-4eec-98ee-5b66442a3bae')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cdd88512-0dc9-4067-b58c-4dcb9dd135a3', N'Inventario', N'INVENTARIO', N'e982e17f-cfc5-48a8-8378-fcea661c5bb8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e95b4e54-f477-4cc5-b345-b2650d1fed18', N'Ventas', N'VENTAS', N'dedc2f0d-b9bd-4c3a-bff6-586416d4bcf6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17be5a36-cfad-4730-b899-bdcd47dd08a0', N'4aeeecec-6cab-4822-95e5-01b2174af9f8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Apellidos], [Ciudad], [Direccion], [Nombres], [Pais]) VALUES (N'17be5a36-cfad-4730-b899-bdcd47dd08a0', N'administrador', N'ADMINISTRADOR', N'support@baezstone.com', N'SUPPORT@BAEZSTONE.COM', 1, N'AQAAAAEAACcQAAAAEEWSWGAavN1pk2mTnRUazEmDNrskxa9yaduIg7YUz9rLGQMgWqRux0FE5BuzuEOvLA==', N'T343R4HH44RZV7AV6ILMHYIFELRIEQKR', N'2a0b60b2-2da2-4640-a6df-8f5c6055f47e', NULL, 0, 0, NULL, 1, 0, N'UsuarioAplicacion', N'Piedra', NULL, NULL, N'Carlos', NULL)
GO
SET IDENTITY_INSERT [dbo].[Bodegas] ON 

INSERT [dbo].[Bodegas] ([Id], [Nombre], [Descripcion], [Estado]) VALUES (2, N'BODEGA UNO', N'ESTA ES LA BODEGA 1', 1)
INSERT [dbo].[Bodegas] ([Id], [Nombre], [Descripcion], [Estado]) VALUES (3, N'BODEGA DOS', N'ESTA ES LA BODEGA DOS', 1)
INSERT [dbo].[Bodegas] ([Id], [Nombre], [Descripcion], [Estado]) VALUES (4, N'BODEGA TRES', N'ESTA ES LA BODEGA TRES', 1)
INSERT [dbo].[Bodegas] ([Id], [Nombre], [Descripcion], [Estado]) VALUES (5, N'BODEGA CUATRO', N'ESTA ES LA BODEGA 4', 1)
SET IDENTITY_INSERT [dbo].[Bodegas] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Nombre], [Estado]) VALUES (1, N'LAPTOP', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [Estado]) VALUES (2, N'TECLADO', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [Estado]) VALUES (3, N'MOUSE', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [Estado]) VALUES (4, N'ACCESORIOS', 0)
INSERT [dbo].[Categorias] ([Id], [Nombre], [Estado]) VALUES (5, N'New Categoria', 0)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 

INSERT [dbo].[Marca] ([Id], [Nombre], [Estado]) VALUES (1, N'HP', 1)
INSERT [dbo].[Marca] ([Id], [Nombre], [Estado]) VALUES (2, N'DELL', 1)
INSERT [dbo].[Marca] ([Id], [Nombre], [Estado]) VALUES (3, N'LENOVO', 1)
INSERT [dbo].[Marca] ([Id], [Nombre], [Estado]) VALUES (4, N'ASUS', 0)
INSERT [dbo].[Marca] ([Id], [Nombre], [Estado]) VALUES (5, N'APPLE', 1)
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [NumeroSerie], [Descripcion], [Precio], [Costo], [ImagenUrl], [CategoriaId], [MarcaId], [PadreId]) VALUES (1, N'1590', N'LAPTOP', 2500, 1500, NULL, 1, 1, 1)
INSERT [dbo].[Productos] ([Id], [NumeroSerie], [Descripcion], [Precio], [Costo], [ImagenUrl], [CategoriaId], [MarcaId], [PadreId]) VALUES (2, N'QSCVHI', N'MONITOR', 3500, 2800, NULL, 1, 2, 4)
INSERT [dbo].[Productos] ([Id], [NumeroSerie], [Descripcion], [Precio], [Costo], [ImagenUrl], [CategoriaId], [MarcaId], [PadreId]) VALUES (3, N'1Q5W9E', N'TECLADO', 800, 700, NULL, 2, 2, 3)
INSERT [dbo].[Productos] ([Id], [NumeroSerie], [Descripcion], [Precio], [Costo], [ImagenUrl], [CategoriaId], [MarcaId], [PadreId]) VALUES (4, N'DSFD21212', N'Product Owner', 10, 5, NULL, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BodegaProducto_BodegaId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BodegaProducto_BodegaId] ON [dbo].[BodegaProducto]
(
	[BodegaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BodegaProducto_ProductoId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_BodegaProducto_ProductoId] ON [dbo].[BodegaProducto]
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarroCompras_ProductoId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CarroCompras_ProductoId] ON [dbo].[CarroCompras]
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CarroCompras_UsuarioAplicacionId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CarroCompras_UsuarioAplicacionId] ON [dbo].[CarroCompras]
(
	[UsuarioAplicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compania_BodegaVentaId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Compania_BodegaVentaId] ON [dbo].[Compania]
(
	[BodegaVentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventario_BodegaId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Inventario_BodegaId] ON [dbo].[Inventario]
(
	[BodegaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Inventario_UsuarioAplicacionId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Inventario_UsuarioAplicacionId] ON [dbo].[Inventario]
(
	[UsuarioAplicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InventarioDetalle_InventarioId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InventarioDetalle_InventarioId] ON [dbo].[InventarioDetalle]
(
	[InventarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InventarioDetalle_ProductoId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InventarioDetalle_ProductoId] ON [dbo].[InventarioDetalle]
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orden_UsuarioAplicacionId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Orden_UsuarioAplicacionId] ON [dbo].[Orden]
(
	[UsuarioAplicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrdenDetalle_OrdenId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OrdenDetalle_OrdenId] ON [dbo].[OrdenDetalle]
(
	[OrdenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrdenDetalle_ProductoId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_OrdenDetalle_ProductoId] ON [dbo].[OrdenDetalle]
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos_CategoriaId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Productos_CategoriaId] ON [dbo].[Productos]
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos_MarcaId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Productos_MarcaId] ON [dbo].[Productos]
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos_PadreId]    Script Date: 28/03/2023 03:34:49 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Productos_PadreId] ON [dbo].[Productos]
(
	[PadreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BodegaProducto]  WITH CHECK ADD  CONSTRAINT [FK_BodegaProducto_Bodegas_BodegaId] FOREIGN KEY([BodegaId])
REFERENCES [dbo].[Bodegas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BodegaProducto] CHECK CONSTRAINT [FK_BodegaProducto_Bodegas_BodegaId]
GO
ALTER TABLE [dbo].[BodegaProducto]  WITH CHECK ADD  CONSTRAINT [FK_BodegaProducto_Productos_ProductoId] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BodegaProducto] CHECK CONSTRAINT [FK_BodegaProducto_Productos_ProductoId]
GO
ALTER TABLE [dbo].[CarroCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarroCompras_AspNetUsers_UsuarioAplicacionId] FOREIGN KEY([UsuarioAplicacionId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarroCompras] CHECK CONSTRAINT [FK_CarroCompras_AspNetUsers_UsuarioAplicacionId]
GO
ALTER TABLE [dbo].[CarroCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarroCompras_Productos_ProductoId] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarroCompras] CHECK CONSTRAINT [FK_CarroCompras_Productos_ProductoId]
GO
ALTER TABLE [dbo].[Compania]  WITH CHECK ADD  CONSTRAINT [FK_Compania_Bodegas_BodegaVentaId] FOREIGN KEY([BodegaVentaId])
REFERENCES [dbo].[Bodegas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compania] CHECK CONSTRAINT [FK_Compania_Bodegas_BodegaVentaId]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_AspNetUsers_UsuarioAplicacionId] FOREIGN KEY([UsuarioAplicacionId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_AspNetUsers_UsuarioAplicacionId]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Bodegas_BodegaId] FOREIGN KEY([BodegaId])
REFERENCES [dbo].[Bodegas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Bodegas_BodegaId]
GO
ALTER TABLE [dbo].[InventarioDetalle]  WITH CHECK ADD  CONSTRAINT [FK_InventarioDetalle_Inventario_InventarioId] FOREIGN KEY([InventarioId])
REFERENCES [dbo].[Inventario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventarioDetalle] CHECK CONSTRAINT [FK_InventarioDetalle_Inventario_InventarioId]
GO
ALTER TABLE [dbo].[InventarioDetalle]  WITH CHECK ADD  CONSTRAINT [FK_InventarioDetalle_Productos_ProductoId] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventarioDetalle] CHECK CONSTRAINT [FK_InventarioDetalle_Productos_ProductoId]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_AspNetUsers_UsuarioAplicacionId] FOREIGN KEY([UsuarioAplicacionId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_AspNetUsers_UsuarioAplicacionId]
GO
ALTER TABLE [dbo].[OrdenDetalle]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDetalle_Orden_OrdenId] FOREIGN KEY([OrdenId])
REFERENCES [dbo].[Orden] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenDetalle] CHECK CONSTRAINT [FK_OrdenDetalle_Orden_OrdenId]
GO
ALTER TABLE [dbo].[OrdenDetalle]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDetalle_Productos_ProductoId] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenDetalle] CHECK CONSTRAINT [FK_OrdenDetalle_Productos_ProductoId]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias_CategoriaId] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias_CategoriaId]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Marca_MarcaId] FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marca] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Marca_MarcaId]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Productos_PadreId] FOREIGN KEY([PadreId])
REFERENCES [dbo].[Productos] ([Id])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Productos_PadreId]
GO
USE [master]
GO
ALTER DATABASE [SistemaInventarioCOPIA] SET  READ_WRITE 
GO
