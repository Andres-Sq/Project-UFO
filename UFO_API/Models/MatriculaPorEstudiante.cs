using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class MatriculaPorEstudiante
    {
        public int PeriodoId { get; set; }
        public int EstudianteId { get; set; }
        public int CursoId { get; set; }
        public int CarreraId { get; set; }
        public int Nota { get; set; }

        public virtual PlanDeEstudios C { get; set; }
        public virtual Estudiante Estudiante { get; set; }
        public virtual PeriodoLectivo Periodo { get; set; }
    }
}
