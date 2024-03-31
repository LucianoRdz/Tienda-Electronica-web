<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Tienda_Electronica_Web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea tu cuenta</h2>

    <div class="row">
        <div class="col-4">

            <div class="mb-3">
                <label for="txtEmail" class="form-label">Ingresa tu Email: </label>
                <asp:TextBox runat="server" ID="txtEmail"  CssClass="form-control" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El Email  es obligatorio" ControlToValidate="txtEmail" runat="server" />
                <asp:RegularExpressionValidator ErrorMessage="Formato de email Invalido" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtEmail" runat="server" />
            </div>

            <div class="mb-3 ">
                <label type="password" for="txtPass" class="form-label">Crea tu contraseña:</label>
                <asp:TextBox runat="server" ID="txtPass" CssClass="form-control"  TextMode="Password" />
                <asp:RequiredFieldValidator CssClass="validacionRegsitro" ErrorMessage="Debes ingresar una contraseña" ControlToValidate="txtPass" runat="server" />
            </div>
            <asp:Button ID="btnRegistrarme" runat="server" class="btn btn-primary " Text="Aceptar" Onclick="btnRegistrarme_Click"  />
            <p>Si ya tienes una cuenta, inicia sesion haciendo  <a href="Login.aspx">CLick aca</a> </p>
        </div>
    </div>



</asp:Content>
