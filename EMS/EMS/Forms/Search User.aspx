<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search User.aspx.cs" Inherits="EMS.Forms.Search_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br/>
        <table border ="1" width=" 80%">  
    <tr> 
        <td style ="text-align:center" colspan =" 2">
   <b>Search User</b>
        </td>
                   
        </tr>  
            <tr>
                <td>
                    Name =
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr> 
                           <tr><td>
                    
                               <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                    
                               <asp:GridView ID="Gvsearch" runat="server">
                               </asp:GridView>
                    
                    </td></tr>
            <tr><td>
                <asp:Label ID="lbltxt" runat="server"></asp:Label>
                </td></tr>
         </div>
    </form>
</body>
</html>
