USE [master]
GO
/****** Object:  Database [cordonylarosa]    Script Date: 4/07/2024 00:49:15 ******/
CREATE DATABASE [cordonylarosa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cordonylarosa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\cordonylarosa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cordonylarosa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\cordonylarosa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [cordonylarosa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cordonylarosa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cordonylarosa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cordonylarosa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cordonylarosa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cordonylarosa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cordonylarosa] SET ARITHABORT OFF 
GO
ALTER DATABASE [cordonylarosa] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [cordonylarosa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cordonylarosa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cordonylarosa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cordonylarosa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cordonylarosa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cordonylarosa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cordonylarosa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cordonylarosa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cordonylarosa] SET  ENABLE_BROKER 
GO
ALTER DATABASE [cordonylarosa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cordonylarosa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cordonylarosa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cordonylarosa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cordonylarosa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cordonylarosa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cordonylarosa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cordonylarosa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cordonylarosa] SET  MULTI_USER 
GO
ALTER DATABASE [cordonylarosa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cordonylarosa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cordonylarosa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cordonylarosa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cordonylarosa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cordonylarosa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [cordonylarosa] SET QUERY_STORE = OFF
GO
USE [cordonylarosa]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 4/07/2024 00:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[NumeroTelefono] [char](9) NULL,
	[DNI] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mesas]    Script Date: 4/07/2024 00:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesas](
	[MesaID] [int] IDENTITY(1,1) NOT NULL,
	[NumeroMesa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MesaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservaciones]    Script Date: 4/07/2024 00:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservaciones](
	[ReservacionID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NULL,
	[SedeID] [int] NULL,
	[MesaID] [int] NULL,
	[FechaHoraReserva] [datetime] NULL,
	[Mensaje] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sedes]    Script Date: 4/07/2024 00:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sedes](
	[SedeID] [int] IDENTITY(1,1) NOT NULL,
	[NombreSede] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SedeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([ID], [Nombre], [Email], [NumeroTelefono], [DNI]) VALUES (1, N'Leonardo Gonzales', N'leogonzales@gmail.com', N'978765899', N'12345678')
INSERT [dbo].[clientes] ([ID], [Nombre], [Email], [NumeroTelefono], [DNI]) VALUES (2, N'Liliana Alvarez', N'lilialvarez@gmail.com', N'987676879', N'23456789')
INSERT [dbo].[clientes] ([ID], [Nombre], [Email], [NumeroTelefono], [DNI]) VALUES (3, N'Carlos Perez', N'carlosperez@gmail.com', N'987878899', N'34567890')
INSERT [dbo].[clientes] ([ID], [Nombre], [Email], [NumeroTelefono], [DNI]) VALUES (4, N'Sergio Ramos', N'sergioramos@gmail.com', N'964456667', N'45678901')
SET IDENTITY_INSERT [dbo].[clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[mesas] ON 

INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (1, 1)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (2, 2)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (3, 3)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (4, 4)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (5, 5)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (6, 6)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (7, 7)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (8, 8)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (9, 9)
INSERT [dbo].[mesas] ([MesaID], [NumeroMesa]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[mesas] OFF
GO
SET IDENTITY_INSERT [dbo].[reservaciones] ON 

INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (1, 1, 1, 1, CAST(N'2024-07-03T23:11:48.613' AS DateTime), N'Mesa cerca de la ventana, por favor.')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (2, 2, 2, 5, CAST(N'2024-07-03T23:11:48.613' AS DateTime), N'Celebrando un aniversario, decoración especial.')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (3, 3, 3, 7, CAST(N'2024-07-03T23:11:48.613' AS DateTime), N'Preferencia por un ambiente tranquilo.')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (4, 4, 1, 3, CAST(N'2024-07-03T23:11:48.613' AS DateTime), N'Mesa en el centro, por favor.')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (5, 1, 1, 1, CAST(N'2024-07-03T23:48:00.000' AS DateTime), N'Prueba')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (6, 1, 1, 1, CAST(N'2024-07-03T23:48:00.000' AS DateTime), N'prueba final')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (7, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (8, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (9, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (10, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (11, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (12, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (13, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (14, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (15, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (16, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (17, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
INSERT [dbo].[reservaciones] ([ReservacionID], [ClienteID], [SedeID], [MesaID], [FechaHoraReserva], [Mensaje]) VALUES (18, 1, 1, 1, CAST(N'2024-07-04T00:40:00.000' AS DateTime), N'prueba final 2222')
SET IDENTITY_INSERT [dbo].[reservaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[sedes] ON 

INSERT [dbo].[sedes] ([SedeID], [NombreSede]) VALUES (1, N'La Angostura')
INSERT [dbo].[sedes] ([SedeID], [NombreSede]) VALUES (2, N'Av. Los Maestros')
INSERT [dbo].[sedes] ([SedeID], [NombreSede]) VALUES (3, N'Guadalupe')
SET IDENTITY_INSERT [dbo].[sedes] OFF
GO
ALTER TABLE [dbo].[reservaciones]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[clientes] ([ID])
GO
ALTER TABLE [dbo].[reservaciones]  WITH CHECK ADD FOREIGN KEY([MesaID])
REFERENCES [dbo].[mesas] ([MesaID])
GO
ALTER TABLE [dbo].[reservaciones]  WITH CHECK ADD FOREIGN KEY([SedeID])
REFERENCES [dbo].[sedes] ([SedeID])
GO
/****** Object:  StoredProcedure [dbo].[spx_insertar_reserva]    Script Date: 4/07/2024 00:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spx_insertar_reserva]
(
	@ClienteID int,
	@SedeID int,
	@MesaID int,
	@FechaHoraReserva VARCHAR(120),
	@Mensaje VARCHAR(400)
)
AS
	DECLARE @Convertir datetime
	BEGIN TRAN
	BEGIN TRY
		SET @Convertir = CONVERT(DATETIME,@FechaHoraReserva)

		INSERT INTO reservaciones (ClienteID,SedeID,MesaID,FechaHoraReserva,Mensaje) 
		VALUES (@ClienteID,@SedeID,@MesaID,@Convertir,@Mensaje)

		COMMIT TRAN

		SELECT 1 estado, 'Se reservó correctamente' resultado
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SELECT 0 estado, ERROR_MESSAGE() resultado
	END CATCH
GO
USE [master]
GO
ALTER DATABASE [cordonylarosa] SET  READ_WRITE 
GO