Public Class Calendar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ASPxScheduler1.Start = New System.DateTime(2010, 7, 12, 0, 0, 0, 0)
    End Sub


End Class