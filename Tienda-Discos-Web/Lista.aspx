<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Tienda_Electronica_Web.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de productos</h1>
    <asp:GridView ID="dgvArticulos" runat="server" CssClass="table"></asp:GridView>
</asp:Content>
