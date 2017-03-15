<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Online_Banking_Mid.User.Homepage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    <style type="text/css">
        .auto-style3 {
            margin-top: 52px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Body -->
    <br />
    <div align="center">
        <br />
        
        <asp:DetailsView ID="DetailsView1" runat="server" Height="165px" Width="482px" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True" CssClass="auto-style3">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="acc_no" HeaderText="Account Number" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="Account Name" SortExpression="acc_name" />
                <asp:BoundField DataField="acc_pass" HeaderText="Account Password" SortExpression="acc_pass" />
                <asp:BoundField DataField="acc_image" HeaderText="Image" SortExpression="acc_image" />
                <asp:BoundField DataField="acc_opening_date" HeaderText="Account Opening Date" SortExpression="acc_opening_date" />
                <asp:BoundField DataField="acc_balance" HeaderText="Total Balance" SortExpression="acc_balance" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" SelectCommand="SELECT * FROM [users] WHERE ([acc_no] = @acc_no)">
            <SelectParameters>
                <asp:SessionParameter Name="acc_no" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
