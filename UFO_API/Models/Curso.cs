using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class Curso
    {
        public Curso()
        {
            CorrequisitosCorrequisito = new HashSet<Correquisitos>();
            CorrequisitosCurso = new HashSet<Correquisitos>();
            HistoricosNotasAprobacion = new HashSet<HistoricosNotasAprobacion>();
            PlanDeEstudios = new HashSet<PlanDeEstudios>();
            RequisitosCurso = new HashSet<Requisitos>();
            RequisitosRequisito = new HashSet<Requisitos>();
        }

        public int CursoId { get; set; }
        public string Nombre { get; set; }

        public virtual ICollection<Correquisitos> CorrequisitosCorrequisito { get; set; }
        public virtual ICollection<Correquisitos> CorrequisitosCurso { get; set; }
        public virtual ICollection<HistoricosNotasAprobacion> HistoricosNotasAprobacion { get; set; }
        public virtual ICollection<PlanDeEstudios> PlanDeEstudios { get; set; }
        public virtual ICollection<Requisitos> RequisitosCurso { get; set; }
        public virtual ICollection<Requisitos> RequisitosRequisito { get; set; }
    }
}
