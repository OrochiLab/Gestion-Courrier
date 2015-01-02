<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="GestionCourrier.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="bo">Accès bureau d&#39;ordre</asp:ListItem>
            <asp:ListItem Selected="False" Value="ua">Accès Unité administrative</asp:ListItem>

        </asp:DropDownList>
    
        </div>
    </form>
</body>
</html>
