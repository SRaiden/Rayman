<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ubisoft.aspx.cs" Inherits="ubisoft" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="panel-izq">
        <asp:Image ID="imgPrincipal" runat="server" ImageUrl="~/img/JPG - PND/0005.png" />
    </div>
    <div id="panel-der">
        <h1>Ubisoft</h1>
        <object data="ubisoft.txt" type="text/ubisoft" width:"100%" style="height: 52em">

        </object>
    </div>
</asp:Content>

