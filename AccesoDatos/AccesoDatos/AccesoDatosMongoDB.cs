using Entidades;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;

namespace AccesoDatos
{
    public class AccesoDatosMongoDB
    {
        #region Atributos

        //Aqui se conservara lo que se conoce como Instancia de base de datos
        private readonly string Cadenaconexion = @"mongodb+srv://Krauzer1041:jFDKmTRyCxzZLjjJ@cluster0.qmyw5.mongodb.net/Seguridad?retryWrites=true&w=majority";

        //Objetos que se utilizaran para realizar la conexion al mongo y su base de datos
        private MongoClient InstanciaMongoDB;
        private IMongoDatabase BaseDatos;

        //Se describe el nombre la base de datos 
        private const string NombreBD = "Seguridad";

        #endregion

        #region Constructor

        public AccesoDatosMongoDB()
        {
            try
            {
                GetConexion();
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (InstanciaMongoDB != null) 
                    InstanciaMongoDB = null;
                if (BaseDatos != null)
                    BaseDatos = null;
            }
        }

        #endregion

        #region Metodos

        #region Privados 

        /// <summary>
        /// Metodo para probar conexion con MondoDB
        /// </summary>
        /// <returns></returns>
        private bool GetConexion()
        {
            bool ConexionCorrecta = false;

            try
            {
                //Inicializo el objeto de instancia Mongo
                InstanciaMongoDB = new MongoClient(Cadenaconexion);

                //Prueba conexion a BD
                BaseDatos = InstanciaMongoDB.GetDatabase(NombreBD);

                //Verifica conexion positiva
                ConexionCorrecta = BaseDatos.RunCommandAsync((Command<BsonDocument>)"{ping:1}").Wait(1000);

            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return ConexionCorrecta;
        }

        #endregion

        #region Publicos 

        /// <summary>
        /// Metodo para agregar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuario</param>
        /// <returns>True = Correcto | False = Error</returns>
        public bool Agregar(Usuarios P_Entidad)
        {
            try
            {
                GetConexion();
                var Coleccion = BaseDatos.GetCollection<Usuarios>("Usuarios");

                Coleccion.InsertOne(P_Entidad);
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (InstanciaMongoDB != null)
                    InstanciaMongoDB = null;
                if (BaseDatos != null)
                    BaseDatos = null;
            }

            return true;
        }

        /// <summary>
        /// Metodo para modificar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuarios</param>
        /// <returns>TRUE = Correcto | FALSE = Error</returns>
        public bool Modificar(Usuarios P_Entidad)
        {
            try
            {
                GetConexion();
                var Coleccion = BaseDatos.GetCollection<Usuarios>("Usuarios");

                Coleccion.ReplaceOne(d => d.ID == P_Entidad.ID, P_Entidad);
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (InstanciaMongoDB != null)
                    InstanciaMongoDB = null;
                if (BaseDatos != null)
                    BaseDatos = null;
            }

            return true;
        }

        /// <summary>
        /// Metodo para eliminar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuarios</param>
        /// <returns>TRUE = Correcto | FALSE = Error</returns>
        public bool Eliminar(Usuarios P_Entidad)
        {
            try
            {
                GetConexion();
                var Coleccion = BaseDatos.GetCollection<Usuarios>("Usuarios");

                Coleccion.DeleteOne(d => d.ID == P_Entidad.ID);
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (InstanciaMongoDB != null)
                    InstanciaMongoDB = null;
                if (BaseDatos != null)
                    BaseDatos = null;
            }

            return true;
        }

        /// <summary>
        /// Metodo de consultar los registros de la coleccion
        /// </summary>
        /// <returns>Entidad Lista de tipo usuarios</returns>
        public List<Usuarios> Consultar()
        {
            List<Usuarios> V_Lista = new List<Usuarios>();

            try
            {
                GetConexion();
                var Coleccion = BaseDatos.GetCollection<Usuarios>("Usuarios");
                V_Lista = Coleccion.Find(d => true).ToList(); 
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return V_Lista;
        }

        /// <summary>
        /// Metodo de consultar los registros de la coleccion
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuarios</param>
        /// <returns>Entidad Lista de tipo usuarios</returns>
        public List<Usuarios> Consultar(Usuarios P_Entidad)
        {
            List<Usuarios> V_Lista = new List<Usuarios>();

            try
            {
                GetConexion();
                var Coleccion = BaseDatos.GetCollection<Usuarios>("Usuarios");
                V_Lista = Coleccion.Find(d => d.ID == P_Entidad.ID).ToList();
            }
            catch (MongoException exM)
            {
                throw exM;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return V_Lista;
        }

        #endregion

        #endregion

    }
}
