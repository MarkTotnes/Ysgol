<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Games.aspx.vb" Inherits="Blaeneinion.Games" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxObjectContainer" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            width: 769px;
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>

                              <div class="entry-content" align="center">
                                  <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ShowHeader="False" 
                                      Width="768px" Height="165px">
                                      <ContentPaddings Padding="0px" />
                                      <PanelCollection>
<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
    <table align="center" cellpadding="0" cellspacing="0" style="width: 612px;">
        <tr>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton1" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" 
                    style="font-family: 'Comic Sans MS'; font-size: large" 
                    Text="Put on your clothes!" UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/clothes.jpg" Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton2" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" Text="Numbers" 
                    UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/numbers.jpg" Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton3" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" 
                    Text="Counting Sheep" UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/CountSheep.JPG" Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
        </tr>
        <tr>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton4" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" Text="Music Memory" 
                    UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/MusicMemory.JPG" Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton5" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" 
                    Text="Whack a difference!" UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/Whackadifference.JPG" 
                        Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
            <td width="204">
                <dx:ASPxButton ID="ASPxButton6" runat="server" CausesValidation="False" 
                    Font-Names="Comic Sans MS" Font-Size="Small" Height="30px" Text="Maths Balls" 
                    UseSubmitBehavior="False" Width="170px">
                    <Image Height="50px" Url="~/school/images/games/MathBalls.JPG" Width="50px">
                    </Image>
                    <HoverStyle Font-Bold="True" Font-Size="Medium">
                    </HoverStyle>
                </dx:ASPxButton>
            </td>
        </tr>
        <tr>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
            <td width="204">
                &nbsp;</td>
        </tr>
    </table>
                                          </dx:PanelContent>
</PanelCollection>
                                  </dx:ASPxRoundPanel>
                                  <dx:ASPxObjectContainer ID="player" runat="server" Height="400px" 
                                      ObjectUrl="http://www.novelgames.com/en/spgames/puzzlehex/game.swf" 
                                      Width="600px" style="text-align: left" Visible="False" ObjectType="Flash">
                                  </dx:ASPxObjectContainer>
      </div>
					</div>

    </form>
</body>
</html>
