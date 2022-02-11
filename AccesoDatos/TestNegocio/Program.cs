using Entidades;
using Negocio;
using System;
using System.Collections.Generic;

namespace TestNegocio
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int opc = 0;

                do
                {
                    Console.Clear();
                    string menu = " Menu Principal \n\n";
                    menu += "  1. Probar conexion \n";
                    menu += "  2. Insertar \n";
                    menu += "  3. Modificar \n";
                    menu += "  4. Eliminar \n";
                    menu += "  5. Consultar Todo \n";
                    menu += "  6. Consultar por ID \n";
                    menu += "  7. Salir \n";
                    menu += "  Digite opcion: ";

                    Console.WriteLine(menu);
                    opc = Convert.ToInt32(Console.ReadLine());

                    switch (opc)
                    {
                        case 1:
                            {
                                Console.Clear();
                                Console.WriteLine("No implementado");
                                Console.ReadKey();
                            }
                            break;
                        case 2:
                            {
                                Console.Clear();
                                Usuarios objusuario = new Usuarios();

                                Console.WriteLine("Digite nombre usuario");
                                objusuario.NombreUsuario = Console.ReadLine();
                                Console.WriteLine("Digite clave:");
                                objusuario.Contrasena = Console.ReadLine();
                                Console.WriteLine("Digite Estado usuario (A/I)");
                                string valor = Console.ReadLine();
                                if (valor.ToUpper().Equals("A"))
                                    objusuario.Estado = true;
                                else
                                    objusuario.Estado = false;
                                                                
                                Resultado V_Resultado = LogicaMongoDB.Agregar(objusuario);

                                Console.WriteLine(V_Resultado.MensajeUsuario);
                                Console.ReadKey();
                            }
                            break;
                        case 3:
                            {
                                Console.Clear();
                                Usuarios objusuario = new Usuarios();

                                Console.WriteLine("Digite ID usuario");
                                objusuario.ID = Console.ReadLine();
                                Console.WriteLine("Digite nombre usuario");
                                objusuario.NombreUsuario = Console.ReadLine();
                                Console.WriteLine("Digite clave:");
                                objusuario.Contrasena = Console.ReadLine();
                                Console.WriteLine("Digite Estado usuario (A/I)");
                                string valor = Console.ReadLine();
                                if (valor.ToUpper().Equals("A"))
                                    objusuario.Estado = true;
                                else
                                    objusuario.Estado = false;
                                                                
                                Resultado V_Resultado = LogicaMongoDB.Modificar(objusuario);

                                Console.WriteLine(V_Resultado.MensajeUsuario);
                                Console.ReadKey();


                            }
                            break;
                        case 4:
                            {
                                Console.Clear();
                                Usuarios objusuario = new Usuarios();

                                Console.WriteLine("Digite ID usuario");
                                objusuario.ID = Console.ReadLine();
                                                                
                                Resultado V_Resultado = LogicaMongoDB.Eliminar(objusuario);

                                Console.WriteLine(V_Resultado.MensajeUsuario);
                                Console.ReadKey();

                            }
                            break;
                        case 5:
                            {
                                Console.Clear();
                                LogicaMongoDB obj = new LogicaMongoDB();

                                List<Usuarios> lstUsuarios = LogicaMongoDB.Consultar();

                                string msj = string.Empty;

                                lstUsuarios.ForEach(x =>
                                {
                                    msj += "ID: " + x.ID + "\n";
                                    msj += "Nombre: " + x.NombreUsuario + "\n";
                                    msj += "Clave: " + x.Contrasena + "\n";
                                    msj += "Condición: " + (x.Estado ? "Activo" : "Inactivo") + "\n";
                                    msj += "============================================================\n";
                                });

                                Console.WriteLine(msj);
                                Console.ReadKey();
                            }
                            break;
                        case 6:
                            {
                                Console.Clear();
                                Usuarios objusuario = new Usuarios();

                                Console.WriteLine("Digite ID usuario");
                                objusuario.ID = Console.ReadLine();
                                                                
                                List<Usuarios> lstUsuarios = LogicaMongoDB.Consultar(objusuario);

                                string msj = string.Empty;

                                lstUsuarios.ForEach(x =>
                                {
                                    msj += "ID: " + x.ID + "\n";
                                    msj += "Nombre: " + x.NombreUsuario + "\n";
                                    msj += "Clave: " + x.Contrasena + "\n";
                                    msj += "Condición: " + (x.Estado ? "Activo" : "Inactivo") + "\n";
                                    msj += "============================================================";
                                });

                                Console.WriteLine(msj);
                                Console.ReadKey();

                            }
                            break;
                        case 7: { } break;
                    }
                }
                while (opc != 7);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadKey();
            }
        }
    }
}
