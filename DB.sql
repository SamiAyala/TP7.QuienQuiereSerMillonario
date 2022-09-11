USE [master]
GO
/****** Object:  Database [JuegoQQSM]    Script Date: 11/9/2022 19:42:52 ******/
CREATE DATABASE [JuegoQQSM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuegoQQSM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JuegoQQSM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JuegoQQSM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JuegoQQSM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JuegoQQSM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JuegoQQSM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ARITHABORT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JuegoQQSM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JuegoQQSM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JuegoQQSM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JuegoQQSM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JuegoQQSM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JuegoQQSM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JuegoQQSM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JuegoQQSM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JuegoQQSM] SET RECOVERY FULL 
GO
ALTER DATABASE [JuegoQQSM] SET  MULTI_USER 
GO
ALTER DATABASE [JuegoQQSM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JuegoQQSM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JuegoQQSM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JuegoQQSM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JuegoQQSM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JuegoQQSM] SET QUERY_STORE = OFF
GO
USE [JuegoQQSM]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 11/9/2022 19:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[idJugador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[PozoGanado] [int] NOT NULL,
	[ComodinDobleChance] [bit] NOT NULL,
	[Comodin50] [bit] NOT NULL,
	[ComodinSaltear] [bit] NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 11/9/2022 19:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[idPregunta] [int] IDENTITY(1,1) NOT NULL,
	[TextoPregunta] [varchar](200) NOT NULL,
	[NivelDificultad] [int] NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[idPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 11/9/2022 19:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[idRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[fkPregunta] [int] NOT NULL,
	[OpcionRespuesta] [char](1) NOT NULL,
	[TextoRespuesta] [varchar](200) NOT NULL,
	[Correcta] [bit] NOT NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[idRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1002, N'hg', CAST(N'2022-09-11T11:33:07.420' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1003, N'hg', CAST(N'2022-09-11T11:33:51.580' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1004, N'hg', CAST(N'2022-09-11T11:34:34.110' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1005, N'hg', CAST(N'2022-09-11T11:34:38.130' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1006, N'hg', CAST(N'2022-09-11T11:36:44.430' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1007, N'hg', CAST(N'2022-09-11T11:40:24.730' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1008, N'hg', CAST(N'2022-09-11T11:43:06.663' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1009, N'hg', CAST(N'2022-09-11T11:43:58.960' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1010, N'hg', CAST(N'2022-09-11T11:45:00.763' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1011, N'hg', CAST(N'2022-09-11T11:45:04.687' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1012, N'hg', CAST(N'2022-09-11T11:45:09.203' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1013, N'uuu', CAST(N'2022-09-11T11:46:04.960' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1014, N'uuu', CAST(N'2022-09-11T11:49:29.680' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1015, N'uuu', CAST(N'2022-09-11T11:49:32.603' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1016, N'uuu', CAST(N'2022-09-11T11:49:35.560' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1017, N'uuu', CAST(N'2022-09-11T11:49:39.530' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1018, N'uuu', CAST(N'2022-09-11T11:49:45.533' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1019, N'ht', CAST(N'2022-09-11T11:50:00.307' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1020, N'ggg', CAST(N'2022-09-11T12:01:07.240' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1021, N'ggg', CAST(N'2022-09-11T12:09:50.570' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1022, N'ggg', CAST(N'2022-09-11T12:09:53.440' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1023, N'ggg', CAST(N'2022-09-11T12:15:09.073' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1024, N'ggg', CAST(N'2022-09-11T12:15:32.330' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1025, N'ggg', CAST(N'2022-09-11T12:15:39.920' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1026, N'ggg', CAST(N'2022-09-11T12:16:06.350' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1027, N'ggg', CAST(N'2022-09-11T12:16:16.943' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1028, N'ggg', CAST(N'2022-09-11T12:16:38.667' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1029, N'ggg', CAST(N'2022-09-11T12:16:42.353' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1030, N'ggg', CAST(N'2022-09-11T12:16:48.793' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1031, N'ggg', CAST(N'2022-09-11T12:19:09.160' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1032, N'ggg', CAST(N'2022-09-11T12:19:25.707' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1033, N'ggg', CAST(N'2022-09-11T12:19:30.580' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1034, N'ggg', CAST(N'2022-09-11T12:19:52.133' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1035, N'ggg', CAST(N'2022-09-11T12:20:00.680' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1036, N'ggg', CAST(N'2022-09-11T12:20:19.963' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1037, N'ggg', CAST(N'2022-09-11T12:20:32.060' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1038, N'ggg', CAST(N'2022-09-11T12:21:03.643' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1039, N'gr', CAST(N'2022-09-11T12:21:17.727' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1040, N'gr', CAST(N'2022-09-11T12:21:27.903' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1041, N'gr', CAST(N'2022-09-11T12:21:38.227' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1042, N'gr', CAST(N'2022-09-11T12:22:32.003' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1043, N'gr', CAST(N'2022-09-11T12:22:40.240' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1044, N'gr', CAST(N'2022-09-11T12:22:45.540' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1045, N'gr', CAST(N'2022-09-11T12:22:56.340' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1046, N'gr', CAST(N'2022-09-11T12:26:50.337' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1047, N'gr', CAST(N'2022-09-11T12:27:09.627' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1048, N'gr', CAST(N'2022-09-11T12:28:36.680' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1049, N'gr', CAST(N'2022-09-11T12:28:57.497' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1050, N'gr', CAST(N'2022-09-11T12:30:09.040' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1051, N'ok', CAST(N'2022-09-11T12:32:47.817' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1052, N'ok', CAST(N'2022-09-11T12:37:40.663' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1053, N'ok', CAST(N'2022-09-11T12:44:06.460' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1054, N'ok', CAST(N'2022-09-11T12:45:23.630' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1055, N'ok', CAST(N'2022-09-11T12:45:52.630' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1056, N'fefe', CAST(N'2022-09-11T12:46:19.610' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1057, N'fefe', CAST(N'2022-09-11T12:46:36.987' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1058, N'fefe', CAST(N'2022-09-11T13:38:48.677' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1059, N'LOL', CAST(N'2022-09-11T13:39:57.653' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1060, N'LOL', CAST(N'2022-09-11T13:40:51.103' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1061, N'LOL', CAST(N'2022-09-11T13:41:45.720' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1062, N'fghd', CAST(N'2022-09-11T13:42:00.913' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1063, N'tw4r', CAST(N'2022-09-11T13:42:33.943' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1064, N'eth', CAST(N'2022-09-11T13:43:12.180' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1065, N'cock', CAST(N'2022-09-11T13:43:54.967' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1066, N'refghsz', CAST(N'2022-09-11T13:44:30.443' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1067, N'fe', CAST(N'2022-09-11T13:45:26.553' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1068, N'lol', CAST(N'2022-09-11T13:46:42.187' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1069, N'y', CAST(N'2022-09-11T15:26:53.243' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1070, N'fe', CAST(N'2022-09-11T15:29:48.683' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1071, N'fe', CAST(N'2022-09-11T15:32:33.067' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1072, N'uk', CAST(N'2022-09-11T15:34:41.110' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1073, N'uk', CAST(N'2022-09-11T15:37:05.923' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1074, N'dg', CAST(N'2022-09-11T15:45:09.510' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1075, N'rsa', CAST(N'2022-09-11T15:46:12.893' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1076, N'rsa', CAST(N'2022-09-11T15:46:33.230' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1077, N'effe', CAST(N'2022-09-11T15:47:08.423' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1078, N'efwfe', CAST(N'2022-09-11T15:47:36.580' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1079, N'efwfe', CAST(N'2022-09-11T15:49:35.960' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1080, N'efwfe', CAST(N'2022-09-11T15:51:21.467' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1081, N'h', CAST(N'2022-09-11T15:51:43.890' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1082, N'fvwfwe', CAST(N'2022-09-11T15:55:46.800' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1083, N'fewfwe', CAST(N'2022-09-11T15:56:04.710' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1084, N'fewfwe', CAST(N'2022-09-11T16:43:22.430' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1085, N'few', CAST(N'2022-09-11T16:43:57.617' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1086, N'gh', CAST(N'2022-09-11T17:02:21.323' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1087, N'fgrwe', CAST(N'2022-09-11T17:03:57.120' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1088, N'wrg', CAST(N'2022-09-11T17:04:38.173' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1089, N'fgrw', CAST(N'2022-09-11T17:05:44.070' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1090, N'yjf', CAST(N'2022-09-11T17:07:20.120' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1091, N'erggds', CAST(N'2022-09-11T17:09:10.797' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1092, N'hhgrthhr', CAST(N'2022-09-11T17:10:19.333' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1093, N'vd', CAST(N'2022-09-11T17:14:40.410' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1094, N'dfas', CAST(N'2022-09-11T17:17:59.813' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1095, N'fewFWEF', CAST(N'2022-09-11T17:21:34.980' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1096, N'MFHJ', CAST(N'2022-09-11T17:23:00.720' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1097, N'fnghdx', CAST(N'2022-09-11T17:31:27.117' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1098, N'rgf', CAST(N'2022-09-11T17:32:07.827' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1099, N'vyhuj', CAST(N'2022-09-11T17:36:31.127' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1100, N'rege', CAST(N'2022-09-11T17:37:38.867' AS DateTime), 0, 1, 1, 1)
GO
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1101, N'lol', CAST(N'2022-09-11T18:14:13.987' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1102, N'dfsafs', CAST(N'2022-09-11T18:15:15.707' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1103, N'rge', CAST(N'2022-09-11T18:16:47.023' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1104, N'dfgdf', CAST(N'2022-09-11T18:17:18.037' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1105, N'dsfsd', CAST(N'2022-09-11T18:21:00.183' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1106, N'dwfwe', CAST(N'2022-09-11T18:22:29.017' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1107, N'rge', CAST(N'2022-09-11T18:24:36.273' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1108, N'few', CAST(N'2022-09-11T18:29:00.037' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1109, N'bfd', CAST(N'2022-09-11T18:30:46.650' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1110, N'efwfe', CAST(N'2022-09-11T18:32:43.483' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1111, N'erger', CAST(N'2022-09-11T18:35:26.497' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1112, N'gwgwe', CAST(N'2022-09-11T18:36:47.227' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1113, N'ygu', CAST(N'2022-09-11T18:41:05.013' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1114, N'vdsa<', CAST(N'2022-09-11T18:42:57.780' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1115, N'ty', CAST(N'2022-09-11T18:46:14.263' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1116, N'rger', CAST(N'2022-09-11T18:47:30.430' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1117, N'hgtrhrt', CAST(N'2022-09-11T18:48:12.237' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1118, N'sgd', CAST(N'2022-09-11T18:49:34.547' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1119, N'fgegrger', CAST(N'2022-09-11T18:50:48.950' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([idJugador], [Nombre], [FechaHora], [PozoGanado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1120, N'rfge', CAST(N'2022-09-11T19:29:09.810' AS DateTime), 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (1, N'¿Como se llama la protagonista de la saga "Horizon Zero Dawn"?', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (2, N'¿Quien de estas personas es uno de los cofundadores de Valve Software?', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (3, N'¿Cuál es la consola más vendida a la fecha de hoy?', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (4, N'¿Cual es el motor grafico desarrollado por Epic Games?
', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (5, N'¿En que año finalizo la Primera Guerra Mundial?
', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (6, N'¿Cuantos años duro la Guerra de Vietnam?', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (7, N'¿Quien fue el ultimo Zar de Rusia?', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (8, N'¿Quién  fue el maestro de Alejandro Magno?', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (9, N'¿Qué actor protagoniza Scarface(1984)? ', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (10, N'¿Qué enfermedad sufre Thomas Shelby en la serie Peaky Blinders?', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (11, N'¿En la serie Breaking Bad, cual es el apodo del protagonista?', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (12, N'¿Cómo se llama el hacha de Thor Odinson?', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (13, N'¿Cuál es el país con mayor densidad poblacional del mundo?', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (14, N'¿Cuál es la nación con superficie territorial más grande de la historia?', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (15, N'¿Cuál es el país con más superficie marítima del mundo?', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (16, N'¿Cuál es el país más plano del planeta?', 4)
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (1, 1, N'A', N'Alloy', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (2, 1, N'B', N'Ellie', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (3, 1, N'C', N'Lara Croft', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (4, 1, N'D', N'Isabelle', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (5, 2, N'A', N'Erik Wolpaw', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (6, 2, N'B', N'Gabe Newell', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (7, 2, N'C', N'Geoff Keighley', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (8, 2, N'D', N'Marc Laidlaw', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (9, 3, N'A', N'Xbox 360', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (10, 3, N'B', N'Nintendo 3DS', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (11, 3, N'C', N'Playstation 2', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (12, 3, N'D', N'Sega Saturn', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (13, 4, N'A', N'Unreal Engine', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (14, 4, N'B', N'Unity', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (15, 4, N'C', N'RenderWare', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (16, 4, N'D', N'Source', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (17, 5, N'A', N'1921', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (18, 5, N'B', N'1945', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (19, 5, N'C', N'1916', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (20, 5, N'D', N'1918', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (21, 6, N'A', N'8 años', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (22, 6, N'B', N'16 años', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (23, 6, N'C', N'19 años', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (24, 6, N'D', N'11 años', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (25, 7, N'A', N'Nicolas II', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (26, 7, N'B', N'Alejandro III', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (27, 7, N'C', N'Pedro el Grande', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (28, 7, N'D', N'Rasputin', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (29, 8, N'A', N'Diogenes', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (30, 8, N'B', N'Plato', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (31, 8, N'C', N'Aristoteles', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (32, 8, N'D', N'Solón', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (33, 9, N'A', N'Robert DeNiro', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (34, 9, N'B', N'Al Pacino', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (35, 9, N'C', N'John Travolta', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (36, 9, N'D', N'Tim Roth', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (37, 10, N'A', N'Neumonía', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (38, 10, N'B', N'Stress Post-Traumatico', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (39, 10, N'C', N'Déficit de Atención', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (40, 10, N'D', N'Tuberculosis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (41, 11, N'A', N'Krazy-8', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (42, 11, N'B', N'Gus Fring', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (45, 11, N'C', N'Heisenberg', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (46, 11, N'D', N'Walter White', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (47, 12, N'A', N'Mjolnir', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (48, 12, N'B', N'Gungnir', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (49, 12, N'C', N'Stormbreaker', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (50, 12, N'D', N'Lævateinn', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (51, 13, N'A', N'China', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (52, 13, N'B', N'Corea del Sur', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (53, 13, N'C', N'Japón', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (54, 13, N'D', N'Singapur', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (55, 14, N'A', N'Rusia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (56, 14, N'B', N'Canadá', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (57, 14, N'C', N'Grecia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (58, 14, N'D', N'Roma', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (59, 15, N'A', N'Estados Unidos', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (60, 15, N'B', N'Francia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (61, 15, N'C', N'Australia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (62, 15, N'D', N'Micronesia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (63, 16, N'A', N'Australia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (64, 16, N'B', N'Islas Maldivas', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (65, 16, N'C', N'Rusia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [fkPregunta], [OpcionRespuesta], [TextoRespuesta], [Correcta]) VALUES (66, 16, N'D', N'Mauricio', 0)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([fkPregunta])
REFERENCES [dbo].[Preguntas] ([idPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
USE [master]
GO
ALTER DATABASE [JuegoQQSM] SET  READ_WRITE 
GO
