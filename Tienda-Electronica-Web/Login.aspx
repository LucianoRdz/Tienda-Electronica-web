﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tienda_Electronica_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4">
            <h2>Iniciar Sesión</h2>
            <div class="mb-3">
                <label class="form-label" >Ingrese su Email</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Ingrese la contraseña</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password" />
            </div>
           
            <asp:Button ID="btnLogin" style="margin-top:10px; margin-bottom:15px; " OnClick="btnLogin_Click" class="btn btn-primary"  runat="server" Text="Ingresar" />
            <p>Si no tenes cuenta creala haciendo  <a href="Registro.aspx">CLick aca</a> </p>
            

        </div>
    </div>

</asp:Content>
