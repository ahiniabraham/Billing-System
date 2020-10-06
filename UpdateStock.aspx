<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStock.aspx.cs" Inherits="WebApplication2.UpdateStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <br />
                <asp:Menu ID="Menu1" runat="server" BackColor="White" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#666666" Height="30px" Orientation="Horizontal" StaticDisplayLevels="2" StaticSubMenuIndent="10px" Width="500px">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
            <div class="auto-style2">

                <span class="auto-style3">UPDATE STOCK<br />
                <br />
                Search Item </span>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Particulars" DataValueField="Quantity" Height="16px" Width="137px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnDataBound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Particulars], [Quantity] FROM [Stock] ORDER BY [Particulars]"></asp:SqlDataSource>
                <p class="auto-style4">
                    Quantity:
                <asp:TextBox ID="quantity" runat="server" TextMode="Number" Width="103px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Updated Cost Price: <asp:TextBox ID="costprice" runat="server" Width="66px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />

                </p>

            </div>
            <div class="auto-style2">

                <br />
                <br />
                ADD NEW ITEM<br />
                <br />
                Item Name:
                <asp:TextBox ID="item" runat="server" Width="141px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="translate" runat="server" Height="21px" OnClick="translate_Click" Text="Convert" />
&nbsp;&nbsp; Translation:&nbsp;
                <asp:Label ID="arabic" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp; Quantity:
                <asp:TextBox ID="addquantity" runat="server" TextMode="Number" Width="55px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Cost Price:&nbsp;
                <asp:TextBox ID="price" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />

            </div>
        </div>
    </form>
    
</body>
</html>
