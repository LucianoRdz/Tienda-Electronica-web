<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tienda_Discos_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Iniciar Sesión</h2>

    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtNombreUsuario" class="form-label">Nombre de Usuario: </label>
                <asp:TextBox runat="server" ID="txtNombreUsuario" CssClass="form-control" />
            </div>

            <div class="mb-3 ">
                <label type="password" for="txtPass" class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password" />
            </div>
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
        </div>
    </div>



</asp:Content>
