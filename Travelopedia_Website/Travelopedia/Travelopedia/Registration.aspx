<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Travelopedia.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            text-align: center;
            width: 187px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 397px;
        }
        .auto-style5 {
            width: 397px;
        }
        .auto-style6 {
            text-align: right;
            width: 397px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
            width: 187px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
        }
        .auto-style11 {
            text-align: center;
            width: 187px;
        }
        #Reset1 {
            width: 56px;
        }
        .auto-style12 {
            width: 397px;
            height: 23px;
        }
        .auto-style13 {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style13">
            Registration<br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">First Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="firstname" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="lastname" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastname" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">E-mail:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="email" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="E-mail Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="emailvalid1" runat="server" ControlToValidate="email" ErrorMessage="Not a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Confirm Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="conpass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="conpass" ErrorMessage="Retype Password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conpass" ErrorMessage="Both passwords must be same"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Country:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="country" runat="server" Width="185px">
                        <asp:ListItem Value="Select Country"></asp:ListItem>
                        <asp:ListItem Value="Bangladesh"></asp:ListItem>
                        <asp:ListItem Value="India"></asp:ListItem>
                        <asp:ListItem Value="Nepal"></asp:ListItem>
                        <asp:ListItem Value="Bhutan"></asp:ListItem>
                        <asp:ListItem Value="Maldives"></asp:ListItem>
                        <asp:ListItem Value="Pakistan"></asp:ListItem>
                        <asp:ListItem Value="Afghanistan"></asp:ListItem>
                        <asp:ListItem Value="Malaysia"></asp:ListItem>
                        <asp:ListItem Value="Indonesia"></asp:ListItem>
                        <asp:ListItem Value="Thailand"></asp:ListItem>
                        <asp:ListItem Value="Sri Lanka"></asp:ListItem>
                        <asp:ListItem Value="France"></asp:ListItem>
                        <asp:ListItem Value="Germany"></asp:ListItem>
                        <asp:ListItem Value="Hungary"></asp:ListItem>
                        <asp:ListItem Value="Italy"></asp:ListItem>
                        <asp:ListItem Value="England"></asp:ListItem>
                        <asp:ListItem Value="Scotland"></asp:ListItem>
                        <asp:ListItem Value="USA"></asp:ListItem>
                        <asp:ListItem Value="Australia"></asp:ListItem>
                        <asp:ListItem Value="Russia"></asp:ListItem>
                        <asp:ListItem Value="China"></asp:ListItem>
                        <asp:ListItem Value="South Korea"></asp:ListItem>
                        <asp:ListItem Value="Vietnam"></asp:ListItem>
                        <asp:ListItem Value="Laos"></asp:ListItem>
                        <asp:ListItem Value="Japan"></asp:ListItem>
                        <asp:ListItem Value="Mexico"></asp:ListItem>
                        <asp:ListItem Value="Philipines"></asp:ListItem>
                        <asp:ListItem Value="Canada"></asp:ListItem>
                        <asp:ListItem Value="Greenland"></asp:ListItem>
                        <asp:ListItem Value="Iceland"></asp:ListItem>
                        <asp:ListItem Value="Spain"></asp:ListItem>
                        <asp:ListItem Value="Mongolia"></asp:ListItem>
                        <asp:ListItem Value="Uzbekistaan"></asp:ListItem>
                        <asp:ListItem Value="Russia"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="country" ErrorMessage="Choose a country" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="text-align: right">Gender:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="gender" runat="server" style="margin-left: 0px" Width="185px">
                        <asp:ListItem Value="Select Gender"></asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="gender" ErrorMessage="Please Specify Your Gender" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="text-align: right">Date of Birth:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="DOB" runat="server" Width="180px">dd/mm/yyyy</asp:TextBox>
                </td>
                <td class="auto-style8" style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DOB" ErrorMessage="Please enter your date of birth"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submitreg" runat="server" OnClick="submitreg_Click" style="text-align: center" Text="Submit" />
        <input id="Reset1" type="reset" value="Reset" /></div>
    </form>
</body>
</html>
