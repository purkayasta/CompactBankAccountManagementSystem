<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="Add_User.aspx.cs" Inherits="Online_Banking_Mid.Admin.Add_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        
        .auto-style4 {
            width: 293px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 493px;
            height: 232px;
        }
        .auto-style8 {
            float: left;
            border: 1px solid black;
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table cellpadding="10" class="auto-style7">
            <tr>
                <td> Account Number</td>
                <td> <asp:TextBox ID="acc_number_box" runat="server" Width="249px" CssClass="auto-style8"></asp:TextBox> 
                    
                </td>
            </tr>
             <tr>
                <td> Account Name</td>
                <td > <asp:TextBox ID="acc_name_box" runat="server" Width="254px" CssClass="auto-style8"></asp:TextBox> 
                    
                 </td>
            </tr>
             <tr>
                <td> Account Password</td>
                <td class="auto-style4"> <asp:TextBox ID="acc_pass_box" runat="server" CssClass="auto-style8" Width="259px"></asp:TextBox> 
                    
                 </td>
            </tr>
             <tr>
                <td> User Picture</td>
                <td class="auto-style4"> 
                    <asp:FileUpload ID="user_pic_upload" runat="server" CssClass="auto-style8" Width="270px" Height="25px" />
                 </td>
            </tr>
            <tr>
                <td></td>
                <td> <asp:Button ID="add_account_box" runat="server" Text="Add" CssClass="auto-style5" OnClick="add_account_box_Click" /> </td>
            </tr>
        </table>
        <asp:RequiredFieldValidator ID="acc_number_requiredValidator" runat="server" ErrorMessage="Account Number Please!!!" ControlToValidate="acc_number_box"></asp:RequiredFieldValidator><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter A Valid Account Number ! ***-*** " ControlToValidate="acc_number_box" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator><br />
        <asp:RequiredFieldValidator ID="acc_name_requiredValidator" runat="server" ErrorMessage="Name Please !!!" ControlToValidate="acc_name_box"></asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Please !!" ControlToValidate="acc_pass_box"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Minimum 6 to 15 Character !" ControlToValidate="acc_pass_box" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$"></asp:RegularExpressionValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="user_pic_upload"></asp:RequiredFieldValidator>
    </div>
</asp:Content>
