<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2: Future Value</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
    </style>
</head>
<body>
    <img src="Images/Murach-Logo.jpg" alt="Murach Logo"/>
    <h1>401K Future Value Calculator</h1>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Monthly investment</td>
                    <td>
                        <asp:DropDownList ID="ddlMonthlyInvestment" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Annual interest rate</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server">3.0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of years</td>
                    <td>
                        <asp:TextBox ID="txtYears" runat="server">10</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Future value</td>
                    <td>
                        <asp:Label ID="lblFutureValue" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click1" Text="Calculate" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click1" Text="Clear" />
                    </td>
                </tr>
            </table>

        </div>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInterestRate" ErrorMessage="Interest rate is required."></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtInterestRate" ErrorMessage="Interest rate must range from 1 to 20." MaximumValue="20" MinimumValue="1" Type="Double"></asp:RangeValidator>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYears" ErrorMessage="Number of years is required."></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtYears" ErrorMessage="Years must range from 1 to 45." MaximumValue="45" MinimumValue="1" Type="Double"></asp:RangeValidator>
        </p>
    </form>
</body>
</html>
