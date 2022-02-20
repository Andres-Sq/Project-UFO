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
    public class AsociacionController : ApiController
    {
        // GET api/<controller>
        public List<Asociacion> Get()
        {
            return AsociacionData.ListarAsociacion();
        }

        // GET api/<controller>/5
        public List<Asociacion> Get(int id)
        {
            return AsociacionData.ObtenerAsociacion(id);
        }

        // POST api/<controller>
        public bool Post([FromBody] Asociacion oAsociacion)
        {
            return AsociacionData.AgregarAsociacion(oAsociacion);
        }

        // PUT api/<controller>/5
        public bool Put([FromBody] Asociacion oAsociacion)
        {
            return AsociacionData.ModificarAsociacion(oAsociacion);
        }

        // DELETE api/<controller>/5
        public bool Delete(int id)
        {
            return AsociacionData.EliminarAsociacion(id);
        }
    }
}