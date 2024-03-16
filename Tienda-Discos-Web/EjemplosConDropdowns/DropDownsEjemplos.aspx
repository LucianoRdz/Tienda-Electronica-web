<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DropDownsEjemplos.aspx.cs" Inherits="Tienda_Discos_Web.EjemplosConDropdowns.DropDownsEjemplos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <h4>DropDownList Estático</h4>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle" ID="ddlMarcas" runat="server">
                <asp:ListItem text="Apple"/>
                <asp:ListItem text="Samsung"/>
                <asp:ListItem text="Huawei"/>
                <asp:ListItem text="Sony"/>
                <asp:ListItem text="Motorola"/>
            </asp:DropDownList>
        </div>
    </div>

</asp:Content>
