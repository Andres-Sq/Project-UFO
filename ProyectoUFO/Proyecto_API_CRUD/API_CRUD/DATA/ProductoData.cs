using API_CRUD.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace API_CRUD.DATA
{
    public class ProductoData
    {
        public static bool AgregarProducto(Producto oProducto)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_AgregarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProducto", oProducto.idProducto);
                cmd.Parameters.AddWithValue("@nombreProducto", oProducto.nombreProducto);
                cmd.Parameters.AddWithValue("@categoriaProducto", oProducto.categoriaProducto);

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

        public static bool ModificarProducto(Producto oProducto)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ModificarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProducto", oProducto.idProducto);
                cmd.Parameters.AddWithValue("@nombreProducto", oProducto.nombreProducto);
                cmd.Parameters.AddWithValue("@categoriaProducto", oProducto.categoriaProducto);

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

        public static List<Producto> ListarProducto()
        {
            List<Producto> oListaProducto = new List<Producto>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_ListarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaProducto.Add(new Producto()
                            {
                                idProducto = Convert.ToInt32(dr["idProducto"].ToString()),
                                nombreProducto = dr["nombreProducto"].ToString(),
                                categoriaProducto = dr["categoriaProducto"].ToString()
                            });
                        }
                    }
                    return oListaProducto;

                }
                catch (Exception ex)
                {
                    return oListaProducto;
                }
            }
        }

        public static List<Producto> ObtenerProducto(int idproducto)
        {
            List<Producto> oListaProducto = new List<Producto>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_FiltrarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProducto", idproducto);

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaProducto.Add(new Producto()
                            {
                                idProducto = Convert.ToInt32(dr["idProducto"].ToString()),
                                nombreProducto = dr["nombreProducto"].ToString(),
                                categoriaProducto = dr["categoriaProducto"].ToString()
                            });
                        }
                    }
                    return oListaProducto;

                }
                catch (Exception ex)
                {
                    return oListaProducto;
                }
            }
        }

        public static bool EliminarProducto(int idProducto)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_EliminarProducto", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProducto", idProducto);

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