<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Calendar.aspx.vb" Inherits="Blaeneinion.Calendar" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxScheduler.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>
<%@ Register assembly="DevExpress.XtraScheduler.v13.1.Core, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" 
        ActiveViewType="Month" AppointmentDataSourceID="ds_events" 
        ClientIDMode="AutoID" ResourceDataSourceID="ds_resources" Start="2013-09-30" 
        Theme="Office2003Olive">
        <Storage>
            <Appointments AutoRetrieveId="True">
                <Mappings AllDay="all_day" AppointmentId="event_id" Description="description" 
                    End="end_time" Label="label" Location="location" 
                    RecurrenceInfo="recurrence_info" ReminderInfo="reminder_info" 
                    ResourceId="resource_id" Start="start_time" Status="status" Subject="subject" 
                    Type="event_type" />
            </Appointments>
            <Resources>
                <Mappings Caption="resource" ResourceId="id" />
            </Resources>
        </Storage>
<Views>
<DayView><TimeRulers>
<cc1:TimeRuler></cc1:TimeRuler>
</TimeRulers>
</DayView>

<WorkWeekView><TimeRulers>
<cc1:TimeRuler></cc1:TimeRuler>
</TimeRulers>
</WorkWeekView>
</Views>
    </dxwschs:ASPxScheduler>
    <asp:SqlDataSource ID="ds_events" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:blaeneinionConnectionString %>" 
        DeleteCommand="DELETE FROM [events] WHERE [event_id] = @original_event_id AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([label] = @original_label) OR ([label] IS NULL AND @original_label IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([all_day] = @original_all_day) OR ([all_day] IS NULL AND @original_all_day IS NULL)) AND (([event_type] = @original_event_type) OR ([event_type] IS NULL AND @original_event_type IS NULL)) AND (([recurrence_info] = @original_recurrence_info) OR ([recurrence_info] IS NULL AND @original_recurrence_info IS NULL)) AND (([reminder_info] = @original_reminder_info) OR ([reminder_info] IS NULL AND @original_reminder_info IS NULL)) AND (([resource_id] = @original_resource_id) OR ([resource_id] IS NULL AND @original_resource_id IS NULL))" 
        InsertCommand="INSERT INTO [events] ([status], [subject], [description], [label], [start_time], [end_time], [location], [all_day], [event_type], [recurrence_info], [reminder_info], [resource_id]) VALUES (@status, @subject, @description, @label, @start_time, @end_time, @location, @all_day, @event_type, @recurrence_info, @reminder_info, @resource_id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [events]" 
        UpdateCommand="UPDATE [events] SET [status] = @status, [subject] = @subject, [description] = @description, [label] = @label, [start_time] = @start_time, [end_time] = @end_time, [location] = @location, [all_day] = @all_day, [event_type] = @event_type, [recurrence_info] = @recurrence_info, [reminder_info] = @reminder_info, [resource_id] = @resource_id WHERE [event_id] = @original_event_id AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([label] = @original_label) OR ([label] IS NULL AND @original_label IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([all_day] = @original_all_day) OR ([all_day] IS NULL AND @original_all_day IS NULL)) AND (([event_type] = @original_event_type) OR ([event_type] IS NULL AND @original_event_type IS NULL)) AND (([recurrence_info] = @original_recurrence_info) OR ([recurrence_info] IS NULL AND @original_recurrence_info IS NULL)) AND (([reminder_info] = @original_reminder_info) OR ([reminder_info] IS NULL AND @original_reminder_info IS NULL)) AND (([resource_id] = @original_resource_id) OR ([resource_id] IS NULL AND @original_resource_id IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_event_id" Type="Int32" />
            <asp:Parameter Name="original_status" Type="Int32" />
            <asp:Parameter Name="original_subject" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_label" Type="Int32" />
            <asp:Parameter Name="original_start_time" Type="DateTime" />
            <asp:Parameter Name="original_end_time" Type="DateTime" />
            <asp:Parameter Name="original_location" Type="String" />
            <asp:Parameter Name="original_all_day" Type="String" />
            <asp:Parameter Name="original_event_type" Type="Int32" />
            <asp:Parameter Name="original_recurrence_info" Type="String" />
            <asp:Parameter Name="original_reminder_info" Type="String" />
            <asp:Parameter Name="original_resource_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="label" Type="Int32" />
            <asp:Parameter Name="start_time" Type="DateTime" />
            <asp:Parameter Name="end_time" Type="DateTime" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="all_day" Type="String" />
            <asp:Parameter Name="event_type" Type="Int32" />
            <asp:Parameter Name="recurrence_info" Type="String" />
            <asp:Parameter Name="reminder_info" Type="String" />
            <asp:Parameter Name="resource_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="label" Type="Int32" />
            <asp:Parameter Name="start_time" Type="DateTime" />
            <asp:Parameter Name="end_time" Type="DateTime" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="all_day" Type="String" />
            <asp:Parameter Name="event_type" Type="Int32" />
            <asp:Parameter Name="recurrence_info" Type="String" />
            <asp:Parameter Name="reminder_info" Type="String" />
            <asp:Parameter Name="resource_id" Type="Int32" />
            <asp:Parameter Name="original_event_id" Type="Int32" />
            <asp:Parameter Name="original_status" Type="Int32" />
            <asp:Parameter Name="original_subject" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_label" Type="Int32" />
            <asp:Parameter Name="original_start_time" Type="DateTime" />
            <asp:Parameter Name="original_end_time" Type="DateTime" />
            <asp:Parameter Name="original_location" Type="String" />
            <asp:Parameter Name="original_all_day" Type="String" />
            <asp:Parameter Name="original_event_type" Type="Int32" />
            <asp:Parameter Name="original_recurrence_info" Type="String" />
            <asp:Parameter Name="original_reminder_info" Type="String" />
            <asp:Parameter Name="original_resource_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ds_resources" runat="server" 
        ConnectionString="<%$ ConnectionStrings:blaeneinionConnectionString %>" 
        SelectCommand="SELECT * FROM [resources]"></asp:SqlDataSource>
    </form>
    </body>
</html>
