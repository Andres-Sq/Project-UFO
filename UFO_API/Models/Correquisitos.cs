using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class Correquisitos
    {
        public int CursoId { get; set; }
        public int CorrequisitoId { get; set; }

        public virtual Curso Correquisito { get; set; }
        public virtual Curso Curso { get; set; }
    }
}
