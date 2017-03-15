<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="View_UserList.aspx.cs" Inherits="Online_Banking_Mid.Admin.edit_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="View All Users"></asp:Label><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="acc_no" HeaderText="Account Number" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="Account Name" SortExpression="acc_name" />
                <asp:BoundField DataField="acc_pass" HeaderText="Account Password" SortExpression="acc_pass" />
                <asp:BoundField DataField="acc_opening_date" HeaderText="Account Opening Date" SortExpression="acc_opening_date" />
                <asp:BoundField DataField="acc_balance" HeaderText="Balance" SortExpression="acc_balance" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" SelectCommand="SELECT [acc_no], [acc_name], [acc_pass], [acc_opening_date], [acc_balance] FROM [users]"></asp:SqlDataSource>
    </div>
</asp:Content>
