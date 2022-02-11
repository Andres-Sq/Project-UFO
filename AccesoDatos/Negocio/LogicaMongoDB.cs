using Entidades;
using AccesoDatos;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LogicaMongoDB
    {
        #region Usuarios

        /// <summary>
        /// Metodo para agregar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuario</param>
        /// <returns>TRUE = Correcto | FALSE = Error</returns>
        public static Resultado Agregar(Usuarios P_Entidad)
        {
            Resultado V_resultado = new Resultado();
            AccesoDatosMongoDB objacceso = new AccesoDatosMongoDB();

            try
            {
                List<Usuarios> lstUsuarios = objacceso.Consultar();
                lstUsuarios = lstUsuarios.FindAll(x => x.NombreUsuario.ToUpper().Equals(P_Entidad.NombreUsuario.ToUpper()));

                //Valida si la consulta NO retorno resultados, procede con agregar el usuario
                if(lstUsuarios.Count == 0)
                {
                    //Aqui ejecuta la acción de agregar usuario
                    V_resultado.OperacionSatisfactoria = objacceso.Agregar(P_Entidad);
                    if(!V_resultado.OperacionSatisfactoria)                    
                        V_resultado.MensajeUsuario = "Error al guardar información de Usuario";                    
                }
                else
                {
                    V_resultado.MensajeUsuario = "El usuario ya existe en la base de datos";
                    V_resultado.OperacionSatisfactoria = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return V_resultado;
        }

        /// <summary>
        /// Metodo para modificar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuario</param>
        /// <returns>TRUE = Correcto | FALSE = Error</returns>
        public static Resultado Modificar(Usuarios P_Entidad)
        {
            Resultado V_resultado = new Resultado();
            AccesoDatosMongoDB objacceso = new AccesoDatosMongoDB();

            try
            {
                List<Usuarios> lstUsuarios = objacceso.Consultar(P_Entidad);

                //Valida si la consulta NO retorno resultados, procede con agregar el usuario
                if (lstUsuarios.Count > 0)
                {
                    //Aqui ejecuta la acción de agregar usuario
                    V_resultado.OperacionSatisfactoria = objacceso.Modificar (P_Entidad);
                    if (!V_resultado.OperacionSatisfactoria)
                        V_resultado.MensajeUsuario = "Error al modificar información de Usuario";
                }
                else
                {
                    V_resultado.MensajeUsuario = "El usuario no existe en la base de datos";
                    V_resultado.OperacionSatisfactoria = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return V_resultado;
        }

        /// <summary>
        /// Metodo para borrar un usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo Usuario</param>
        /// <returns>TRUE = Correcto | FALSE = Error</returns>
        public static Resultado Eliminar(Usuarios P_Entidad)
        {
            Resultado V_resultado = new Resultado();
            AccesoDatosMongoDB objacceso = new AccesoDatosMongoDB();

            try
            {
                List<Usuarios> lstUsuarios = objacceso.Consultar(P_Entidad);

                //Valida si la consulta NO retorno resultados, procede con agregar el usuario
                if (lstUsuarios.Count > 0)
                {
                    //Aqui ejecuta la acción de agregar usuario
                    V_resultado.OperacionSatisfactoria = objacceso.Eliminar(P_Entidad);
                    if (!V_resultado.OperacionSatisfactoria)
                        V_resultado.MensajeUsuario = "Error al eliminar información de Usuario";
                }
                else
                {
                    V_resultado.MensajeUsuario = "El usuario no existe en la base de datos";
                    V_resultado.OperacionSatisfactoria = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return V_resultado;
        }

        /// <summary>
        /// Metodo para listar usuarios registrados por Usuario
        /// </summary>
        /// <param name="P_Entidad">Entidad de tipo usuarios</param>
        /// <returns>Entidad Lista de tipo usuarios</returns>
        public static List<Usuarios> Consultar(Usuarios P_Entidad)
        {
            List<Usuarios> lstUsuarios = new List<Usuarios>();

            try
            {
                AccesoDatosMongoDB objacceso = new AccesoDatosMongoDB();
                lstUsuarios = objacceso.Consultar(P_Entidad);
            }
            catch (Exception ex)
            { 
                throw ex;
            }

            return lstUsuarios;
        }

        /// <summary>
        /// Metodo para listar usuarios registrados
        /// </summary>        
        /// <returns>Entidad Lista de tipo usuarios</returns>
        public static List<Usuarios> Consultar()
        {
            List<Usuarios> lstUsuarios = new List<Usuarios>();

            try
            {
                AccesoDatosMongoDB objacceso = new AccesoDatosMongoDB();
                lstUsuarios = objacceso.Consultar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return lstUsuarios;
        }

        #endregion

    }
}
