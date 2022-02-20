using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_CRUD.Models
{
    public class Asociacion
    {
        public int idAsociacion { get; set; }
        public string nomCliente { get; set; }
        public string apeCliente { get; set; }
        public string nomProducto { get; set; }
    }
}