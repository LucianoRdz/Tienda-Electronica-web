<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="Tienda_Electronica_Web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="8">
                </asp:TextBox>
                <div class="row">
                    <div class="col-md-4" style="margin-top:17px;">
                        <asp:Button Text="Guardar" CssClass="btn btn-primary"  OnClick="btnGuardar_Click" ID="btnGuardar" runat="server" />
                    </div>
                  </div>
                </div>
            
                <div>
                    <asp:Button Text="Cancelar" CssClass="btn btn-primary btn-danger" OnClick="btnCancelar_Click" ID="btnCancelar" runat="server" />

                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Imagen Perfil</label>
                    <input type="file" id="txtImagen" runat="server" class="form-control" />
                </div>
                <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                    runat="server" CssClass="img-fluid mb-3" />
                </div>
    </div>
</asp:Content>


