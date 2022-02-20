USE ProyectoUFO_DB
GO

INSERT INTO Carrera(CarrerarID, Nombre) VALUES ('CB-0108', 'Contaduria')

INSERT INTO Curso(CursoID, Nombre, CarreraID) VALUES (1001,'CE-1807','Calculo I')

INSERT INTO CursosPorEstudiantes(EstudianteID, CursoID, Nota) VALUES (301570178, 1001, 85)

INSERT INTO Estados(EstadoID, Nombre) VALUES (1, 'Abierto')
INSERT INTO Estados(EstadoID, Nombre) VALUES (2, 'Finalizado')
INSERT INTO Estados(EstadoID, Nombre) VALUES (3, 'Cerrado')

INSERT INTO Estudiante(EstudianteID, Nombre, Apellidos, Carnet) VALUES (301570178, 'Manuel', 'Guevara', 'Arias', 202210010977)

INSERT INTO Matricula(MatriculaID, Estado) VALUES (10002, 'Abierto')

INSERT INTO MatriculaPorEstudiante(MatriculaID, EstudianteID) VALUES(2001, 301570178)

INSERT INTO Notas(NotaID, NotaAprobacion, FechaUltimoCambio) VALUES (3001, 85, 01/15/2019)

INSERT INTO PeriodoLectivo(PeriodoID, Nombre, FechaInicio, FechaFinal, Estado, MatriculaID) VALUES ('A001','Manuel',01/22/2020,04/13/2020,'Abierto',2001)














