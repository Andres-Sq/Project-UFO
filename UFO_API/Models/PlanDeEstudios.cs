using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class PlanDeEstudios
    {
        public PlanDeEstudios()
        {
            MatriculaPorEstudiante = new HashSet<MatriculaPorEstudiante>();
        }

        public int CursoId { get; set; }
        public int CarreraId { get; set; }

        public virtual Carrera Carrera { get; set; }
        public virtual Curso Curso { get; set; }
        public virtual ICollection<MatriculaPorEstudiante> MatriculaPorEstudiante { get; set; }
    }
}
