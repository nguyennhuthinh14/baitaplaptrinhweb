<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="Myfirstwebpage.ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 60%;
    }
    .auto-style2 {
        height: 23px;
        width: 264px;
    }
    .auto-style3 {
        width: 173px;
    }
    .auto-style4 {
        height: 23px;
    }
    </style>

<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(1000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 1000).
            animate({ width: '100px' }, 1000).fadeOcut('slow');
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div id="TableWrapper">
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3" class="auto-style4"><a>Thông Tin Liên Hệ</a></td>
    </tr>
    <tr>
        <td class="auto-style2">Tên</td>
        <td class="auto-style3">
            <asp:TextBox ID="Name" runat="server" Width="205px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nhập tên bạn" ControlToValidate="Name" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Địa chỉ Email&nbsp;</td>
        <td class="auto-style3">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="204px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Xác nhận địa chỉ Email</td>
        <td class="auto-style3">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="202px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Số điện thoại cá nhân</td>
        <td class="auto-style3">
            <asp:TextBox ID="PhoneHome" runat="server" Width="201px"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điện thoại cá nhân hay số cơ quan" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Số điện thoại cơ quan</td>
        <td class="auto-style3">
            <asp:TextBox ID="PhoneBusiness" runat="server" Width="199px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Chú thích</td>
        <td class="auto-style3">
            <asp:TextBox ID="Comments" runat="server" Height="90px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>
</div>
        <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
        <p runat="server" id="MessageSentPara" visible="false">
            Cảm ơn thông tin của bạn. Chúng tôi sẽ liên hệ lại nếu cần thiết.
        </p>
        </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="AJAX">
            Xin vui lòng chờ ...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
        