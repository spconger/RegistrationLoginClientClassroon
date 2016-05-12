<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register</h1>
        <hr />
    <table>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ControlToValidate="LastNameTextBox" 
                    ErrorMessage="Last Name is required">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" 
                    ErrorMessage="Email is required" ControlToValidate="EmailTextBox">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ErrorMessage="Not a valid email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" 
                    TextMode="Password">
                </asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ErrorMessage="Psssword is Required" 
                    ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password">
                </asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" 
                    runat="server" ErrorMessage="passwords don't match"
                     ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmTextBox">
                </asp:CompareValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
