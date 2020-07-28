<%@ Page Title="About us" Language="C#" MasterPageFile="~/Master/Frontend.Master" AutoEventWireup="true" CodeBehind="AboutUS.aspx.cs" Inherits="Myfirstwebpage.AboutUS.AboutUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h3>Đây là Website minh họa quá trình học ASP.NET</h3>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <nhatminh:Banner runat="server" ID="Banner2" DisplayDirection="Horizontal" />
</asp:Content>
