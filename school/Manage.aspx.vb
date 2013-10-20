Public Class Manage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("loggedin") Is Nothing Then
            Response.Redirect("NotLoggedIn.aspx")
        End If
        Dim sql As String = Nothing
        Dim txt As String = Nothing
        sql = "select top 1 marquee_text from marquee with(nolock)"
        txt = GetField(sql, "blaeneinion")
        myMarquee.InnerText = txt
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button6.Click
        Dim sql As String = Nothing
        sql = "update marquee set marquee_text = '" & txtMarquee.Text & "'"
        executeSQL(sql)
        popMarquee.ShowOnPageLoad = False
        popMarqueeUpdated.Top = 50
        popMarqueeUpdated.Left = 150
        popMarqueeUpdated.ShowOnPageLoad = True
        'School football Team put up a noble defence at inter-schools challenge day......   New website is now up and running (here I am! :).....  Cross Country competition coming up at Vicarage Fields on Friday 11th October.......   
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("ManagePTA.aspx")
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        Response.Redirect("ManageStaff.aspx")
    End Sub
End Class