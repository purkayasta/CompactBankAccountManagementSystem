<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="Transfer.aspx.cs" Inherits="Online_Banking_Mid.Admin.Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div align="center">
        <table>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="FROM ACCOUNT" Font-Bold="True"></asp:Label> </td>
                <td> <asp:TextBox ID="from_acc_box" runat="server" Width="183px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label3" runat="server" Text="TO ACCOUNT" Font-Bold="True"></asp:Label> </td>
                 <td> <asp:TextBox ID="to_acc_box" runat="server" Width="183px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label4" runat="server" Text="AMOUNT" Font-Bold="True"></asp:Label> </td>
                <td> <asp:TextBox ID="amount_box" runat="server" Width="183px"></asp:TextBox> 
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td> <asp:Button ID="save_button" runat="server" Text="Save" BorderColor="#009933" BorderStyle="Dashed" Font-Italic="True" OnClick="save_button_Click" CssClass="auto-style2" Width="100px" /> </td>
            </tr>
        </table>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter A Vaild Account Number like: ***.***.***" ControlToValidate="from_acc_box" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#FF6600" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator><br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a valid amount!" ControlToValidate="amount_box"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter A Vaild Account Number like: ***.***.***" ControlToValidate="to_acc_box" Font-Bold="True" Font-Italic="True" Font-Size="20px" ForeColor="#FF6600" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        <br />
        <br />
    </div>
</asp:Content>
