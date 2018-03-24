<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update Forms.aspx.cs" Inherits="EMS.Forms.Update_Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 469px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<table border ="1" style="width: 474px">
        <tr><td style ="text-align:center" colspan ="2" class="auto-style1">
            <b>Update Forms</b>
            </td>
        </tr>
    <tr><td class="auto-style1">Name<asp:TextBox ID="TxtName" runat="server" Width="157px"></asp:TextBox>
        </td></tr>
        <tr><td class="auto-style1">CNIC<asp:TextBox ID="TxtCNIC" runat="server" Width="159px"></asp:TextBox>
            </td></tr>
    <tr><td>
        <asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
        <asp:Label ID="lblmessage" runat="server" ></asp:Label>
        </td></tr>
    </div>
    </form>
</body>
</html>
