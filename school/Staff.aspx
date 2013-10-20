<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Staff.aspx.vb" Inherits="Blaeneinion.Staff" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="grdStaff" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="ds_staff" Font-Names="Comic Sans MS" 
        ForeColor="#333333" GridLines="None" ShowHeader="False" Width="705px" 
        EmptyDataText="{no data}">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" 
                        ContentBytes='<%# IIf(Typeof(Eval("image_blob")) is DBNull, Nothing, Eval("image_blob")) %>' Height="50px" Width="50px">
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
    <asp:SqlDataSource ID="ds_staff" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ysgolConnectionString %>" 
        SelectCommand="SELECT school_staff.staff_name, school_staff.title, school_staff.blurb, school_images.image_blob 
FROM school_staff 
INNER JOIN  school_images  ON school_images.uniq = school_staff.image_id" 
        ProviderName="<%$ ConnectionStrings:ysgolConnectionString.ProviderName %>">
    </asp:SqlDataSource>
    </form>
</body>
</html>
