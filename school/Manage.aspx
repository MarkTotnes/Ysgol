<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Manage.aspx.vb" Inherits="Blaeneinion.Manage" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageSlider" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #myMarquee
        {
            width: 460px;
        }
        .style1
        {
            width: 30px;
            height: 27px;
        }
        .style2
        {
            width: 27px;
            height: 26px;
        }
        .style3
        {
            width: 37px;
            height: 30px;
        }
        .style4
        {
            width: 188px;
        }
        </style>
</head>
<body style="width: 762px">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 760px;">
            <tr>
                <td class="style4">
                    <asp:Button ID="btnMarquee" runat="server" Text="Edit Marquee Text" 
                        Width="166px" />
                </td>
                <td>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ShowHeader="False" 
        Width="83px">
                                                          <ContentPaddings Padding="0px" />
                                                          <PanelCollection>
<dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
    <table align="left" style="width:300px; height: 9px;">
        <tr>
            <td align="left" class="style17" valign="top">
                Latest:</td>
            <td align="left" valign="top">
<marquee ID="myMarquee" runat="server" style="font-family: Comic Sans MS"></marquee>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                                                      </dx:PanelContent>
</PanelCollection>
    </dx:ASPxRoundPanel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button2" runat="server" Text="Manage PTA Page" Width="166px" />
                </td>
                <td>
                <img alt="" class="style1" src="images/man_icon.jpg" /><img alt="" class="style2" src="images/woman_icon.jpg" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button4" runat="server" Text="Manage Governors Page" 
                        Width="166px" />
                </td>
                <td>
                <img alt="" class="style1" src="images/man_icon.jpg" /><img alt="" class="style2" src="images/woman_icon.jpg" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button5" runat="server" Text="Manage Staff Page" 
                        Width="166px" />
                </td>
                <td>
                <img alt="" class="style1" src="images/man_icon.jpg" /><img alt="" class="style2" src="images/woman_icon.jpg" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button3" runat="server" Text="Manage Diary" Width="166px" />
                </td>
                <td>
                    <img alt="" class="style3" src="images/calendar_icon.jpg" /></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <dx:ASPxPopupControl ID="popMarquee" runat="server" AllowDragging="True" 
        CloseAction="CloseButton" HeaderText="Marquee Text" Height="76px" Modal="True" 
        PopupElementID="btnMarquee" RenderMode="Lightweight" Theme="iOS">
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">Enter 
    Text:<br />
    <dx:ASPxMemo ID="txtMarquee" runat="server" Height="71px" Width="239px">
    </dx:ASPxMemo>
    <br />
    <asp:Button ID="Button6" runat="server" CausesValidation="False" Text="Update" 
        UseSubmitBehavior="False" Width="237px" />
    <br />
            </dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popMarqueeUpdated" runat="server" AllowDragging="True" 
        CloseAction="CloseButton" HeaderText=" Updated!" Height="76px" Modal="True" 
        RenderMode="Lightweight" Theme="iOS">
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    Marquee Text updated - refresh your browser to see change...</dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>
