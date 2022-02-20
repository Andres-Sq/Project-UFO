using API_CRUD.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace API_CRUD.DATA
{
    public class ClienteData
    {
        public static bool AgregarCliente(Cliente oCliente)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_AgregarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCliente", oCliente.idCliente);
                cmd.Parameters.AddWithValue("@nombreCliente", oCliente.nombreCliente);
                cmd.Parameters.AddWithValue("@apellidosCliente", oCliente.apellidosCliente);
                cmd.Parameters.AddWithValue("@fechaNacimiento", oCliente.fechaNacimiento);
                cmd.Parameters.AddWithValue("@correo", oCliente.correo);
                cmd.Parameters.AddWithValue("@telefono", oCliente.telefono);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true; 

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static bool ModificarCliente(Cliente oCliente)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ModificarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCliente", oCliente.idCliente);
                cmd.Parameters.AddWithValue("@nombreCliente", oCliente.nombreCliente);
                cmd.Parameters.AddWithValue("@apellidosCliente", oCliente.apellidosCliente);
                cmd.Parameters.AddWithValue("@fechaNacimiento", oCliente.fechaNacimiento);
                cmd.Parameters.AddWithValue("@correo", oCliente.correo);
                cmd.Parameters.AddWithValue("@telefono", oCliente.telefono);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static List<Cliente> ListarClientes()
        {
            List<Cliente> oListaCliente = new List<Cliente>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ListarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaCliente.Add(new Cliente()
                            {
                                idCliente = Convert.ToInt32(dr["idCliente"].ToString()),
                                nombreCliente = dr["nombreCliente"].ToString(),
                                apellidosCliente = dr["apellidosCliente"].ToString(),
                                fechaNacimiento = Convert.ToDateTime(dr["fechaNacimiento"].ToString()),
                                correo = dr["correo"].ToString(),
                                telefono = dr["telefono"].ToString()
                            });
                        }
                    }
                    return oListaCliente;

                }
                catch (Exception ex)
                {
                    return oListaCliente;
                }
            }
        }

        public static List<Cliente> ObtenerClientes(int idusuario)
        {
            List<Cliente> oListaCliente = new List<Cliente>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_FiltrarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCliente", idusuario);

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaCliente.Add(new Cliente()
                            {
                                idCliente = Convert.ToInt32(dr["idUsuario"]),
                                nombreCliente = dr["nombreCliente"].ToString(),
                                apellidosCliente = dr["apellidosCliente"].ToString(),
                                fechaNacimiento = Convert.ToDateTime(dr["fechaNacimiento"].ToString()),
                                correo = dr["correo"].ToString(),
                                telefono = dr["telefono"].ToString()
                            });
                        }
                    }
                    return oListaCliente;

                }
                catch (Exception ex)
                {
                    return oListaCliente;
                }
            }
        }

        public static bool EliminarCliente(int idC)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_EliminarCliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCliente", idC);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }
    }
}