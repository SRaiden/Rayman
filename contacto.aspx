<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="contacto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="panel-izq">
        <asp:Image ID="imgPrincipal" runat="server" ImageUrl="~/img/JPG - PND/0006.png" />
    </div>
    <div id="panel-der">
        <h1>Contacto</h1>
       <div id="Contacto">

        <asp:label runat="server" CssClass="LabelC" Text="Nombre: "></asp:label>
        <input  runat="server" />
            <br />
            <br />
        <asp:label runat="server" CssClass="LabelC" Text="Apellido: "> </asp:label>
        <input runat="server"/>
               <br />
               <br />
        <asp:label runat="server" CssClass="LabelC" Text="Correo Electronico: "> </asp:label>
        <input runat="server"/>
               <br />
               <br />
        <asp:label runat="server" CssClass="LabelC" id="lblcomentario" Text="Comentarios: "> </asp:label>
        <input runat="server" id="inputcomentario" class="texto"/>
            <br />
            <br />
        <asp:Button runat="server" ID="Enviar" Text="Enviar" />
           </div>
    
    </div>
</asp:Content>

