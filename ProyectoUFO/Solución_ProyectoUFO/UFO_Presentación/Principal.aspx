<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="UFO_Presentación.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Universidad del Futuro | Principal</title>
    <link rel="preload" href="css/normalize.css" as="style" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preload" href="css/styles.css" as="style" />
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/Scripts/bootstrap.min.js" />
                </Scripts>
            </asp:ScriptManager>
            <header>
                <h1 style="text-align: center">Universidad del Futuro</h1>
            </header>
            <div class="nav-bg">
                <nav class="navegacion-principal contenedor">
                    <a href="Principal.aspx">Inicio</a>
                    <a href="Matricula.aspx">Matrícula</a>
                    <a href="Estados.aspx">Estados</a>
                    <a href="Notas.aspx">Notas </a>
                    <a href="MatriculaxEstudiantes.aspx">Matricula por Estudiante</a>
                </nav>
            </div>
            <!--Section para la foto de portada-->
            <section class="foto-fondo">
                <div class="contenido-fondo">
                    <h2>Siempre tendras un futuro </h2>
                    <div class="ubicacion">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-map-pin" width="88" height="88" viewBox="0 0 24 24" stroke-width="1.5" stroke="#FFC107" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <circle cx="12" cy="11" r="3" />
                            <path d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z" />
                        </svg>
                        <p>Costa Rica, San Jose</p>
                    </div>
                    <a class="boton-contactar" href="#">Contactar</a>
                </div>
            </section>
            <main class="contenedor sombra">
                <h2>Información</h2>
                <div class="servicios">
                    <section class="servicio">
                        <h3>Virtual</h3>
                        <div class="iconos">
                           <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-device-laptop" width="40" height="40" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffec00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                              <line x1="3" y1="19" x2="21" y2="19" />
                              <rect x="5" y="6" width="14" height="10" rx="1" />
                           </svg>
                        </div>
                        <p>La universidad no dispone de sedes físicas, sino que son carreras 100% virtuales.</p>
                    </section>

                    <section class="servicio">
                        <h3>Nosotros</h3>
                        <div class="iconos">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-trophy" width="40" height="40" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffec00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                              <line x1="8" y1="21" x2="16" y2="21" />
                              <line x1="12" y1="17" x2="12" y2="21" />
                              <line x1="7" y1="4" x2="17" y2="4" />
                              <path d="M17 4v8a5 5 0 0 1 -10 0v-8" />
                              <circle cx="5" cy="9" r="2" />
                              <circle cx="19" cy="9" r="2" />
                            </svg>
                        </div>

                        <p>Es un nuevo centro académico que está orientado a brindar a sus estudiantes la mejor experiencia.</p>
                    </section>

                    <section class="servicio">
                        <h3>Carreras</h3>
                        <div class="iconos">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-notebook" width="40" height="40" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffec00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                              <path d="M6 4h11a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-11a1 1 0 0 1 -1 -1v-14a1 1 0 0 1 1 -1m3 0v18" />
                              <line x1="13" y1="8" x2="15" y2="8" />
                              <line x1="13" y1="12" x2="15" y2="12" />
                            </svg>
                        </div>
                        <p>
                            Constan de una malla de cursos, esta orientada a que los estudiantes matriculen los cursos que deseen.
                        </p>
                    </section>
                </div>
            </main>
        </div>
    </form>
</body>
</html>
