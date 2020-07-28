<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="Myfirstwebpage.Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <a href="https://nguyennhuthinh.home.blog/" target="_blank" runat="server" id="VerticalLink">
        Welcome to my Blog
    <asp:Image ID="Banner1" runat="server" />
    </a>
</asp:Panel>
<asp:Panel ID="HorizontalPanel" runat="server">
    <a href="https://nguyennhuthinh.home.blog/" target="_blank" runat="server" id="HorizontalLink">
    <asp:Image ID="Banner2" runat="server" ImageUrl="../Images/p7.png"  />
    </a>
</asp:Panel>

