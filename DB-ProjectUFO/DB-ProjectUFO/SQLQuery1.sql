USE ProyectoUFO_DB
GO

INSERT INTO Estados(EstadoID, Nombre) VALUES (1, 'Abierto')
INSERT INTO Estados(EstadoID, Nombre) VALUES (2, 'Finalizado')
INSERT INTO Estados(EstadoID, Nombre) VALUES (3, 'Cerrado')

INSERT INTO PeriodoLectivo(PeriodoID, Nombre, FechaInicio, FechaFinal, Estado, MatriculaID) VALUES ()

INSERT INTO Matricula(MatriculaID, Estado) VALUES ()

INSERT INTO Estudiante(EstudianteID, Nombre, Apellidos, Carnet) VALUES ()

INSERT INTO MatriculaPorEstudiante(MatriculaID, EstudianteID) VALUES()

INSERT INTO Carrera(CarrerarID, Nombre) VALUES ()

INSERT INTO Curso(CursoID, Nombre, CarreraID) VALUES ()

INSERT INTO CursosPorEstudiantes(EstudianteID, CursoID, Nota) VALUES ()

INSERT INTO Notas(NotaID, NotaAprobacion, FechaUltimoCambio) VALUES ()