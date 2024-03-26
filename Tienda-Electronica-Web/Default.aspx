<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tienda_Electronica_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#e7eaf6; text-align:center;padding-bottom:10px;">Todos los Productos</h1>

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
                <div class="col"">
                    <div class="card"  style="text-align:center;  background-color:#a2a8d3;  margin-top: 25px; min-width:400px ; max-width: 400px; " >
                        <h5 class="card-title" style="padding-top:10px; padding-bottom:10px; "><%#Eval("Nombre") %></h5>
                        <img src="<%#Eval("ImagenUrl")%>" class="card-img-top img-thumbnail" style="display:block;"  alt="...">
                        <div class="card-body">
                            <h4 class="card-price " >$<%#Eval("Precio") %></h4>
                            <p class="card-text" ><%#Eval("Descripcion") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <footer>
        
        <p>FOOTER</p>
    </footer>
</asp:Content>
