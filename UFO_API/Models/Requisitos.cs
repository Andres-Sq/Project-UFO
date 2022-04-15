using System;
using System.Collections.Generic;

namespace UFO_API.Models
{
    public partial class Requisitos
    {
        public int CursoId { get; set; }
        public int RequisitoId { get; set; }

        public virtual Curso Curso { get; set; }
        public virtual Curso Requisito { get; set; }
    }
}
