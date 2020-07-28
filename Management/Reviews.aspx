<%@ Page Title="Management Reviews" Language="C#" MasterPageFile="~/Master/Management.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Myfirstwebpage.Management.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="231px" Width="615px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
             <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
                 <ItemTemplate>
                     <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>' />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
             <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
         </Columns>
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <a href="AddEditReview.aspx"><span class="auto-style1">Insert new review</span></a><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BaiTapASPConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [id] = @id" InsertCommand="INSERT INTO [Review] ([id], [Title], [Authorized], [CreateDateTime]) VALUES (@id, @Title, @Authorized, @CreateDateTime)" SelectCommand="SELECT [id], [Title], [Authorized], [CreateDateTime] FROM [Review] WHERE ([Genreld] = @Genreld)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Authorized] = @Authorized, [CreateDateTime] = @CreateDateTime WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Genreld" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaiTapASPConnectionString1 %>" SelectCommand="SELECT [Name], [id] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
