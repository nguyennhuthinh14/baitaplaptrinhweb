<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="Myfirstwebpage.MyPage.MyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/Style.css" rel="stylesheet" type="text/css" />
    <script src="../Style/doimau.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="introduction">    
        <div id="mau" class="intro">
            <h1>Đăng Nhập</h1>
                <asp:Label ID="lbName" runat="server" Text="Tên"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" Width="88px"></asp:TextBox><br />
                <asp:Label ID="lbPhone" runat="server" Text="SDT"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" Width="84px"></asp:TextBox><br />
                <asp:Label ID="lbGT" runat="server" Text="Giới Tính"></asp:Label><br />
                <asp:RadioButton ID="rbNam" runat="server" Text="Nam" />
                <asp:RadioButton ID="rbNu" runat="server" Text="Nữ" /><br />
                <asp:Label ID="lbQT" runat="server" Text="Quốc Tịch"></asp:Label>
                <asp:DropDownList ID="ddlQT" runat="server">
                    <asp:ListItem>Việt Nam</asp:ListItem>
                    <asp:ListItem>Anh</asp:ListItem>
                    <asp:ListItem>Mỹ</asp:ListItem>
                </asp:DropDownList><br />
                <asp:Button cssclass="button" ID="btnDangKy" runat="server" Text="Đăng Ký" OnClick="Page_Load"/>
                <asp:Button CssClass="button" ID="btnHuy" runat="server" Text="Hủy" Width="48px" OnClick="btnHuy_Click"/>
        </div>
        <div class="intro2">
            <h2>Thông Tin Đăng Ký</h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
