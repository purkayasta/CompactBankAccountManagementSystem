<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="adminProfile.aspx.cs" Inherits="Online_Banking_Mid.Admin.adminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="150px" Width="400px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" CellSpacing="2" DataKeyNames="id" ForeColor="Black">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
                <asp:BoundField DataField="user_pass" HeaderText="Password" SortExpression="user_pass" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" UpdateCommand="UPDATE [admins_table] SET [user_name] = @user_name, [user_pass] = @user_pass, [user_image] = @user_image WHERE [id] = @id" SelectCommand="SELECT * FROM [admins_table]" DeleteCommand="DELETE FROM [admins_table] WHERE [id] = @id" InsertCommand="INSERT INTO [admins_table] ([user_name], [user_pass], [user_image]) VALUES (@user_name, @user_pass, @user_image)">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_pass" Type="String" />
                <asp:Parameter Name="user_image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_pass" Type="String" />
                <asp:Parameter Name="user_image" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>
