<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManageStaff.aspx.vb" Inherits="Blaeneinion.ManageStaff" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Comic Sans MS'">
    
        Manage Staff<br />
        <asp:Button ID="btnAdd" runat="server" Height="20px" 
            Text="Add New Staff Entry" />
        <asp:SqlDataSource ID="ds_staff" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ysgolConnectionString %>" 
            
            SelectCommand="SELECT school_staff.id,school_images.image_blob, school_staff.staff_name, school_staff.title, school_staff.blurb 
,case school_staff.sex 
when 'M' then '~/school/images/man_icon.jpg'
when 'F' then '~/school/images/woman_icon.jpg' 
else '~/school/images/generic_sex_icon.jpg' end 
as empty_pic_url

FROM school_staff 
 LEFT OUTER JOIN  school_images ON school_images.uniq = school_staff.image_id" 
            ProviderName="<%$ ConnectionStrings:ysgolConnectionString.ProviderName %>">
        </asp:SqlDataSource>
        <asp:GridView ID="grdStaff" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ds_staff" EmptyDataText="{no records}" 
            ForeColor="#333333" GridLines="None" ShowHeader="False" Width="703px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ConvertEmptyStringToNull="False">
                    <ItemTemplate>
                        <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" Height="50px" 
                            Width="50px" 
                            ContentBytes='<%# IIf(Typeof(Eval("image_blob")) is DBNull, Nothing, Eval("image_blob")) %>'>
                            <EmptyImage Url='~/school/images/generic_sex_icon.jpg'>
                            </EmptyImage>
                        </dx:ASPxBinaryImage>
                    </ItemTemplate>
                    <ItemStyle Width="51px" />
                </asp:TemplateField>
                <asp:BoundField DataField="staff_name" HeaderText="staff_name" 
                    SortExpression="staff_name">
                <ItemStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="blurb" HeaderText="blurb" SortExpression="blurb" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" 
                            CommandName="delete_row" Height="20px" 
                            ImageUrl="~/school/images/delete_icon.jpg" Width="20px" />
                    </ItemTemplate>
                    <ItemStyle Height="20px" Width="20px" />
                </asp:TemplateField>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="id" 
                    SortExpression="id" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="id" 
                            Mode="Edit" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataRowStyle BackColor="#FF9900" Font-Bold="True" 
                HorizontalAlign="Center" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <dx1:ASPxPopupControl ID="popAdd" runat="server" AllowDragging="True" 
            CloseAction="CloseButton" HeaderText="Add Entry..." Modal="True" 
            PopupElementID="btnAdd" RenderMode="Lightweight">
            <ContentCollection>
<dx1:PopupControlContentControl runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                Fullname:</td>
            <td colspan="2">
                <asp:TextBox ID="txtName" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Tiitle:</td>
            <td colspan="2">
                <asp:TextBox ID="txtTitle" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &#39;Blurb&#39;</td>
            <td colspan="2">
                <dx:ASPxMemo ID="txtBlurb" runat="server" Height="71px" Width="275px">
                </dx:ASPxMemo>
            </td>
        </tr>
        <tr>
            <td>
                Image:</td>
            <td colspan="2">
                <asp:FileUpload ID="imgUpload" runat="server" Width="216px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                    Text="Cancel" UseSubmitBehavior="False" />
            </td>
            <td align="right">
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="98px" 
                    CausesValidation="False" UseSubmitBehavior="False" />
            </td>
        </tr>
    </table>
                </dx1:PopupControlContentControl>
</ContentCollection>
        </dx1:ASPxPopupControl>
    
        <dx1:ASPxPopupControl ID="popDelete" runat="server" AllowDragging="True" 
            CloseAction="CloseButton" HeaderText="Confirm ..." Modal="True" 
            RenderMode="Lightweight">
            <ContentCollection>
<dx1:popupcontrolcontentcontrol runat="server" SupportsDisabledAttribute="True">
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="text-align: center">
                Are you sure you want to delete this entry ?</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnYes" runat="server" Text="Yes" />
            </td>
            <td>
                <asp:Button ID="btnNo" runat="server" Text="No" />
            </td>
        </tr>
    </table>
                </dx1:popupcontrolcontentcontrol>
</ContentCollection>
        </dx1:ASPxPopupControl>
        <br />
    
    </div>
    </form>
</body>
</html>
