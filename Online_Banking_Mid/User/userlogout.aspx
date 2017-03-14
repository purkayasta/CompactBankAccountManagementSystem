<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="userlogout.aspx.cs" Inherits="Online_Banking_Mid.User.logout" %>
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
        <asp:Button ID="userLogout" runat="server" Text="Logout" OnClick="logout_Click" />
    </div>

</asp:Content>
