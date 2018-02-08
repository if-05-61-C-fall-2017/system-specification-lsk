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
    </style>
</head>
<body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    <form id="form1" runat="server">
        <h1>Carfinder</h1>
        
       <table style="width: 100%">
             <tr>
                 <td class="auto-style2">
                     <br />
                     Von welcher Marke soll das Auto sein?</td>
             </tr>
             <tr>
                 <td class="auto-style3">
                     <asp:Button ID="PORSCHEButton" runat="server" Text="PORSCHE" OnClick="AnswerButton_Click"/>
                 </td>
                 <td class="auto-style1">
                      <asp:Button ID="BMWButton" runat="server" Text="BMW" OnClick="AnswerButton_Click"/>
                 </td>
             </tr>             
             <tr>
                 <td class="auto-style2">Wie wichtig ist Ihnen dieses Attribut?</td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Button ID="Importance1" runat="server" Text="1" OnClick="Importance_Click"/>
                 </td>
                 <td>
                      <asp:Button ID="Importance10" runat="server" Text="10" OnClick="Importance_Click"/>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Button ID ="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                 </td>
             </tr>
         </table>
        <asp:Button runat="server" OnClick="GetData_Click" Text="Try"/>
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
    </form>
    
    

</body>
</html>
