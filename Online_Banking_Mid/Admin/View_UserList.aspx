<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="View_UserList.aspx.cs" Inherits="Online_Banking_Mid.Admin.edit_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="View All Users"></asp:Label><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="4px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Serial ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="acc_no" HeaderText="Account Number" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="Account Name" SortExpression="acc_name" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" SelectCommand="SELECT [acc_no], [acc_name], [id] FROM [users]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="120px" Width="200px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="Serial Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="acc_no" HeaderText="Account NO" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_name" HeaderText="Name" SortExpression="acc_name" />
                <asp:BoundField DataField="acc_pass" HeaderText="Password" SortExpression="acc_pass" />
                <asp:BoundField DataField="acc_opening_date" HeaderText="Opening Date" SortExpression="acc_opening_date" />
                <asp:BoundField DataField="acc_balance" HeaderText="Balance" SortExpression="acc_balance" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBC %>" SelectCommand="SELECT [acc_no], [id], [acc_name], [acc_pass], [acc_opening_date], [acc_balance] FROM [users] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
