<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="Tienda_Electronica_Web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mi Perfil</h1>

    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="txtNombre" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre  es obligatorio" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regexLetras" runat="server"
                    ControlToValidate="txtApellido"
                    ErrorMessage="Formato de apellido incorrecto"
                    ValidationExpression="^[a-zA-Z]+$">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El apellido  es obligatorio" ControlToValidate="txtApellido" runat="server" />
                <div style="margin-bottom: 15px;">
                    <asp:Label ID="lblMensaje"  runat="server" forecolor="White" visible="false"   ></asp:Label>
                    <asp:Button Text="Guardar" CssClass="btn btn-primary " ID="btnGuardar" OnClick="btnGuardar_Click" runat="server" />
                    <a class="btn btn-danger" href="../Default.aspx">Cancelar</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label" id="lblImagenPerfil">Imagen Perfil</label>
                <input type="file" id="txtImagen" runat="server" class="form-control" />
            </div>
            <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                runat="server" CssClass="img-fluid mb-3" />
        </div>
    </div>


</asp:Content>


