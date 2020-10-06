<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="translation.aspx.cs" Inherits="WebApplication2.translation" %>

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
        .auto-style1 {
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="print" runat="server" OnClientClick="return printpage();" Text="print" />
        </div>
            </asp:Panel>
    </form>
</body>
</html>
