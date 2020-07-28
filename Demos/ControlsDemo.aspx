<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlsDemo.aspx.cs" Inherits="Myfirstwebpage.Demos.ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <asp:Label ID="Label1" runat="server" Text="Your Name:" CssClass="introduction"></asp:Label>
            <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
            <asp:Button CssClass="button" ID="SubmitButton" runat="server" Text="Submit Information" OnClick="SubmitButton_Click"  /><br />
            <asp:Label ID="Result" runat="server" CssClass="style"></asp:Label>
        </div>       
    </form>
</body>
</html>
