<%@ Page Title="Test of Skin" Language="C#" MasterPageFile="~/Master/Frontend.Master" AutoEventWireup="true" CodeBehind="SkinDemo.aspx.cs" Inherits="Myfirstwebpage.SkinDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" EnableTheming="False" />
    <asp:Button ID="Button2" runat="server" Text="Button" SkinID="RedButton" />
</asp:Content>
