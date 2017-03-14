<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="Transfer.aspx.cs" Inherits="Online_Banking_Mid.User.Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- body -->
    <div>
        <br />
        <br />
        <br />
        <table align="center">
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
                <td></td>
                <td> <asp:Button ID="transfer_Button" runat="server" Text="Transfer" OnClick="transfer_Button_Click" /> </td>
            </tr>
        </table>
    </div>
</asp:Content>
