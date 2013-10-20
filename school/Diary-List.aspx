<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Diary-List.aspx.vb" Inherits="Blaeneinion.Diary_List" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 762px">
    <form id="form1" runat="server">
    <div style="width: 759px; height: 195px">
    
        <dx:ASPxGridView ID="grdDiary" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ds_events" EnableTheming="True" KeyFieldName="id" Theme="DevEx" 
            Width="751px" Font-Names="Comic Sans MS">
            <Columns>
                <dx:GridViewDataDateColumn FieldName="dated" VisibleIndex="1" Width="55px" 
                    Caption="date">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="start_time" VisibleIndex="2" Width="55px" 
                    Caption="start time">
                    <Settings AllowHeaderFilter="False" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="end_time" VisibleIndex="3" Width="55px" 
                    Caption="end time">
                    <Settings AllowHeaderFilter="False" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="event" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="description" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="location" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" Visible="False" 
                    VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
            </Columns>
            <Settings ShowHeaderFilterButton="True" />
            <SettingsText EmptyDataRow="No events to display!" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="ds_events" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:blaeneinionConnectionString %>" 
            DeleteCommand="DELETE FROM [school_diary] WHERE [id] = @original_id AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([event] = @original_event) OR ([event] IS NULL AND @original_event IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL))" 
            InsertCommand="INSERT INTO [school_diary] ([dated], [start_time], [end_time], [event], [description], [location]) VALUES (@dated, @start_time, @end_time, @event, @description, @location)" 
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id],[dated], [start_time], [end_time], [event], [description], [location] 
FROM [school_diary]
where dated &gt;= getdate()
order by dated" 
            UpdateCommand="UPDATE [school_diary] SET [dated] = @dated, [start_time] = @start_time, [end_time] = @end_time, [event] = @event, [description] = @description, [location] = @location WHERE [id] = @original_id AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([event] = @original_event) OR ([event] IS NULL AND @original_event IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_dated" Type="DateTime" />
                <asp:Parameter Name="original_start_time" Type="DateTime" />
                <asp:Parameter Name="original_end_time" Type="DateTime" />
                <asp:Parameter Name="original_event" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="dated" Type="DateTime" />
                <asp:Parameter Name="start_time" Type="DateTime" />
                <asp:Parameter Name="end_time" Type="DateTime" />
                <asp:Parameter Name="event" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="location" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dated" Type="DateTime" />
                <asp:Parameter Name="start_time" Type="DateTime" />
                <asp:Parameter Name="end_time" Type="DateTime" />
                <asp:Parameter Name="event" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_dated" Type="DateTime" />
                <asp:Parameter Name="original_start_time" Type="DateTime" />
                <asp:Parameter Name="original_end_time" Type="DateTime" />
                <asp:Parameter Name="original_event" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
