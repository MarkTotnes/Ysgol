<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Photos.aspx.vb" Inherits="Blaeneinion.Photos" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageGallery" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
    <div>
    
        <asp:Label ID="lblYear" runat="server" 
            style="font-family: 'Comic Sans MS'; font-size: x-large" Text="Label"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <dx:ASPxImageGallery ID="gallery" runat="server" EnableTheming="True" 
                        PagerAlign="Center" Theme="Metropolis" Width="700px">
                        <SettingsFolder ImageCacheFolder="~\Thumb\" />
<SettingsFolder ImageCacheFolder="~\Thumb\" imagesourcefolder="~\school\2013"></SettingsFolder>
                        <SettingsTableLayout ColumnCount="3" RowsPerPage="2" />
                        <PagerSettings Position="Top">
                            <PageSizeItemSettings Visible="False">
                            </PageSizeItemSettings>
                        </PagerSettings>
                        <Paddings Padding="1px" />
                    </dx:ASPxImageGallery>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
