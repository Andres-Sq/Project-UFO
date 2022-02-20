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
    public class ProductoController : ApiController
    {
        // GET api/<controller>
        public List<Producto> Get()
        {
            return ProductoData.ListarProducto();
        }

        // GET api/<controller>/5
        public List<Producto> Get(int id)
        {
            return ProductoData.ObtenerProducto(id);
        }

        // POST api/<controller>
        public bool Post([FromBody] Producto oProducto)
        {
            return ProductoData.AgregarProducto(oProducto);
        }

        // PUT api/<controller>/5
        public bool Put([FromBody] Producto oProducto)
        {
            return ProductoData.ModificarProducto(oProducto);
        }

        // DELETE api/<controller>/5
        public bool Delete(int id)
        {
            return ProductoData.EliminarProducto(id);
        }
    }
}