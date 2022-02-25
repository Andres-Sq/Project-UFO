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
            <div class="nav-bg">
                <nav class="navegacion-principal contenedor">
                    <a href="Principal.aspx">Inicio</a>
                    <a href="Matricula.aspx">Matrícula</a>
                    <a href="Estados.aspx">Estados</a>
                    <a href="Notas.aspx">Notas </a>
                    <a href="MatriculaxEstudiantes.aspx">Matricula por Estudiante</a>
                </nav>
            </div>
            
            <!--tabla-->
            <section class="contenedor sombra">
                <div class="">
                <!--Botones-->
                <div>
                    <asp:LinkButton id="btnListar"  CssClass="boton-L" runat="server"> <i class="fa-solid fa-table-list"></i></asp:LinkButton>
                    <asp:LinkButton id="btnAgregar"  CssClass="boton-A" runat="server"> <i class="fa-solid fa-plus"></i></asp:LinkButton>
                    <asp:LinkButton id="btnModificar"  CssClass="boton-L" runat="server"> <i class=""></i></asp:LinkButton>

                </div>
            </div>
            </section>
            
        </div>
    </form>
</body>
</html>

