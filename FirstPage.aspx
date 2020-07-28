<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="Myfirstwebpage.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .title {
            background-color: #808080;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="intro" style="border-style: inset; border-width: medium; border-color: #800080 #808080 #808000 #008000">Xin Chào Các Bạn Đến Với ASP.NET</h1>
            <p class="introduction" style="border-color: #008080 #800000 #FF0000 #00FFFF; border-style: double">Chúc Các Bạn Thành Công</p>
            <p class ="style">Xin Chào</p>
            <asp:Label ID="lbServer" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lbHTML" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnServer" runat="server" Text="Server" OnClick="ServerMessage" /><br />
            <button type="button" onclick="HTMLMessage()">HTML</button>
        </div>
    </form>
    <script>
        function HTMLMessage() {
            document.getElementById("lbHTML").innerHTML = "Hi im HTML";
        }
    </script>
</body>
</html>
