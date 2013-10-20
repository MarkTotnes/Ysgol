<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Blaeneinion.Home1" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageSlider" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style15
        {
            height: 126px;
            width: 133px;
        }
        #myMarquee
        {
            width: 728px;
        }
        .style17
        {
            width: 41px;
            font-family: "Comic Sans MS";
        }
        .style18
        {
            width: 197px;
            height: 129px;
        }
        .style19
        {
            width: 197px;
            color: #FFFFFF;
            font-size: x-large;
            height: 67px;
            font-family: "Comic Sans MS";
        }
        .style20
        {
            width: 197px;
            color: #FFFFFF;
            font-size: x-small;
            height: 26px;
            font-family: "Comic Sans MS";
        }
        .style21
        {
            width: 23px;
            height: 11px;
        }
        .style22
        {
            height: 11px;
        }
        .style24
        {
            width: 17px;
        }
        #myMarquee0
        {
            width: 728px;
        }
        .style25
        {
            font-size: x-large;
        }
        </style>
         
</head>

<body style="width:110%; margin:0 auto auto 15%;">
 <!--img src="images\emblem.png" id="bg" alt=""/-->

    <form id="form1" runat="server">
   
    <div>
    
   
                                  <table style="border-style: none; width: 825px; font-family: 'Comic Sans MS';">
                                      <tr>
                                          <td class="style21">
                                              </td>
                                          <td class="style22" align="center" 
                                              valign="middle">
                                              <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowHeader="False" 
                                                  Width="800px" Height="231px">

                                                  <ContentPaddings Padding="0px" />

<ContentPaddings Padding="0px"></ContentPaddings>

                                                  <Content>
                                                      <BackgroundImage ImageUrl="~/school/images/bg.jpg" />
<BackgroundImage ImageUrl="~/school/images/bg.jpg"></BackgroundImage>
                                                  </Content>
                                                  <PanelCollection>
<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
    <table style="width:100%; height: 246px; background-image: url('images/hillside_stretch.jpg'); background-repeat: no-repeat;">
        <tr>
            <td align="center" class="style18">
                <img alt="" class="style15" 
                src="images/emblem3.png" />
            </td>
            <td align="center" valign="middle" rowspan="3">
                <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ShowHeader="False" 
                    Width="200px">
                    <ContentPaddings Padding="0px" />
                    <PanelCollection>
                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                            <dx:ASPxImageSlider ID="ASPxImageSlider3" runat="server" 
                                BinaryImageCacheFolder="~\Thumb\" Height="195px" 
                                ImageSourceFolder="~\school\sliderpics" ShowNavigationBar="False" 
                                 Width="360px">
                                <SettingsImageArea AnimationType="Fade" ImageSizeMode="FillAndCrop" 
                                    ItemTextVisibility="None" ShowItemText="False" />
                                <SettingsSlideShow AutoPlay="True" Interval="4000" />
                                <BackgroundImage HorizontalPosition="center" />
                                <Border BorderColor="White" BorderStyle="None" BorderWidth="5px" />
                            </dx:ASPxImageSlider>
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxRoundPanel>
            </td>
        </tr>
        <tr>
            <td align="center" class="style19">
                <strong>Ysgol Llangynfelyn</strong></td>
        </tr>
        <tr>
            <td align="center" class="style20">
                LEARNING TODAY FOR TOMORROW</td>
        </tr>
    </table>
                                                      </dx:PanelContent>
</PanelCollection>
                                              </dx:ASPxRoundPanel>
                                          </td>
                                          </tr>
                                      <tr>
                                          <td class="style21">
                                              &nbsp;</td>
                                          <td class="style22" align="center" 
                                              valign="middle">
                                              <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ContentHeight="17px" 
                                                  Height="16px" HorizontalAlign="Left" ShowHeader="False" Width="800px">
                                                  <ContentPaddings Padding="0px" />
                                                  <PanelCollection>
<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
    <table align="left" style="width:100%; height: 9px;">
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
                                          </tr>
                                          <div align="center">
                                          </div>
                                      </table>
    
                                  <table style="width:89%;">
                                      <tr>
                                          <td class="style24">
                                              &nbsp;</td>
                                          <td>
                                              
                                              <dx:ASPxMenu ID="ASPxMenu1" runat="server" EnableTheming="True" 
                                                  HorizontalAlign="Center" RenderMode="Lightweight" Theme="iOS" 
                                                  Font-Size="Medium" Font-Bold="False" Font-Names="Comic Sans MS" 
                                                  Width="796px" ItemAutoWidth="False" ItemSpacing="2px" 
                                                  style="text-align: center">
                                                  <Paddings Padding="0px" />
                                                  <Items>
                                                      <dx:MenuItem Text="">
                                                          <Image Url="~/school/images/home.JPG">
                                                          </Image>
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Staff">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Diary">
                                                          <Items>
                                                              <dx:MenuItem Text="Calendar">
                                                              </dx:MenuItem>
                                                              <dx:MenuItem Text="List">
                                                              </dx:MenuItem>
                                                          </Items>
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Photos">
                                                          <Items>
                                                              <dx:MenuItem Text="2013">
                                                              </dx:MenuItem>
                                                              <dx:MenuItem Text="2012">
                                                              </dx:MenuItem>
                                                              <dx:MenuItem Text="2011">
                                                              </dx:MenuItem>
                                                              <dx:MenuItem Text="2010">
                                                              </dx:MenuItem>
                                                          </Items>
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Prospectus">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Governors">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="PTA">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Contact">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="Information">
                                                      </dx:MenuItem>
                                                      <dx:MenuItem Text="login">
                                                          <ItemStyle Font-Size="Small" />
                                                      </dx:MenuItem>
                                                  </Items>
                                              </dx:ASPxMenu>
                                              
                                          </td>
                                      </tr>
                                      </table>
    
                                  <table style="border-style: none; width: 825px; font-family: 'Comic Sans MS';">
                                      <tr>
                                          <td class="style21">
                                              &nbsp;</td>
                                          <td class="style22" align="left" 
                                              valign="top">
                                              <dx:ASPxRoundPanel ID="iPanel" runat="server" ShowHeader="False" 
                                                  Width="800px">
                                                  <ContentPaddings Padding="0px" />
<ContentPaddings Padding="0px"></ContentPaddings>
                                                  <PanelCollection>
<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
    <iframe ID="I2" frameborder="0" name="I2" src="Main.aspx" runat="server"
      
        style="width: 780px; height: 591px;"></iframe>
                                                      </dx:PanelContent>
</PanelCollection>
                                              </dx:ASPxRoundPanel>
                                          </td>
                                          </tr>
                                      <tr>
                                          <td class="style21">
                                              &nbsp;</td>
                                          <td class="style22" align="left" 
                                              valign="top">
                                              &nbsp;</td>
                                          </tr>

                                      </table>
    
                                  <br />
    
    </div>
    <dx:ASPxPopupControl ID="popLogin" runat="server" AllowDragging="True" 
        CloseAction="CloseButton" Modal="True" RenderMode="Lightweight" Theme="iOS" 
        Width="314px" HeaderText="login...">
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <table style="width:100%;">
        <tr>
            <td>
                Username:</td>
            <td>
                <dx:ASPxTextBox ID="txtUser" runat="server" Width="170px">
                </dx:ASPxTextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td>
                <dx:ASPxTextBox ID="txtPassword" runat="server" Password="True" Width="170px">
                </dx:ASPxTextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="login" Width="126px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    <br />
    <dx:ASPxPopupControl ID="popFailed" runat="server" AllowDragging="True" 
        CloseAction="CloseButton" HeaderText="Error" RenderMode="Lightweight" 
        style="text-align: center" Theme="iOS">
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <span class="style25">Login Failed</span></dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>
