using API_CRUD.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace API_CRUD.DATA
{
    public class AsociacionData
    {
        public static bool AgregarAsociacion(Asociacion oAsociacion)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_AgregarAsociacion", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAsociacion", oAsociacion.idAsociacion);
                cmd.Parameters.AddWithValue("@nomCliente", oAsociacion.nomCliente);
                cmd.Parameters.AddWithValue("@apeCliente", oAsociacion.apeCliente);
                cmd.Parameters.AddWithValue("@nomProducto", oAsociacion.nomProducto);

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

        public static bool ModificarAsociacion(Asociacion oAsociacion)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ModificarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAsociacion", oAsociacion.idAsociacion);
                cmd.Parameters.AddWithValue("@nomCliente", oAsociacion.nomCliente);
                cmd.Parameters.AddWithValue("@apeCliente", oAsociacion.apeCliente);
                cmd.Parameters.AddWithValue("@nomProducto", oAsociacion.nomProducto);

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

        public static List<Asociacion> ListarAsociacion()
        {
            List<Asociacion> oListaAsociacion = new List<Asociacion>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ListarAsociacion", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaAsociacion.Add(new Asociacion()
                            {
                                idAsociacion = Convert.ToInt32(dr["idAsociacion"].ToString()),
                                nomCliente = dr["nomCliente"].ToString(),
                                apeCliente = dr["apeCliente"].ToString(),
                                nomProducto = dr["nomProducto"].ToString()
                            });
                        }
                    }
                    return oListaAsociacion;

                }
                catch (Exception ex)
                {
                    return oListaAsociacion;
                }
            }
        }

        public static List<Asociacion> ObtenerAsociacion(int idasociacion)
        {
            List<Asociacion> oListaAsociacion = new List<Asociacion>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_FiltrarAsociacion", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAsociacion", idasociacion);

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaAsociacion.Add(new Asociacion()
                            {
                                idAsociacion = Convert.ToInt32(dr["idAsociacion"].ToString()),
                                nomCliente = dr["nomCliente"].ToString(),
                                apeCliente = dr["apeCliente"].ToString(),
                                nomProducto = dr["nomProducto"].ToString()
                            });
                        }
                    }
                    return oListaAsociacion;

                }
                catch (Exception ex)
                {
                    return oListaAsociacion;
                }
            }
        }

        public static bool EliminarAsociacion(int idasociacion)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_EliminarAsociacion", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAsociacion", idasociacion);

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