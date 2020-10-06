<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#7C6F57" Orientation="Horizontal" StaticDisplayLevels="2" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Invoice_no" DataSourceID="invoice">
                <Columns>
                    <asp:BoundField DataField="Invoice_no" HeaderText="Invoice_no" ReadOnly="True" SortExpression="Invoice_no" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                    <asp:BoundField DataField="Total_amount" HeaderText="Total_amount" SortExpression="Total_amount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="invoice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Invoice]"></asp:SqlDataSource>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Height="17px" OnClick="Button1_Click" Text="Add" />
&nbsp;Total Tax Amount:&nbsp;
        <asp:Label ID="Tax" runat="server"></asp:Label>
    </form>
</body>
</html>
