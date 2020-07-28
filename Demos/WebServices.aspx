<%@ Page Title="Web services Demo" Language="C#" MasterPageFile="~/Master/Frontend.Master" AutoEventWireup="true" CodeBehind="WebServices.aspx.cs" Inherits="Myfirstwebpage.Demos.WebServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="MyWebsite" type="text" />
    <input id="sayHello" type="button" value="SayHello" onclick="helloWord();" />
    <script type="text/javascript">
        function helloWord() {
            var myweb = document.getElementById('MyWebsite').value;
            alert("Hello " + myweb);
            NameService.helloWord(myweb, helloWordCallback);
        }
        function helloWordCallback(result) {
            alert(result);
        }
    </script>
</asp:Content>
