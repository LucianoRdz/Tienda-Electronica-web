<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tienda_Electronica_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4">
            <h2>Iniciar Sesión</h2>
            <div class="mb-3">
                <label class="form-label">Ingrese su Email</label>
                <asp:TextBox ID="txtEmail" required ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ErrorMessage="Formato de email incorrecto" CssClass="validacion" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="El email es obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <label class="form-label">Ingrese la contraseña</label>
                <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtPassword" TextMode="Password" />
                <asp:RequiredFieldValidator CssClass="validacionRegsitro" ErrorMessage="Debes ingresar una contraseña" ControlToValidate="txtPassword" runat="server" />

            </div>
            <asp:Button ID="btnLogin" Style="margin-top: 10px; margin-bottom: 15px;" OnClick="btnLogin_Click" class="btn btn-primary" runat="server" Text="Ingresar" />
            <p>Si no tenes cuenta creala haciendo  <a href="Registro.aspx">Click aca</a> </p>


        </div>
    </div>

</asp:Content>
