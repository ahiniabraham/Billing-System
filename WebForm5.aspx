<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication2.WebForm5" %>

&nbsp;

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
        <script>
            function printpage() {
                var getpanel = document.getElementById("<%=Panel1.ClientID%>");
                var MainWindow = window.open('', '', 'height=500,width=800');
                MainWindow.document.write('<html><head>Print Page <title> INVOICE </title>');
                MainWindow.document.write('</head><body>');
                MainWindow.document.write(getpanel.innerHTML);
                MainWindow.document.write('</body></html>');
                MainWindow.document.close();
                setTimeout(function () {
                    MainWindow.print();
                }, 500);
                return false;

            }
        </script>
    <style type="text/css">
        .auto-style8 {
            height: 85px;
        }
        .auto-style9 {
            height: 41px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style8">
            
            SNo:
            <asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox>
            
            <asp:Label ID="Label1" runat="server" Text="Search Item"></asp:Label>
                 :&nbsp;&nbsp;
            
                 <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Particulars"  Height="16px" Width="152px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataValueField="Cost_Price" OnDataBound="DropDownList2_DataBound" >
                 </asp:DropDownList>
                   &nbsp;Price:&nbsp;&nbsp;<asp:TextBox ID="price" runat="server" Width="112px"></asp:TextBox>
&nbsp;Quantity&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="quantity" runat="server" TextMode="Number" Width="79px"></asp:TextBox>
&nbsp; <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" ToolTip="Add" style="height: 26px" />
                   &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Particulars], [Cost_Price] AS Cost_Price, [Arabic] FROM [Stock] ORDER BY [Particulars]"></asp:SqlDataSource>
            Invoice no:
            <asp:TextBox ID="invoiceno" runat="server"></asp:TextBox>
&nbsp;&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="date" runat="server" TextMode="DateTime"></asp:TextBox>
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
        <div id="divID">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="SNo">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="product" HeaderText="Product Description">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="arabic" HeaderText="arabic">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="amount" HeaderText="Amount">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <div class="auto-style9">
                Total :&nbsp;&nbsp;&nbsp;
                <asp:Label ID="tb_total" runat="server"></asp:Label>
                <br />
                Tax(15%):&nbsp;&nbsp;
                <asp:Label ID="tb_tax" runat="server"></asp:Label>
                &nbsp;<br /> GRAND TOTAL:&nbsp;
                <asp:Label ID="tb_grandtotal" runat="server"></asp:Label>
                &nbsp;</div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_quantity" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="arabic" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="print" runat="server" Text="Print" Width="50px" OnClientClick="return printpage();" />
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
        </div>
            </asp:Panel>
    </form>
</body>
</html>
