<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login form.aspx.cs" Inherits="test_project.Login_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="usernam: "></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="sign in" />
        </p>
        <asp:BulletedList ID="BulletedList1" runat="server">
        </asp:BulletedList>
        <asp:Label ID="Label2" runat="server" Text="error msg"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
