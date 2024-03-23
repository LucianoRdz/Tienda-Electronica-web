<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Tienda_Electronica_Web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea tu cuenta</h2>

    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtEmail" class="form-label">Ingresa tu Email: </label>
                <asp:TextBox runat="server" ID="txtEmail"  CssClass="form-control" />
            </div>

            <div class="mb-3 ">
                <label type="password" for="txtPass" class="form-label">Ingrese su contraseña:</label>
                <asp:TextBox runat="server" ID="txtPass" CssClass="form-control"  TextMode="Password" />
            </div>
            <asp:Button ID="btnRegistrarme" runat="server" class="btn btn-primary " Text="Aceptar" Onclick="btnRegistrarme_Click"  />
        </div>
    </div>



</asp:Content>
