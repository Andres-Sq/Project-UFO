USE [ProyectoUFO_DB]
GO

CREATE PROCEDURE [dbo].[SP_Cambiar_A_Cerrado]
	@PERIODOID INT
AS
BEGIN	
	
	SELECT COUNT(Nota)
	FROM CursosPorEstudiantes 
	WHERE Nota=-1;

END