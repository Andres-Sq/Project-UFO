using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class Estudiante
    {
        public Estudiante()
        {
            MatriculaPorEstudiante = new HashSet<MatriculaPorEstudiante>();
        }

        public int EstudianteId { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Carnet { get; set; }

        public virtual ICollection<MatriculaPorEstudiante> MatriculaPorEstudiante { get; set; }
    }
}
