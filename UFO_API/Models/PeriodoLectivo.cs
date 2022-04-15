using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class PeriodoLectivo
    {
        public PeriodoLectivo()
        {
            HistoricosNotasAprobacion = new HashSet<HistoricosNotasAprobacion>();
            MatriculaPorEstudiante = new HashSet<MatriculaPorEstudiante>();
        }

        public int PeriodoId { get; set; }
        public string Nombre { get; set; }
        public DateTime? FechaInicio { get; set; }
        public DateTime? FechaFinal { get; set; }
        public string Estado { get; set; }

        public virtual ICollection<HistoricosNotasAprobacion> HistoricosNotasAprobacion { get; set; }
        public virtual ICollection<MatriculaPorEstudiante> MatriculaPorEstudiante { get; set; }
    }
}
