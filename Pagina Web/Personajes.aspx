<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personajes.aspx.cs" Inherits="Personajes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="StyleSheet" href="StyleSheet.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">    
    <div id="Menu">
        <ul class="MenuPrincipal">
             <li><a href="Home.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Home</a></li>
              <li><a href="Historia.aspx">&nbsp;&nbsp;&nbsp; Historia</a></li>
              <li><a href="Personajes.aspx">&nbsp;&nbsp;&nbsp;&nbsp; Personajes</a></li>
              <li><a href="Tienda.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tienda</a></li>
              <li><a href="Ubisoft.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubisoft</a></li>
              <li><a href="Contacto.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contacto</a></li>
              <li><a href="CerrarSesion.aspx">&nbsp; Cerrar Sesion</a></li>
        </ul>
    </div>
        <div class="EspacioVacio">&nbsp;&nbsp;</div>
        <table class="TablaInicio">
            <tr>
                <td style="margin-left: 40px">
                <img id="img3" src="Imagenes/JPG - PND/0003 oscuro.png"/></td>
                 <td style="margin-left: 80px">
                    <div runat="server" id="cuadro"></div>
                    <%--<img id="img7" src="Imagenes/JPG - PND/fondoblanco2.png"/--%>></td>
            </tr>
        </table>
    </form>
</body>
</html>
