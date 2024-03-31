<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DropDownsEjemplos.aspx.cs" Inherits="Tienda_Electronica_Web.EjemplosConDropdowns.DropDownsEjemplos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <h4>DropDownList Estático</h4>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle" ID="ddlMarcas" runat="server">
                <asp:ListItem Text="Apple" />
                <asp:ListItem Text="Samsung" />
                <asp:ListItem Text="Huawei" />
                <asp:ListItem Text="Sony" />
                <asp:ListItem Text="Motorola" />
            </asp:DropDownList>
        </div>

        <div class="col">
            <h4>DropDownList desde DB</h4>
            <asp:DropDownList runat="server" ID="ddlArticulos" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
    <hr />
    <a href="../EjemplosConDropdowns/DropDownEnlazado.aspx">Dropdowns</a>
</asp:Content>
