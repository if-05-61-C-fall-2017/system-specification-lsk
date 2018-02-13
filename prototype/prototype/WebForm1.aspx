<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prototype.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prototype</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            width: 565px;
        }
        .auto-style3 {
            height: 30px;
            width: 565px;
        
        }
        .auto-style4 {
            width: 565px;
            height: 23px;
        }
    </style>
</head>
<body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    <form id="form1" runat="server">
        <h1>Carfinder</h1>
        
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Von welcher Marke soll das Auto sein?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="PORSCHEButton" runat="server" OnClick="AnswerButton_Click" Text="PORSCHE" />
                        </td>
                        <td class="auto-style1">
                            <asp:Button ID="BMWButton" runat="server" OnClick="AnswerButton_Click" Text="BMW" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Importancy1" runat="server" OnClick="Importancy_Click" Text="1" />
                        </td>
                        <td>
                            <asp:Button ID="Importancy10" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
                            <asp:Button runat="server" OnClick="GetData_Click" Text="Try" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div id="Div" runat="server" visible="false">
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>Modell</asp:TableCell>
                            <asp:TableCell><asp:Label ID="ModellLabel" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>PS</asp:TableCell>
                            <asp:TableCell><asp:Label ID="PSLabel" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>Preis</asp:TableCell>
                            <asp:TableCell><asp:Label ID="PreisLabel" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:View>
        </asp:MultiView>
    </form>
    
    

</body>
</html>
