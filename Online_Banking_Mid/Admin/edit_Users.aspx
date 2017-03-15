<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="edit_Users.aspx.cs" Inherits="Online_Banking_Mid.Admin.edit_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        margin-top: 38px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="272px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="acc_no" HeaderText="Account Number" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="Account Name" SortExpression="acc_name" />
                <asp:BoundField DataField="acc_pass" HeaderText="Account Password" SortExpression="acc_pass" />
                <asp:BoundField DataField="acc_balance" HeaderText="Account Balance" SortExpression="acc_balance" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @original_id" InsertCommand="INSERT INTO [users] ([acc_no], [acc_name], [acc_pass], [acc_image], [acc_opening_date], [acc_balance]) VALUES (@acc_no, @acc_name, @acc_pass, @acc_image, @acc_opening_date, @acc_balance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [users] ORDER BY [id]" UpdateCommand="UPDATE [users] SET [acc_no] = @acc_no, [acc_name] = @acc_name, [acc_pass] = @acc_pass, [acc_image] = @acc_image, [acc_opening_date] = @acc_opening_date, [acc_balance] = @acc_balance WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="acc_no" Type="String" />
                <asp:Parameter Name="acc_name" Type="String" />
                <asp:Parameter Name="acc_pass" Type="String" />
                <asp:Parameter Name="acc_image" Type="String" />
                <asp:Parameter Name="acc_opening_date" Type="DateTime" />
                <asp:Parameter Name="acc_balance" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="acc_no" Type="String" />
                <asp:Parameter Name="acc_name" Type="String" />
                <asp:Parameter Name="acc_pass" Type="String" />
                <asp:Parameter Name="acc_image" Type="String" />
                <asp:Parameter Name="acc_opening_date" Type="DateTime" />
                <asp:Parameter Name="acc_balance" Type="Double" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
