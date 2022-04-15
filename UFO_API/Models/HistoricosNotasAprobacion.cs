using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class HistoricosNotasAprobacion
    {
        public int PeriodoId { get; set; }
        public int CursoId { get; set; }
        public int? NotaAprobacion { get; set; }
        public DateTime? FechaUltimoCambio { get; set; }

        public virtual Curso Curso { get; set; }
        public virtual PeriodoLectivo Periodo { get; set; }
    }
}
