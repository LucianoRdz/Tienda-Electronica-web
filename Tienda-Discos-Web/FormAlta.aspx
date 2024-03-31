<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormAlta.aspx.cs" Inherits="Tienda_Electronica_Web.FormAlta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <h1>Formulario de Alta</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" PlaceHolder="Id generado automáticamente" />
            </div>

            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre: </label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre  es obligatorio" ControlToValidate="txtNombre" runat="server" />
            </div>

            <div class="mb-3">
                <label for="txtPrecio" class="form-label">Precio: </label>
                <asp:TextBox runat="server" ID="txtPrecio" ClientIDMode="Static" CssClass="form-control" />

                <asp:RegularExpressionValidator ID="regexNumero" runat="server"
                    ControlToValidate="txtPrecio"
                    ErrorMessage="ingresar solo números"
                    ValidationExpression="^\d+$">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El precio es obligatorio" ControlToValidate="txtPrecio" ForeColor="yellow" runat="server" />
            </div>

            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Código: </label>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El codigo es obligatorio" ControlToValidate="txtCodigo" runat="server" />
            </div>

            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Marca: </label>
                <asp:DropDownList ID="ddlMarca" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoría:</label>
                <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>


            <div class="mb-3">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass=" btn btn-success " OnClick="btnAceptar_Click" />
                <a class="btn btn-primary"  href="../Lista.aspx">Cancelar</a>
            </div>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" />
                    </div>

                    <%if (ConfirmaEliminacion)
                        { %>
                    <div class="mb-3">
                        <asp:CheckBox Text="Confirmar Eliminación" ID="chkConfirmaEliminacion" runat="server" />
                        <asp:Button ID="btnConfirmaEliminar" Text="Eliminar" OnClick="btnConfirmaEliminar_Click" CssClass="btn btn-outline-danger" runat="server" />
                    </div>
                    <%}%>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción: </label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="La descripcion es obligatoria" ControlToValidate="txtDescripcion" runat="server" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtImagenUrl" class="form-label">Url Imagen:</label>
                        <asp:TextBox runat="server" ID="txtImagenUrl" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged" />
                    </div>
                    <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png"
                        runat="server" ID="imgArticulo" Width="60%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>




</asp:Content>
