<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="Tienda_Electronica_Web.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Favoritos</h1>
        <p>Tus artículos Favoritos..</p>

        <div class="row">
            <asp:Repeater ID="repRepeater" runat="server"></asp:Repeater>
            <itemtemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl") %>" class="imgProducto mx-auto d-block" alt="Imagen del Producto">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text">Código: <%#Eval("Codigo") %></p>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <p class="card-text">Marca: <%#Eval("Marca.Descripcion") %></p>
                            <p class="card-text">Categoría: <%#Eval("Categoria.Descripcion") %></p>
                            <p class="card-text">Precio: $<%#Eval("Precio", "{0:F2}") %></p>
                            <asp:Button ID="btnEliminarFav" CssClass="btn" runat="server" Text="❌"
                                CommandName="ArticuloId" CommandArgument='<%#Eval("Id") %>' OnClick="btnEliminarFav_Click" />
                        </div>
                    </div>
                </div>
            </itemtemplate>
        </div>



    </div>

</asp:Content>
