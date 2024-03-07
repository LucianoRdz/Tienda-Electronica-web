    <%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tienda_Electronica_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Pagina default</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--<%
            foreach (dominio.Articulo art in ListaArticulo)
            {


        %>
            <div class="col">
                <div class="card">
                    <img src="<%:art.ImagenUrl %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%:art.Nombre %></h5>
                        <p class="card-text"><%:art.Descripcion %></p>
                    </div>
                </div>
            </div>


        <% }%>--%>
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <asp:button Text="Boton" CssClass="btn btn-primary" runat="server" ID="btnEjemplo" CommandArgument='<%#Eval("Id")%>' CommandName="ArticuloId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>




    </div>

</asp:Content>
