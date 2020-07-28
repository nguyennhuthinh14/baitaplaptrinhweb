<%@ Page Title="Management – Genre" Language="C#" MasterPageFile="~/Master/Management.Master" AutoEventWireup="true" CodeBehind="Genres.aspx.cs" Inherits="Myfirstwebpage.Management.Genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaiTapASPConnectionString1 %>" DeleteCommand="DELETE FROM [Genre] WHERE [id] = @id" InsertCommand="INSERT INTO [Genre] ([id], [Name], [SortOrder]) VALUES (@id, @Name, @SortOrder)" ProviderName="<%$ ConnectionStrings:BaiTapASPConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [Name], [SortOrder] FROM [Genre]" UpdateCommand="UPDATE [Genre] SET [Name] = @Name, [SortOrder] = @SortOrder WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="SortOrder" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="SortOrder" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
