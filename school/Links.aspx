<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Links.aspx.vb" Inherits="Blaeneinion.Links" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: 'Comic Sans MS'">
    <form id="form1" runat="server">
    <div>
    
        Links...<br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/school/Games.aspx">Games</asp:LinkButton>
    </div>
    </form>
</body>
</html>
