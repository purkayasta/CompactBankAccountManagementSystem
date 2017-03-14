<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="changePass.aspx.cs" Inherits="Online_Banking_Mid.User.changePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 444px;
            height: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div align="center">
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Change Password"></asp:Label> </td>
                <td> <asp:TextBox ID="change_box" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label> </td>
                <td> <asp:TextBox ID="change_box2" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td></td>
                <td> <asp:Button ID="changePass_button" runat="server" Text="Change" OnClick="changePass_button_Click" /> </td>
            </tr>
        </table>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a pass!" ControlToValidate="change_box"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a pass!" ControlToValidate="change_box2"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Pass don't match!" ControlToCompare="change_box2" ControlToValidate="change_box"></asp:CompareValidator>
    </div>
</asp:Content>
