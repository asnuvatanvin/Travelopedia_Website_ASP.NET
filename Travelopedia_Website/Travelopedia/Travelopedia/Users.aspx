<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Travelopedia.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Lable_welcome" runat="server" Text="Welcome"></asp:Label>
    
    </div>
        <p>
            <asp:Button ID="Buttonlogout" runat="server" OnClick="Buttonlogout_Click" Text="Log Out" />
        </p>
    </form>
</body>
</html>
