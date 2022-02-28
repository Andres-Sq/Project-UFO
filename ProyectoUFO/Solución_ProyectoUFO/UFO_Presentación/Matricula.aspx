<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matricula.aspx.cs" Inherits="UFO_Presentación.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Matricula</title>
    <link rel="preload" href="css/normalize.css" as="style" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preload" href="css/styles.css" as="style" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/6f42c9f0bc.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <br />
            <!--Seccion Botones y Tabla-->
            <section class="caja-botones contenedor">
                <div>
                    <asp:LinkButton id="btnListar" CssClass="boton-L" runat="server"><i class="fa-solid fa-list"></i></asp:LinkButton>

                </div>
            </section>

        </div>
    </form>
</body>
</html>

