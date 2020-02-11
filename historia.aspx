<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="historia.aspx.cs" Inherits="historia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="panel-izq">
        <asp:Image ID="imgPrincipal" runat="server" ImageUrl="~/img/JPG - PND/0002.png" />
    </div>
    <div id="panel-der">
        <h1>Historia</h1>
        <object data="historia.txt" type="text/historia" width:"100%" style="height: 52em">

        </object>
    </div>
</asp:Content>

