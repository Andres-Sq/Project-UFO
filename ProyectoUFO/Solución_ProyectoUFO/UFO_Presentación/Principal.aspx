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
                <h1> Universidad del Futuro</h1>
            </header>
            <div class="nav-bg">
                <nav class="navegacion-principal contenedor">
                    <a href="#">Inicio</a>
                    <a href="#">Inicio</a>
                    <a href="#">Inicio</a>
                    <a href="#">Inicio</a>
                </nav>
            </div>

        </div>
    </form>
</body>
</html>
