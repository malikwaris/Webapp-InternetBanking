<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="EMS.Forms.ViewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
        <table border="1" width="80%">
            
            <tr>
                <td style="text-align:center" colspan="2">
                    <b>View User</b>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:GridView ID="gvUsers" runat="server" Width="100%">
                    </asp:GridView>

                </td>
            </tr>
            <tr>
                <td style="text-align:center;">
<asp:Label ID="lblMessage" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
