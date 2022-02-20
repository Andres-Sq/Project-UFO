using API_CRUD.DATA;
using API_CRUD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_CRUD.Controllers
{
    public class ClienteController : ApiController
    {
        // GET api/<controller>
        public List<Cliente> Get()
        {
            return ClienteData.ListarClientes();
        }

        // GET api/<controller>/5
        public List<Cliente> Get(int id)
        {
            return ClienteData.ObtenerClientes(id);
        }

        // POST api/<controller>
        public bool Post([FromBody] Cliente oCliente)
        {
            return ClienteData.AgregarCliente(oCliente);
        }

        // PUT api/<controller>/5
        public bool Put([FromBody] Cliente oCliente)
        {
            return ClienteData.ModificarCliente(oCliente);
        }

        // DELETE api/<controller>/5
        public bool Delete(int id)
        {
            return ClienteData.EliminarCliente(id);
        }
    }
}