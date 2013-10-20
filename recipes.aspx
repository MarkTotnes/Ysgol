<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="recipes.aspx.vb" Inherits="Blaeneinion.recipes" %>

<%@ Register Assembly="BarcodeLib.Barcode" Namespace="BarcodeLib.Barcode.QRCode"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Blaeneinion</title>
  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-42772063-2', 'blaeneinion.com');
  ga('send', 'pageview');

</script>  

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span style="font-family: 'Calligraphic 421'">Recipes..... coming soon !<br />
            <br />
            &nbsp;<br />
            <cc1:QRCodeWebForm ID="QRCodeWebForm1" runat="server" Data="http://blaeneinion.com/Recipes/Rocket_Pesto.aspx" /></span></div>
    </form>
</body>
</html>
