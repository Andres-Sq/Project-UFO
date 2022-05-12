USE [master]
GO
/****** Object:  Database [ProyectoUFO_DB]    Script Date: 15/03/2022 21.10.25 ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 15/03/2022 21.10.25 ******/
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
/****** Object:  Table [dbo].[Correquisitos]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Correquisitos](
	[CursoID] [int] NOT NULL,
	[CorrequisitoID] [int] NOT NULL,
 CONSTRAINT [PK_Correquisitos] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC,
	[CorrequisitoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursosPorEstudiantes]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursosPorEstudiantes](
	[EstudianteID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[Nota] [nchar](10) NULL,
 CONSTRAINT [PK_CursosPorEstudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC,
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 15/03/2022 21.10.25 ******/
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
/****** Object:  Table [dbo].[HistoricosNotasAprobacion]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricosNotasAprobacion](
	[PeriodoID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[NotaAprobacion] [int] NULL,
	[FechaUltimoCambio] [datetime] NULL,
 CONSTRAINT [PK_HistoricosNotasAprobacion] PRIMARY KEY CLUSTERED 
(
	[PeriodoID] ASC,
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatriculaPorEstudiante]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatriculaPorEstudiante](
	[PeriodoID] [int] NOT NULL,
	[EstudianteID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[CarreraID] [int] NOT NULL,
	[Nota] [nchar](10) NULL,
 CONSTRAINT [PK_MatriculaPorEstudiante] PRIMARY KEY CLUSTERED 
(
	[PeriodoID] ASC,
	[EstudianteID] ASC,
	[CursoID] ASC,
	[CarreraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodoLectivo]    Script Date: 15/03/2022 21.10.25 ******/
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
 CONSTRAINT [PK_PeriodoLectivo_1] PRIMARY KEY CLUSTERED 
(
	[PeriodoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDeEstudios]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDeEstudios](
	[CursoID] [int] NOT NULL,
	[CarreraID] [int] NOT NULL,
 CONSTRAINT [PK_PlanDeEstudios] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC,
	[CarreraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requisitos]    Script Date: 15/03/2022 21.10.25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requisitos](
	[CursoID] [int] NOT NULL,
	[RequisitoID] [int] NOT NULL,
 CONSTRAINT [PK_Requisitos] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC,
	[RequisitoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Correquisitos]  WITH CHECK ADD  CONSTRAINT [FK_Correquisitos_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Correquisitos] CHECK CONSTRAINT [FK_Correquisitos_Curso]
GO
ALTER TABLE [dbo].[Correquisitos]  WITH CHECK ADD  CONSTRAINT [FK_Correquisitos_Curso1] FOREIGN KEY([CorrequisitoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Correquisitos] CHECK CONSTRAINT [FK_Correquisitos_Curso1]
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
ALTER TABLE [dbo].[HistoricosNotasAprobacion]  WITH CHECK ADD  CONSTRAINT [FK_HistoricosNotasAprobacion_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[HistoricosNotasAprobacion] CHECK CONSTRAINT [FK_HistoricosNotasAprobacion_Curso]
GO
ALTER TABLE [dbo].[HistoricosNotasAprobacion]  WITH CHECK ADD  CONSTRAINT [FK_HistoricosNotasAprobacion_PeriodoLectivo] FOREIGN KEY([PeriodoID])
REFERENCES [dbo].[PeriodoLectivo] ([PeriodoID])
GO
ALTER TABLE [dbo].[HistoricosNotasAprobacion] CHECK CONSTRAINT [FK_HistoricosNotasAprobacion_PeriodoLectivo]
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaPorEstudiante_Estudiante1] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiante] ([EstudianteID])
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante] CHECK CONSTRAINT [FK_MatriculaPorEstudiante_Estudiante1]
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaPorEstudiante_PeriodoLectivo] FOREIGN KEY([PeriodoID])
REFERENCES [dbo].[PeriodoLectivo] ([PeriodoID])
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante] CHECK CONSTRAINT [FK_MatriculaPorEstudiante_PeriodoLectivo]
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaPorEstudiante_PlanDeEstudios] FOREIGN KEY([CursoID], [CarreraID])
REFERENCES [dbo].[PlanDeEstudios] ([CursoID], [CarreraID])
GO
ALTER TABLE [dbo].[MatriculaPorEstudiante] CHECK CONSTRAINT [FK_MatriculaPorEstudiante_PlanDeEstudios]
GO
ALTER TABLE [dbo].[PlanDeEstudios]  WITH CHECK ADD  CONSTRAINT [FK_PlanDeEstudios_Carrera] FOREIGN KEY([CarreraID])
REFERENCES [dbo].[Carrera] ([CarrerarID])
GO
ALTER TABLE [dbo].[PlanDeEstudios] CHECK CONSTRAINT [FK_PlanDeEstudios_Carrera]
GO
ALTER TABLE [dbo].[PlanDeEstudios]  WITH CHECK ADD  CONSTRAINT [FK_PlanDeEstudios_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[PlanDeEstudios] CHECK CONSTRAINT [FK_PlanDeEstudios_Curso]
GO
ALTER TABLE [dbo].[Requisitos]  WITH CHECK ADD  CONSTRAINT [FK_Requisitos_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Requisitos] CHECK CONSTRAINT [FK_Requisitos_Curso]
GO
ALTER TABLE [dbo].[Requisitos]  WITH CHECK ADD  CONSTRAINT [FK_Requisitos_Curso1] FOREIGN KEY([RequisitoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Requisitos] CHECK CONSTRAINT [FK_Requisitos_Curso1]
GO
USE [master]
GO
ALTER DATABASE [ProyectoUFO_DB] SET  READ_WRITE 
GO
