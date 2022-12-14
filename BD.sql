USE [master]
GO
/****** Object:  Database [JuegoQQSM]    Script Date: 6/10/2022 09:44:48 ******/
CREATE DATABASE [JuegoQQSM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuegoQQSM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JuegoQQSM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JuegoQQSM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JuegoQQSM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
EXEC sys.sp_db_vardecimal_storage_format N'JuegoQQSM', N'ON'
GO
ALTER DATABASE [JuegoQQSM] SET QUERY_STORE = OFF
GO
USE [JuegoQQSM]
GO
/****** Object:  User [alumno]    Script Date: 6/10/2022 09:44:48 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 6/10/2022 09:44:49 ******/
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
/****** Object:  Table [dbo].[Preguntas]    Script Date: 6/10/2022 09:44:49 ******/
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
/****** Object:  Table [dbo].[Respuestas]    Script Date: 6/10/2022 09:44:49 ******/
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
