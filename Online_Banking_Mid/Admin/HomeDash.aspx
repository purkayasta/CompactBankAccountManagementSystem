<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="HomeDash.aspx.cs" Inherits="Online_Banking_Mid.Admin.HomeDash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div align="center">
        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Search By Account Name"></asp:Label>
        <br /><br />
        <asp:TextBox ID="search_box" runat="server" CssClass="auto-style2" Height="25px"></asp:TextBox>&nbsp;&nbsp;
        <asp:ImageButton ID="searchButton" OnClick="searchButton_Click" AlternateText="Search"  runat="server" Height="21px" ImageUrl="~/Pictures/search.png" Width="29px" />&nbsp;&nbsp;
        <asp:Button ID="clear_search" runat="server" Text="Clear Search" OnClick="clear_search_Click" /><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="163px" Width="532px" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="acc_no" HeaderText="Account Number" />
                <asp:BoundField DataField="acc_name" HeaderText="Account Name" />
                <asp:BoundField DataField="acc_pass" HeaderText="Account Password" />
                <asp:BoundField DataField="acc_opening_date" HeaderText="Account Opening Date" />
                <asp:BoundField DataField="acc_balance" HeaderText="Account Balance" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    </div>
</asp:Content>
