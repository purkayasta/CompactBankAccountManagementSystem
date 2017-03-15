<%@ Page Title="" Language="C#" MasterPageFile="~/User/Homepage.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Online_Banking_Mid.User.Homepage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Body -->
    <br />
    <div align="center">
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="220px" Width="376px" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl=' <% #Eval("acc_image") %> ' Height="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Account Number">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=' <% #Eval("acc_no") %> '></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Account Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=' <% #Eval("acc_name") %> ' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Account Password">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=' <% #Eval("acc_pass") %> ' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Account Balance">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=' <% #Eval("acc_balance") %> '></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>

    </div>
</asp:Content>
