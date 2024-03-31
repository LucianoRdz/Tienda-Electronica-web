<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DropDownEnlazado.aspx.cs" Inherits="Tienda_Electronica_Web.EjemplosConDropdowns.DropDownEnlazado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    
    <h3>Dropdown enlazado con update panel</h3>
     
    <asp:UpdatePanel  runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col">
                    <asp:Label Text="Marcas" runat="server" />
                    <asp:DropDownList runat="server" ID="ddlMarca" CssClass="btn btn-outline-dark dropdown-toggle"
                        AutoPostBack="true" OnSelectedIndexChanged="ddlMarca_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="col">
                    <asp:Label Text="Articulos" runat="server" />
                    <asp:DropDownList runat="server" ID="ddlArticulosFiltrados" CssClass="btn btn-outline-dark dropdown-toggle">
                    </asp:DropDownList>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
   

</asp:Content>
