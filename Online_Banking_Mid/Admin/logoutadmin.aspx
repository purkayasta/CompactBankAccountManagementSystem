<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="logoutadmin.aspx.cs" Inherits="Online_Banking_Mid.Admin.logoutadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div align="center">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Are you sure ? Logout ? "></asp:Label>
        <br />
        <asp:Button ID="adminLogout" runat="server" Text="Logout" OnClick="logout_Click" />
    </div>
</asp:Content>
