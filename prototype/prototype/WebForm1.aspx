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
        .auto-style5 {
            width: 100%;
        }
    </style>
</head>
<body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    <form id="form1" runat="server">
        <h1>Carfinder</h1>
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="StartView" runat="server">
                <asp:Button ID="Start" runat="server" OnClick="Start_Click" Text="Finde dein nächstes Auto!" />
            </asp:View>
            <asp:View ID="QuestionView_1" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            In welchem Preisbereich sollte das Auto sein? (€)</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button75" runat="server" OnClick="AnswerButton_Click" Text="0 - 10000" />
                            <asp:Button ID="Button76" runat="server" OnClick="AnswerButton_Click" Text="10000-50000" />
                            <asp:Button ID="Button77" runat="server" OnClick="AnswerButton_Click" Text="50000-100000" />
                            <asp:Button ID="Button78" runat="server" OnClick="AnswerButton_Click" Text="100000-200000" />
                            <asp:Button ID="Button79" runat="server" OnClick="AnswerButton_Click" Text="200000&lt;" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist dir dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy1" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy11" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy12" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy13" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy14" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy15" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy16" runat="server" OnClick="Importancy_Click" Text="7" />
                            <asp:Button ID="Importancy17" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy18" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy19" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_2" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Welchen Autotyp bevorzugst du?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" OnClick="AnswerButton_Click" Text="SUV" />
                            <asp:Button ID="Button11" runat="server" OnClick="AnswerButton_Click" Text="Limousine" />
                            <asp:Button ID="Button12" runat="server" OnClick="AnswerButton_Click" Text="Coupé" />
                            <asp:Button ID="Button13" runat="server" OnClick="AnswerButton_Click" Text="Kombi" />
                            <asp:Button ID="Button14" runat="server" OnClick="AnswerButton_Click" Text="Cabrio" />
                            <asp:Button ID="Button15" runat="server" OnClick="AnswerButton_Click" Text="Pick Up" />
                            <asp:Button ID="Button16" runat="server" OnClick="AnswerButton_Click" Text="Minivan" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy20" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy21" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy22" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy23" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy24" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy25" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy26" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy27" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy28" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy29" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next0" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_3" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Gibt es Automarken die du favorisierst?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button6" runat="server" OnClick="AnswerButton_Click" Text="Audi" />
                            <asp:Button ID="Button24" runat="server" OnClick="AnswerButton_Click" Text="Aston" />
                            <asp:Button ID="Button17" runat="server" OnClick="AnswerButton_Click" Text="BMW" />
                            <asp:Button ID="Button18" runat="server" OnClick="AnswerButton_Click" Text="Ferrari" />
                            <asp:Button ID="Button19" runat="server" OnClick="AnswerButton_Click" Text="Fiat" />
                            <asp:Button ID="Button25" runat="server" OnClick="AnswerButton_Click" Text="Jaguar" />
                            <asp:Button ID="Button20" runat="server" OnClick="AnswerButton_Click" Text="Lamborghini" />
                            <asp:Button ID="Button21" runat="server" OnClick="AnswerButton_Click" Text="Mercedes-Benz" />
                            <asp:Button ID="Button26" runat="server" OnClick="AnswerButton_Click" Text="Nissan" />
                            <asp:Button ID="Button22" runat="server" OnClick="AnswerButton_Click" Text="Opel" />
                            <asp:Button ID="Button44" runat="server" OnClick="AnswerButton_Click" Text="Porsche" />
                            <asp:Button ID="Button51" runat="server" OnClick="AnswerButton_Click" Text="Tesla" />
                            <asp:Button ID="Button23" runat="server" OnClick="AnswerButton_Click" Text="VW" />
                        </td>
                        <td class="auto-style1">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy30" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy31" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy32" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy33" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy34" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy35" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy36" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy37" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy38" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy39" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next1" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_4" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Gibt es Automarken die du überhaupt nicht magst?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button27" runat="server" OnClick="AnswerButton_Click" Text="Audi" />
                            <asp:Button ID="Button28" runat="server" OnClick="AnswerButton_Click" Text="Aston" />
                            <asp:Button ID="Button29" runat="server" OnClick="AnswerButton_Click" Text="BMW" />
                            <asp:Button ID="Button30" runat="server" OnClick="AnswerButton_Click" Text="Ferrari" />
                            <asp:Button ID="Button31" runat="server" OnClick="AnswerButton_Click" Text="Fiat" />
                            <asp:Button ID="Button32" runat="server" OnClick="AnswerButton_Click" Text="Jaguar" />
                            <asp:Button ID="Button33" runat="server" OnClick="AnswerButton_Click" Text="Lamborghini" />
                            <asp:Button ID="Button34" runat="server" OnClick="AnswerButton_Click" Text="Mercedes-Benz" />
                            <asp:Button ID="Button35" runat="server" OnClick="AnswerButton_Click" Text="Nissan" />
                            <asp:Button ID="Button36" runat="server" OnClick="AnswerButton_Click" Text="Opel" />
                            <asp:Button ID="Button43" runat="server" OnClick="AnswerButton_Click" Text="Porsche" />
                            <asp:Button ID="Button50" runat="server" OnClick="AnswerButton_Click" Text="Tesla" />
                            <asp:Button ID="Button37" runat="server" OnClick="AnswerButton_Click" Text="VW" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy40" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy41" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy42" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy43" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy44" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy45" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy46" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy47" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy48" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy49" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next2" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_5" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Wie groß sollte das Auto sein?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button38" runat="server" OnClick="AnswerButton_Click" Text="Klein" />
                            <asp:Button ID="Button39" runat="server" OnClick="AnswerButton_Click" Text="Kompakt" />
                            <asp:Button ID="Button40" runat="server" OnClick="AnswerButton_Click" Text="Mittel" />
                            <asp:Button ID="Button41" runat="server" OnClick="AnswerButton_Click" Text="Groß" />
                            <asp:Button ID="Button42" runat="server" OnClick="AnswerButton_Click" Text="RIESSIG" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy50" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy51" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy52" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy53" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy54" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy55" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy56" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy57" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy58" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy59" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next3" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_6" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Soll es ein Elektrofahrzeug sein?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button52" runat="server" OnClick="AnswerButton_Click" Text="Ja" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy60" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy61" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy62" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy63" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy64" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy65" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy66" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy67" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy68" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy69" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next4" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_7" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">Wie viele Leute werden Regelmäßig mitfahren?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button53" runat="server" OnClick="AnswerButton_Click" Text="1" />
                            <asp:Button ID="Button54" runat="server" OnClick="AnswerButton_Click" Text="2" />
                            <asp:Button ID="Button55" runat="server" OnClick="AnswerButton_Click" Text="3" />
                            <asp:Button ID="Button56" runat="server" OnClick="AnswerButton_Click" Text="4" />
                            <asp:Button ID="Button57" runat="server" OnClick="AnswerButton_Click" Text="5" />
                            <asp:Button ID="Button58" runat="server" OnClick="AnswerButton_Click" Text="6" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy70" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy71" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy72" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy73" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy74" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy75" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy76" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy77" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy78" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy79" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next5" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_8" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">Welcher Treibstoff soll getankt werden?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button59" runat="server" OnClick="AnswerButton_Click" Text="Benzin" />
                            <asp:Button ID="Button60" runat="server" OnClick="AnswerButton_Click" Text="Diesel" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy80" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy81" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy82" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy83" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy84" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy85" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy86" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy87" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy88" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy89" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next6" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_9" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">Wie viel soll das Auto verbrauchen? (l/100km)</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button61" runat="server" OnClick="AnswerButton_Click" Text="0-4" />
                            <asp:Button ID="Button62" runat="server" OnClick="AnswerButton_Click" Text="4-6" />
                            <asp:Button ID="Button63" runat="server" OnClick="AnswerButton_Click" Text="6-10" />
                            <asp:Button ID="Button64" runat="server" OnClick="AnswerButton_Click" Text="10-15" />
                            <asp:Button ID="Button65" runat="server" OnClick="AnswerButton_Click" Text="15&lt;" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy90" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy91" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy92" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy93" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy94" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy95" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy96" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy97" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy98" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy99" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next7" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_10" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            <br />
                            Wird das Auto auf der Rennstrecke benutzt?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button66" runat="server" OnClick="AnswerButton_Click" Text="Ja" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy100" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy101" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy102" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy103" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy104" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy105" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy106" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy107" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy108" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy109" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next8" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_11" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">Soll das Auto auf Komfort oder Sportlichkeit ausgelegt sein?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button67" runat="server" OnClick="AnswerButton_Click" Text="Komfort" />
                            <asp:Button ID="Button68" runat="server" OnClick="AnswerButton_Click" Text="Sportlichkeit" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy110" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy111" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy112" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy113" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy114" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy115" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy116" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy117" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy118" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy119" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next9" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="QuestionView_12" runat="server">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">Wie schnell soll das Auto auf 100 km/h beschleunigen? (s)</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button69" runat="server" OnClick="AnswerButton_Click" Text="&lt;3" />
                            <asp:Button ID="Button70" runat="server" OnClick="AnswerButton_Click" Text="3-3.5" />
                            <asp:Button ID="Button71" runat="server" OnClick="AnswerButton_Click" Text="3.5-4.5" />
                            <asp:Button ID="Button72" runat="server" OnClick="AnswerButton_Click" Text="4.5-6" />
                            <asp:Button ID="Button73" runat="server" OnClick="AnswerButton_Click" Text="6-8" />
                            <asp:Button ID="Button74" runat="server" OnClick="AnswerButton_Click" Text="8&lt;" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Wie wichtig ist Ihnen dieses Attribut?</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Importancy120" runat="server" OnClick="Importancy_Click" Text="1" />
                            <asp:Button ID="Importancy121" runat="server" OnClick="Importancy_Click" Text="2" />
                            <asp:Button ID="Importancy122" runat="server" OnClick="Importancy_Click" Text="3" />
                            <asp:Button ID="Importancy123" runat="server" OnClick="Importancy_Click" Text="4" />
                            <asp:Button ID="Importancy124" runat="server" OnClick="Importancy_Click" Text="5" />
                            <asp:Button ID="Importancy125" runat="server" OnClick="Importancy_Click" Text="6" />
                            <asp:Button ID="Importancy126" runat="server" OnClick="Importancy_Click" Text="7" Width="21px" />
                            <asp:Button ID="Importancy127" runat="server" OnClick="Importancy_Click" Text="8" />
                            <asp:Button ID="Importancy128" runat="server" OnClick="Importancy_Click" Text="9" />
                            <asp:Button ID="Importancy129" runat="server" OnClick="Importancy_Click" Text="10" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="next10" runat="server" OnClick="next_Click" Text="Nächste Frage!" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="FinishView" runat="server">
                <asp:Button runat="server" OnClick="GetData_Click" Text="Gefundene Autos anzeigen!" />
            </asp:View>
            <asp:View ID="ResultView" runat="server">
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
