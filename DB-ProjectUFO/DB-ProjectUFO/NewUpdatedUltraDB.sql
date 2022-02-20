USE [master]
GO
/****** Object:  Database [ProyectoUFO_DB]    Script Date: 19/02/2022 20.13.26 ******/
CREATE DATABASE [ProyectoUFO_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoUFO_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoUFO_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoUFO_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoUFO_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoUFO_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoUFO_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoUFO_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoUFO_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoUFO_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoUFO_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoUFO_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoUFO_DB] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoUFO_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoUFO_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoUFO_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoUFO_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoUFO_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoUFO_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoUFO_DB] SET QUERY_STORE = OFF
GO
USE [ProyectoUFO_DB]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[CarrerarID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[CarrerarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[CarreraID] [int] NULL,
	[NotaID] [int] NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursosPorEstudiantes]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursosPorEstudiantes](
	[EstudianteID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[Nota] [nchar](10) NULL,
	[EstadoCurso] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CursosPorEstudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC,
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[EstadoID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](100) NULL,
	[Carnet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[MatriculaID] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Matricula_1] PRIMARY KEY CLUSTERED 
(
	[MatriculaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatriculaPorEstudiante]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatriculaPorEstudiante](
	[MatriculaID] [int] NOT NULL,
	[EstudianteID] [int] NOT NULL,
 CONSTRAINT [PK_MatriculaPorEstudiante] PRIMARY KEY CLUSTERED 
(
	[MatriculaID] ASC,
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[NotaID] [int] NOT NULL,
	[NotaAprobacion] [int] NULL,
	[FechaUltimoCambio] [datetime] NULL,
 CONSTRAINT [PK_Notas_1] PRIMARY KEY CLUSTERED 
(
	[NotaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodoLectivo]    Script Date: 19/02/2022 20.13.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodoLectivo](
	[PeriodoID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[Estado] [int] NULL,
	[MatriculaID] [int] NOT NULL,
 CONSTRAINT [PK_PeriodoLectivo] PRIMARY KEY CLUSTERED 
(
	[PeriodoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Carrera] ([CarrerarID], [Nombre]) VALUES (108, N'Contaduria')
INSERT [dbo].[Carrera] ([CarrerarID], [Nombre]) VALUES (109, N'Ing. En Sistemas')
GO
INSERT [dbo].[Curso] ([CursoID], [Nombre], [CarreraID], [NotaID]) VALUES (1, N'Contabilidad', 108, 1)
INSERT [dbo].[Curso] ([CursoID], [Nombre], [CarreraID], [NotaID]) VALUES (2, N'Ing. En Sistemas', 109, 2)
GO
INSERT [dbo].[CursosPorEstudiantes] ([EstudianteID], [CursoID], [Nota], [EstadoCurso]) VALUES (115350519, 1, NULL, N'CURSANDO')
INSERT [dbo].[CursosPorEstudiantes] ([EstudianteID], [CursoID], [Nota], [EstadoCurso]) VALUES (301570178, 2, NULL, N'CURSANDO')
GO
INSERT [dbo].[Estados] ([EstadoID], [Nombre]) VALUES (1, N'ABIERTO')
INSERT [dbo].[Estados] ([EstadoID], [Nombre]) VALUES (2, N'FINALIZADO')
INSERT [dbo].[Estados] ([EstadoID], [Nombre]) VALUES (3, N'CERRADO')
GO
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Apellidos], [Carnet]) VALUES (115350519, N'Jason', N'Gonzalez ', N'202105432187')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Apellidos], [Carnet]) VALUES (301570178, N'Manuel', N'Guevara', N'202210010977')
GO
INSERT [dbo].[Matricula] ([MatriculaID], [Estado]) VALUES (1, 3)
INSERT [dbo].[Matricula] ([MatriculaID], [Estado]) VALUES (2, 3)
INSERT [dbo].[Matricula] ([MatriculaID], [Estado]) VALUES (3, 2)
GO
INSERT [dbo].[MatriculaPorEstudiante] ([MatriculaID], [EstudianteID]) VALUES (1, 115350519)
INSERT [dbo].[MatriculaPorEstudiante] ([MatriculaID], [EstudianteID]) VALUES (2, 301570178)
GO
INSERT [dbo].[Notas] ([NotaID], [NotaAprobacion], [FechaUltimoCambio]) VALUES (1, 70, CAST(N'2022-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Notas] ([NotaID], [NotaAprobacion], [FechaUltimoCambio]) VALUES (2, 65, CAST(N'2022-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Notas] ([NotaID], [NotaAprobacion], [FechaUltimoCambio]) VALUES (3, 75, CAST(N'2022-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PeriodoLectivo] ([PeriodoID], [Nombre], [FechaInicio], [FechaFinal], [Estado], [MatriculaID]) VALUES (1, N'Preriodo1', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[PeriodoLectivo] ([PeriodoID], [Nombre], [FechaInicio], [FechaFinal], [Estado], [MatriculaID]) VALUES (2, N'Preriodo2', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 2, 3)
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Carrera] FOREIGN KEY([CarreraID])
REFERENCES [dbo].[Carrera] ([CarrerarID])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Carrera]
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Notas] FOREIGN KEY([NotaID])
REFERENCES [dbo].[Notas] ([NotaID])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Notas]
GO
ALTER TABLE [dbo].[CursosPorEstudiantes]  WITH CHECK ADD  CONSTRAINT [FK_CursosPorEstudiantes_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[CursosPorEstudiantes] CHECK CONSTRAINT [FK_CursosPorEstudiantes_Curso]
GO
ALTER TABLE [dbo].[CursosPorEstudiantes]  WITH CHECK ADD  CONSTRAINT [FK_CursosPorEstudiantes_Estudiante] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiante] ([EstudianteID])
GO
ALTER TABLE [dbo].[CursosPorEstudiantes] CHECK CONSTRAINT [FK_CursosPorEstudiantes_Estudiante]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Estados] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estados] ([EstadoID])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Estados]
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaPorEstudiante_Estudiante] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiante] ([EstudianteID])
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante] CHECK CONSTRAINT [FK_MatriculaPorEstudiante_Estudiante]
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaPorEstudiante_Matricula] FOREIGN KEY([MatriculaID])
REFERENCES [dbo].[Matricula] ([MatriculaID])
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante] CHECK CONSTRAINT [FK_MatriculaPorEstudiante_Matricula]
GO
ALTER TABLE [dbo].[PeriodoLectivo]  WITH CHECK ADD  CONSTRAINT [FK_PeriodoLectivo_Estados] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estados] ([EstadoID])
GO
ALTER TABLE [dbo].[PeriodoLectivo] CHECK CONSTRAINT [FK_PeriodoLectivo_Estados]
GO
ALTER TABLE [dbo].[PeriodoLectivo]  WITH CHECK ADD  CONSTRAINT [FK_PeriodoLectivo_Matricula] FOREIGN KEY([MatriculaID])
REFERENCES [dbo].[Matricula] ([MatriculaID])
GO
ALTER TABLE [dbo].[PeriodoLectivo] CHECK CONSTRAINT [FK_PeriodoLectivo_Matricula]
GO
USE [master]
GO
ALTER DATABASE [ProyectoUFO_DB] SET  READ_WRITE 
GO
