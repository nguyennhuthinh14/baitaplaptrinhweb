<%@ Page Title="Management – Insert and Update Reviews" Language="C#" MasterPageFile="~/Master/Management.Master" AutoEventWireup="true" CodeBehind="AddEditReview.aspx.cs" Inherits="Myfirstwebpage.Management.AddEditReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdated="DetailsView1_ItemUpdated" OnItemUpdating="DetailsView1_ItemUpdating">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Summary" SortExpression="Summary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Summary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Body" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Genreld" SortExpression="Genreld">
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="id" SelectedValue='<%# Bind("Genreld") %>'></asp:DropDownList>
                </InsertItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="id" SelectedValue='<%# Bind("Genreld") %>'></asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Genreld") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaiTapASPConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [id] = @id" InsertCommand="INSERT INTO [Review] ([id], [Title], [Summary], [Body], [Genreld], [Authorized], [UpdateDateTime]) VALUES (@id, @Title, @Summary, @Body, @Genreld, @Authorized, @UpdateDateTime)" SelectCommand="SELECT [id], [Title], [Summary], [Body], [Genreld], [Authorized], [UpdateDateTime] FROM [Review] WHERE ([id] = @id)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Summary] = @Summary, [Body] = @Body, [Genreld] = @Genreld, [Authorized] = @Authorized, [UpdateDateTime] = @UpdateDateTime WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Genreld" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Genreld" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="GenresDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BaiTapASPConnectionString1 %>" SelectCommand="SELECT [Name], [id] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>
