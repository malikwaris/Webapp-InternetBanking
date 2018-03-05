<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Doctor_Appointment.Forms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="1" width="80%">
        <tr><td style="text-align:center" colspan="2">
            <b>LogIn</b>
             </td></tr>
        <tr><td>
            Name:<asp:TextBox ID="txtName" runat="server" style="margin-left: 32px" Width="197px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Name " ForeColor="Red"  ValidationGroup="token">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>
            Token No:<asp:TextBox ID="txtPass" runat="server" style="margin-left: 9px" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Please Enter Token Number" ForeColor="Red" ValidationGroup="token">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td colspan="2" style="text-align:center;">
            <asp:Button ID="btnEnter" Text="Enter" runat="server" OnClick="btnRegister_Click" ValidationGroup="token" />
            <asp:Button ID="btnsignup" runat="server" Text="Signup " OnClick="btnsignup_Click" />
            </td></tr>
    </table>
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="token" />
    </form>
</body>
</html>
