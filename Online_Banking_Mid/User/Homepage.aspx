<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Online_Banking_Mid.User.Homepage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Body -->
    <br />
    <div align="center">
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="165px" Width="380px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="acc_no" HeaderText="acc_no" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="acc_name" SortExpression="acc_name" />
                <asp:BoundField DataField="acc_pass" HeaderText="acc_pass" SortExpression="acc_pass" />
                <asp:BoundField DataField="acc_image" HeaderText="acc_image" SortExpression="acc_image" />
                <asp:BoundField DataField="acc_opening_date" HeaderText="acc_opening_date" SortExpression="acc_opening_date" />
                <asp:BoundField DataField="acc_balance" HeaderText="acc_balance" SortExpression="acc_balance" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" SelectCommand="SELECT * FROM [users] WHERE ([acc_no] = @acc_no)">
            <SelectParameters>
                <asp:SessionParameter Name="acc_no" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
