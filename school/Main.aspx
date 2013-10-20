<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Main.aspx.vb" Inherits="Blaeneinion.Main" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            font-family: "Comic Sans MS";
            color: rgb(51, 51, 51);
            font-size: 16px;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            letter-spacing: normal;
            line-height: 24px;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            word-spacing: 0px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p class="style1" 
            style="orphans: auto; widows: auto; -webkit-text-stroke-width: 0px;">
            Welcome to the Llangynfelyn Community Primary School website.</p>
        <p class="style1" 
            style="orphans: auto; widows: auto; -webkit-text-stroke-width: 0px;">
            This is a brand-new website and is still under contruction. Please browse our 
            pages for a taste of the various experiences we provide the pupils of our 
            school.</p>
        <p class="style1" 
            style="orphans: auto; widows: auto; -webkit-text-stroke-width: 0px;">
            Hefin Jones<span class="Apple-converted-space">&nbsp;</span><br />
            Headteacher</p>
        <p class="style1" 
            style="orphans: auto; widows: auto; -webkit-text-stroke-width: 0px;">
            To read our aims and objectives<span class="Apple-converted-space">&nbsp;<dx:ASPxHyperLink 
                ID="ASPxHyperLink1" runat="server" 
                NavigateUrl="http://www.llangynfelyn.ceredigion.sch.uk/nod_ac_amcanion_yr_ysgol.pdf" 
                style="font-family: 'Comic Sans MS'; font-weight: 700; font-size: large" 
                Text="click here" />
            </span></p>
    
    </div>
    </form>
</body>
</html>
