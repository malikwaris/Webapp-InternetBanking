<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EMS.Forms.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
        <table border ="1">
            <tr>
                <td style="text-align:center" colspan="2">
                    <b>Register</b>
                </td>
            </tr>
            <tr>
                <td>
Name:</td>
                    <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>CNIC</td>
                <td>
                    <asp:TextBox ID="txtCNIC" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" ValidationGroup="vgRegister" />

                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Label ID ="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            
        </table>
    </div>
    </form>
</body>
</html>
