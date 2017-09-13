<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="FutureValue.OrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            height: 215px;
            width: 330px;
        }
    </style>
</head>
<body>
    <form name="orders" id="form1" runat="server">
    <div>
        <img alt="Murach" class="style1" src="Images/murachlogo.jpg" /><br/>

        <h1>401K Future Value Calculator</h1>
        <table class="style2">
            <tr>
                <td class ="style3">Monthly investment</td>
                <td>
                    <asp:DropDownList ID="ddMonthlyInvestment" runat="server" Width="106px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class ="style3">Annual Interest Rate</td>
                <td>
                    <asp:TextBox ID="txtInterestRate" runat="server" Width="100px">3.0</asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class ="style3">Number of years</td>
                <td>
                    <asp:TextBox ID="txtYears" runat="server" Width="100px">10</asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class ="style3">Future Value</td>
                <td>
                    <asp:Label ID="lblFutureValue" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                    
                </td>
            </tr>
             <tr>
                <td class ="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td class ="style3">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100px" OnClick="btnCalculate_Click"/>
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="100px" CausesValidation="false" OnClick="btnClear_Click" />

                </td>
            </tr>


        </table>
    </div>
    </form>
</body>
</html>
