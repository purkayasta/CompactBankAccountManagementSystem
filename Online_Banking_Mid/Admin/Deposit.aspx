<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="Online_Banking_Mid.Admin.Deposit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            margin-left: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" float="right">
        <br />
        <br />
        <table cellspacing="5">
                <tr>
                    <td class="auto-style2"> <asp:Label ID="Label2" runat="server" Text="ACCOUNT NO." Font-Bold="True"></asp:Label> </td>
                    <td class="auto-style2"> <asp:TextBox ID="acc_no_box" runat="server" Width="178px"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td> <asp:Label ID="Label3" runat="server" Text="AMOUNT" Font-Bold="True"></asp:Label> </td>
                    <td> <asp:TextBox ID="amount_no_box" runat="server" Width="178px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td> <asp:Button ID="save_button" runat="server" Text="Save" BorderStyle="Inset" Font-Italic="True" OnClick="save_button_Click" BorderColor="#993366" CssClass="auto-style3" Width="82px" /> </td>
                </tr>
            </table>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a amount Please!!" ControlToValidate="amount_no_box"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter A Vaild Account Number like: ***.***.***" ControlToValidate="acc_no_box" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#FF6600" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator><br />
            <br />
            <br />
            <br />
        </div>
</asp:Content>
