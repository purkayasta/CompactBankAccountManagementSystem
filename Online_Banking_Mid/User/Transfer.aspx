<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="Transfer.aspx.cs" Inherits="Online_Banking_Mid.User.Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    <style type="text/css">
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 410px;
            height: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- body -->
    <div align="center">
        <br />
        <br />
        <br />
        <table align="center" class="auto-style4">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="To Account"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="to_acc_box" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label> </td>
                <td> <asp:TextBox ID="amount_box" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"> <asp:Button ID="transfer_Button" runat="server" Text="Transfer" OnClick="transfer_Button_Click" /> </td>
            </tr>
        </table>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a vaild account Number" ControlToValidate="to_acc_box" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a valid amount" ControlToValidate="amount_box"></asp:RequiredFieldValidator>
    </div>
</asp:Content>
