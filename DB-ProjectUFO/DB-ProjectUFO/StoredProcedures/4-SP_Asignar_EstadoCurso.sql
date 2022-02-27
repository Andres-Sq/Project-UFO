USE [ProyectoUFO_DB]
GO
/****** Object:  StoredProcedure [dbo].[SP_Agregar_Notas]    Script Date: 26/02/2022 21.21.40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE SP_Asignar_EstadoCurso	
	@CURSOID INT
	 
AS
BEGIN	 

	DECLARE @NOTA INT
	DECLARE @NOTAAPROBACION INT

	SET @NOTA =  (SELECT [CursosPorEstudiantes].[Nota] 
						FROM [CursosPorEstudiantes]
						WHERE [CursosPorEstudiantes].CursoID = @CURSOID)

	SET @NOTAAPROBACION =  (SELECT TOP(1) [Notas].NotaAprobacion 
						FROM [Notas], [Curso]
						WHERE [Curso].CursoID = @CURSOID AND [Curso].NotaID = [Notas].NotaID)
	
	IF (@NOTA < @NOTAAPROBACION)
		UPDATE [dbo].[CursosPorEstudiantes]
		SET [EstadoCurso] = 'REPROBADO'
		WHERE [CursosPorEstudiantes].CursoID = @CURSOID
	ELSE 
		UPDATE [dbo].[CursosPorEstudiantes]
		SET [EstadoCurso] = 'APROBADO'
		WHERE [CursosPorEstudiantes].CursoID = @CURSOID
END

 
