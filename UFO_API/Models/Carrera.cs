using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class Carrera
    {
        public Carrera()
        {
            PlanDeEstudios = new HashSet<PlanDeEstudios>();
        }

        public int CarrerarId { get; set; }
        public string Nombre { get; set; }

        public virtual ICollection<PlanDeEstudios> PlanDeEstudios { get; set; }
    }
}
