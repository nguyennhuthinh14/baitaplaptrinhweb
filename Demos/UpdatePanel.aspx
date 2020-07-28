<%@ Page Title="UpdatePanel Demo" Language="C#" MasterPageFile="~/Master/Frontend.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="Myfirstwebpage.Demos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
           <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">

           </asp:Timer>
       </ContentTemplate>
   </asp:UpdatePanel>
</asp:Content>
