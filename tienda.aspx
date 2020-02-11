<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tienda.aspx.cs" Inherits="tienda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="panel-izq">
        <asp:Image ID="imgPrincipal" runat="server" ImageUrl="~/img/JPG - PND/0004.png" />
    </div>
    <div id="panel-der">
        <h1>Tienda</h1>
        <div id="Filtro"> Filtraje: 
            Orden: <asp:DropDownList runat="server"></asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Asc o Des: <asp:DropDownList runat="server"></asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Plataformas: <asp:DropDownList runat="server"></asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" id="Filtrar"/>
       </div>

        <asp:ListView ID="lvTienda" runat="server" >
           
                
             <ItemTemplate>
                <li style="">
                    <div id="Lista" class="Lista">
                    <asp:Label ID="NomjuegoLabel" runat="server" CssClass="Titulo" Text='<%# Eval("Nomjuego") %>' />
                   
                    <asp:Image ID="dibujoLabel" runat="server" CssClass="Imagen" Height="200px" ImageUrl='<%# Eval("Dibujo") %>' />
                  
                    <asp:Label ID="distribuidor" runat="server" CssClass="Dist" Text='<%# Eval("distribuidor") %>' />
                    <br />
                    <asp:Label ID="fecha" runat="server" CssClass="Fch" Text='<%# Eval("fecha_estreno") %>' />
                    <br />
                    <asp:Label ID="diseñador" runat="server" CssClass="Dis" Text='<%# Eval("diseñador") %>' />
                    <br />
                  
                          <%--<asp:SqlDataSource runat="server" ID="DatoPlataforma" ConnectionString='<%$ ConnectionStrings:VersionRayman2ConnectionString %>' SelectCommand="select plataforma.plataforma from plataforma INNER JOIN JuegoxPlat ON plataforma.codplataforma = JuegoxPlat.codplataforma INNER JOIN juego ON JuegoxPlat.codjuego = juego.codjuego where juego.codjuego = 10" ></asp:SqlDataSource>           --%>
         <%-- <asp:DropDownList ID="ddlPlataforma" CssClass="Scroll" runat="server" DataSourceID="DatoPlataforma" DataTextField="plataforma" DataValueField="plataforma" />
        --%>            
                     <asp:DropDownList ID="ddlPlataforma" runat="server" CssClass="Plataforma"/>
        
                    <asp:Button ID="Comprar" runat="server" Text="Comprar" CssClass="BotonC"/>
                        </div>
                </li>
            </ItemTemplate>

            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>


        </asp:ListView> 
    </div>
</asp:Content>

