<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tienda_Electronica_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 >Todos los Productos</h1>
   
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card " >
                        <h5 class="card-title"><%#Eval("Nombre") %></h5>
                        <img src="<%#Eval("ImagenUrl")%>" class="card-img-top mx-auto d-block"  "  alt="Imagen del Articulo">
                        <div class="card-body">
                            <h4 class="card-price " >$<%#Eval("Precio") %></h4
                            <p class="card-text" ><%#Eval("Descripcion") %></p>
                            <a href="Detalles.aspx?id=<%#Eval("Id") %>" class=" btn btn-primary">Ver Detalle</a>
                           
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
