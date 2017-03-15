<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="Add_User.aspx.cs" Inherits="Online_Banking_Mid.Admin.Add_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            height: 44px;
        }
        .auto-style3 {
            height: 44px;
            width: 293px;
        }
        .auto-style4 {
            width: 293px;
        }
        .auto-style5 {
            margin-left: 146px;
        }
    .auto-style6 {
        margin-left: 0px;
    }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table cellpadding="15">
            <tr>
                <td class="auto-style2"> Account Number</td>
                <td class="auto-style3"> <asp:TextBox ID="acc_number_box" runat="server" Width="204px" CssClass="auto-style6"></asp:TextBox> 
                    
                </td>
            </tr>
             <tr>
                <td> Account Name</td>
                <td class="auto-style4"> <asp:TextBox ID="acc_name_box" runat="server" Width="205px" CssClass="auto-style1"></asp:TextBox> 
                    
                 </td>
            </tr>
             <tr>
                <td> Account Password</td>
                <td class="auto-style4"> <asp:TextBox ID="acc_pass_box" runat="server" CssClass="auto-style1" Width="205px"></asp:TextBox> 
                    
                 </td>
            </tr>
             <tr>
                <td> User Picture</td>
                <td class="auto-style4"> 
                    <asp:FileUpload ID="user_pic_upload" runat="server" CssClass="auto-style1" Width="183px" />
                 </td>
            </tr>
            <tr>
                <td></td>
                <td> <asp:Button ID="add_account_box" runat="server" Text="Add" CssClass="auto-style5" OnClick="add_account_box_Click" /> </td>
            </tr>
        </table>
        <asp:RequiredFieldValidator ID="acc_number_requiredValidator" runat="server" ErrorMessage="Account Number Please!!!" ControlToValidate="acc_number_box"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter A Valid Account Number ! ***-*** " ControlToValidate="acc_number_box" ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator><br />
        <asp:RequiredFieldValidator ID="acc_name_requiredValidator" runat="server" ErrorMessage="Name Please !!!" ControlToValidate="acc_name_box"></asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Please !!" ControlToValidate="acc_pass_box"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Minimum 6 to 15 Character !" ControlToValidate="acc_pass_box" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$"></asp:RegularExpressionValidator>
    </div>
</asp:Content>
