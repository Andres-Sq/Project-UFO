<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="UFO_Presentación.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Universidad del Futuro | Principal</title>
    <link rel="preload" href="css/normalize.css" as="style" />
    <link href="Content/bootstrap.min.css" rel="stylesheet"/> 
     <link rel="preload" href="css/styles.css" as="style"/>
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
                <h1 style="text-align:center"> Universidad del Futuro</h1>
            </header>
            <div class="nav-bg">
                <nav class="navegacion-principal contenedor">
                    <a href="#">Inicio</a>
                    <a href="#">Matrícula</a>
                    <a href="#">Estados</a>
                    <a href="#">Notas </a>
                    <a href="#">Matricula por Estudiante</a>
                </nav>
            </div>
            <!--Section para la foto de portada-->
            <section class="foto-fondo">
                <img src="img/Logo.jpg" alt="Alternate Text" />
                <div class="contenido-fondo">
                    <h2> Siempre tendras un futuro </h2>
                    <div class="ubicacion">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-map-pin" width="88" height="88" viewBox="0 0 24 24" stroke-width="1.5" stroke="#FFC107" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <circle cx="12" cy="11" r="3" />
                        <path d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z" />
                         </svg>
                        <p>Costa Rica, San Jose</p>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
