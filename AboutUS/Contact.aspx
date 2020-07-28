<%@ Page Title="Contact us" Language="C#" MasterPageFile="~/Master/Frontend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Myfirstwebpage.AboutUS.Contact" %>

<%@ Register Src="~/ContactForm.ascx" TagPrefix="nhatminh" TagName="ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <nhatminh:ContactForm runat="server" id="ContactForm" />
</asp:Content>
