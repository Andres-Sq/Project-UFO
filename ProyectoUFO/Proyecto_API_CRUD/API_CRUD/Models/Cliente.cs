using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_CRUD.Models
{
    public class Cliente
    {
        public int idCliente { get; set; }
        public string nombreCliente { get; set; }
        public string apellidosCliente { get; set; }
        public DateTime fechaNacimiento { get; set; }
        public string correo { get; set; }
        public string telefono { get; set; }
    }
}