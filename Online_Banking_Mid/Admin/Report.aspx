<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Online_Banking_Mid.Admin.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div align="center">
        <table>
            <tr>
                <td>From Date</td>
                <td> <asp:TextBox ID="fromdateBox" runat="server"></asp:TextBox> </td>
                <td> <asp:Button ID="pick_fromDate" runat="server" Text="Pick A date" OnClick="pick_fromDate_Click" /> </td>
            </tr>
            <tr>
                <td> <asp:Calendar ID="fromCalender" runat="server" Visible="false"  OnSelectionChanged="fromCalender_SelectionChanged"></asp:Calendar> <td>
            </tr>
            <tr>
                <td>To Date</td>
                <td> <asp:TextBox ID="toDateBox" runat="server" TextMode="Date"></asp:TextBox> </td>
                <td> <asp:Button ID="pick_toDate" runat="server" Text="Pick A date" OnClick="pick_toDate_Click" /> </td>
            </tr>
            <tr>
                <td><asp:Calendar ID="toCalender" DatePickerMode="true" runat="server" Visible="false" OnSelectionChanged="toCalender_SelectionChanged"></asp:Calendar><td>
       
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> <asp:Button ID="getReport" runat="server" Text="Get Report" OnClick="getReport_Click" /> </td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Width="442px">
        </asp:GridView>
       
    </div>
        
    </asp:Content>
