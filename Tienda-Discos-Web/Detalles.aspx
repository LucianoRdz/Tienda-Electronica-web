<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="Tienda_Electronica_Web.Detalles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        
        width: 80%;
        margin: auto;
        overflow: hidden;
    }

    h1 {
        color: #333;
        text-align: center;
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 20px;
    }

    .col-4 {
        
        width: 40%;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .mb-3 {
        margin-bottom: 15px;
        text-align: center;
    }

    .card {
        
        border: 1px solid #ccc;
        border-radius: 8px;
        overflow: hidden;
        background-color: wheat;
    }

    .card-img-top {
        width: 100%;
        height: auto;
    }

    .card-body {
        padding: 20px;
    }

    .card-img{
        width:300px;
        height:auto;
    }

    .card-title {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 15px;
    }

    .card-text {
        margin-bottom: 10px;
    }

    .btn-primary {
        background-color: #6196A6;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }

        .btn-primary:hover {
            background-color: #0056b3;
        }

    

    .imgDetalle {
        width: auto; 
        height: auto;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <% foreach (dominio.Articulo articulo in listaArticulos)
            {%>
        <div class="col-4">
            <div class="mb-3">
                <div class="card card-img">
                    <img src="<%: articulo.ImagenUrl %>" style="" class="card-img-top imgDetalle mx-auto d-block" alt=".." />
                    <div class="card-body">
                        <h5 class="card-title"><%: articulo.Nombre %></h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-4">
            <div class="mb-3">
                <div class="card cardD">
                    <div class="card-body">
                        <p class="card-text">Código: <%: articulo.Codigo %></p>
                        <p class="card-text">Descripcion: <%: articulo.Descripcion %></p>
                        <p class="card-text">Marca: <%: articulo.Marca.Descripcion %></p>
                        <p class="card-text">Categoria: <%: articulo.Categoria.Descripcion %></p>
                        <p class="card-text">Precio: $<%: articulo.Precio %></p>
                    </div>
                </div>
            </div>
        </div>

        <%} %>
    </div>


    

    <div class="row">
        <div class="col-2">
            <div class="mb-3">
                <asp:Button ID="btnVolver" Style="background-color: red;" OnClick="btnVolver_Click" CssClass=" btn-primary" runat="server" Text="Volver" />
            </div>
        </div>
    </div>


</asp:Content>
