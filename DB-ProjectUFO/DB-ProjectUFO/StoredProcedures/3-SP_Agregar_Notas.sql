USE [ProyectoUFO_DB]
GO

CREATE PROCEDURE SP_Agregar_Notas 
	@ESTUDIANTEID INT,
	@NOTA INT
AS
BEGIN	
   
	UPDATE [dbo].[CursosPorEstudiantes]

	SET [Nota] = @NOTA
      
	WHERE [CursosPorEstudiantes].EstudianteID=@ESTUDIANTEID and 2=(SELECT [Estado]      
		  FROM [dbo].[PeriodoLectivo]
		  WHERE MatriculaID =  ( SELECT TOP (1) MatriculaPorEstudiante.MatriculaID
				FROM MatriculaPorEstudiante
				INNER JOIN CursosPorEstudiantes ON MatriculaPorEstudiante.EstudianteID = @ESTUDIANTEID))

END
GO
