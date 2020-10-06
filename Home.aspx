<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.WebForm2" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script>
            function printpage() {
                var getpanel = document.getElementById("<%=Panel1.ClientID%>");
                var MainWindow = window.open('', '', 'height=500,width=800');
                MainWindow.document.write('<html><head><strong>SHARK AL BADER FIRST TRADING EST.</strong><br>C.R : 2058100068<br>Prop: Mubarak Mohammed Al-Azmi<br>Mobile: 0507817805<br>Safaniya - Eastern Region<br>Kingdom of Saudi Arabia<title></title>');
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
        .auto-style3 {
            font-style: normal;
        }
        .auto-style5 {
            font-style: normal;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
        }
        .auto-style4 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .auto-style6 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
        }
        .auto-style7 {
            height: 125px;
            background-color: #E0D3F8;
            text-align: center;
        }
        .auto-style8 {
            height: 377px;
            width: 660px;
            margin-left: 110px;
            font-size: medium;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            height: 88px;
            width: 655px;
            margin-top: 11px;
            background-color: #C0C0C0;
        }
        .auto-style11 {
            height: 502px;
        }
        .auto-style14 {
            text-decoration: underline;
        }
        .auto-style15 {
            margin-left: 111px;
        }
        .auto-style16 {
            margin-left: 535px;
        }
        .auto-style17 {
            color: #000000;
            font-size: medium;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            background-color: #C0C0C0;
        }
        .auto-style21 {
            margin-left: 3px;
            height: 108px;
        }
        .auto-style22 {
            color: #000000;
            font-size: large;
        }
        .auto-style23 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 747px">
    <form id="form1" runat="server">
    <div class="auto-style7">
        <span class="auto-style5">

                <strong>SHARK AL BADER FIRST TRADING EST.</strong></span>.<span class="auto-style3"><strong><br class="auto-style6" />
                </strong><span class="auto-style4">C.R : 2058100068</span><br class="auto-style4" />
                <span class="auto-style4">Prop: Mubarak Mohammed Al-Azmi</span><br class="auto-style4" />
                <span class="auto-style4">Mobile: 0507817805</span><br class="auto-style4" />
                <span class="auto-style4">Safaniya - Eastern Region</span><br class="auto-style4" />
                <span class="auto-style4">Kingdom of Saudi Arabia</span></span></div>
    <div class="auto-style11">
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style17" Font-Size="Large" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
        <span class="auto-style18">&nbsp;&nbsp;&nbsp; </span>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style17" Font-Size="Large" NavigateUrl="~/invoice.aspx">Generated Invoices</asp:HyperLink>
        <span class="auto-style17">&nbsp;&nbsp;&nbsp; </span>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style17" Font-Size="Large" NavigateUrl="~/UpdateStock.aspx">Update Stock</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style22" NavigateUrl="~/ViewStock.aspx">View Stock</asp:HyperLink>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style23" ForeColor="Black" NavigateUrl="~/Return.aspx">Return Item</asp:HyperLink>
        <br />
        <br />
        SNo:
        <asp:TextBox ID="TextBox1" runat="server" Width="34px"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Search Item"></asp:Label>
        :&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Particulars" DataValueField="Cost_Price" Height="16px" Width="152px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnDataBound="DropDownList1_DataBound">
        </asp:DropDownList>
&nbsp;Price:
        <asp:TextBox ID="price" runat="server" Width="90px"></asp:TextBox>
        &nbsp; Quantity:
        <asp:TextBox ID="quantity" runat="server" TextMode="Number" Width="66px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Particulars], [Cost_Price] AS Cost_Price FROM [Stock] ORDER BY [Particulars]"></asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server" Height="380px">
        <div class="auto-style8">
           
            
            <div class="auto-style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14"><strong>INVOICE</strong></span><br />
                Invoice No:&nbsp; &nbsp;
                <asp:TextBox ID="invoiceno" runat="server" BackColor="Silver" Width="102px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Date &amp; Time: <asp:TextBox ID="tb_date" runat="server" BackColor="Silver" TextMode="DateTime" OnTextChanged="tb_date_TextChanged"></asp:TextBox>
                <br />
                <br />
                Customer Name:
                <input id="Text1" type="text" class="auto-style19" />
                <br />
            </div>
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="657px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="SNo">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="product" HeaderText="Product ">
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="arabic">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="amount" HeaderText="Amount">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle HorizontalAlign="Right" />
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
            <div class="auto-style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount :
                <asp:Label ID="lb_total" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Total Tax&nbsp;: &nbsp;
                <asp:Label ID="lb_tax" runat="server"></asp:Label>
                <br />
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grand Total :</strong>&nbsp;<asp:Label ID="lb_total1" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                Signature of Receiver:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature of Salesman:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<br />
            </div>
            <br />
            <br />
           
        </div>
            </asp:Panel>
        <br />
        <asp:TextBox ID="arabic" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="tb_quantity" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="print" runat="server" CssClass="auto-style16" OnClientClick="return printpage();" Text="Print" Visible="False" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submit" runat="server" CssClass="auto-style15" OnClick="submit_Click" Text="Submit" Visible="False" />
        </div>
    </form>
</body>
</html>
