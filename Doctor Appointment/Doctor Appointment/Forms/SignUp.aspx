<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Doctor_Appointment.Forms.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="1" width=" 80%" >
        <tr><td style="text-align:center;">
            <b style="color:green">Sign up</b>
             </td></tr>
        <tr><td>
           Patient Name:<asp:TextBox ID="txtName" runat="server" style="margin-left: 50px" Width="200px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Patient Name " ForeColor="Red"  ValidationGroup="token">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>
            Father Name:<asp:TextBox ID="txtFName" runat="server" style="margin-left: 50px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFName" ErrorMessage="Please Enter Patient's Father Name" ForeColor="Red" ValidationGroup="token">*</asp:RequiredFieldValidator>
            </td></tr>

        <tr><td>
            Age:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" ErrorMessage="Please Enter Patient's Age" ForeColor="Red" ValidationGroup="token">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAge" runat="server" style="margin-left: 100px" Width="200px"></asp:TextBox>
            </td></tr>
        <tr><td>
            Gender:&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" />
            
            
            </td></tr>

        <tr><td>
            Address:<asp:TextBox ID="txtAddress" runat="server" style="margin-left: 80px" Width="200px" OnTextChanged="txtAddress_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter Patient's Address" ForeColor="Red" ValidationGroup="token">*</asp:RequiredFieldValidator>
            </td></tr>

        <tr>
            <td colspan="2" style="text-align:center;">
            

            <asp:Button ID="btnsignup" runat="server"  Text="Signup " OnClick="btnsignup_Click" />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="token" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
