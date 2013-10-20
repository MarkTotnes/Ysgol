Public Class Home1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sql As String = Nothing
        Dim txt As String = Nothing
        sql = "select top 1 marquee_text as fld from marquee with(nolock)"
        'txt = GetField(sql, "blaeneinion")
        myMarquee.InnerText = txt '"School football Team put up a noble defence at inter-schools challenge day......   New website is now up and running (here I am! :).....  Cross Country competition coming up at Vicarage Fields on 11th October.......   "
        'I2.Attributes.Add("onload", "adjustMyFrameHeight()")
        If Not IsPostBack Then
            myMarquee.InnerText = txt '"School football Team put up a noble defence at inter-schools challenge day......   New website is now up and running (here I am! :).....  Cross Country competition coming up at Vicarage Fields on 11th October.......   "
            If Session("year") Is Nothing Then
                Session.Add("year", "2013")
            End If
        End If
    End Sub

    Protected Sub ASPxMenu1_ItemClick(ByVal source As Object, ByVal e As Global.DevExpress.Web.ASPxMenu.MenuItemEventArgs) Handles ASPxMenu1.ItemClick
        Dim page As String = Nothing
        If e.Item.Text = "" Then
            I2.Attributes("src") = "Main.aspx"
            Exit Sub
        End If
        Select Case e.Item.Text
            Case "Calendar"
                page = "Calendar"
                'I2.Attributes("height") = "620"
            Case "login"
                popLogin.Top = 200
                popLogin.Left = 450
                popLogin.ShowOnPageLoad = True
                txtUser.Focus()
                Exit Sub
            Case "List"
                page = "Diary-List"
            Case "2013", "2012", "2011", "2010"
                page = "Photos"
                Session("year") = e.Item.Text
            Case "Prospectus"
                page = "http://www.llangynfelyn.ceredigion.sch.uk/llawlyfr/Llangynfelyn_School_Handbook.pdf"
                I2.Attributes("src") = page
                Exit Sub
            Case "Governors"
                page = "Governors"
            Case "PTA"
                page = "PTA"
            Case "Contact"
                page = "contact"
            Case "Staff"
                page = "Staff"
            Case "Diary"
                Exit Sub
            Case "Photos"
                Exit Sub
            Case "Information"
                page = "Information"
            Case Else
                page = "Main"
        End Select

        I2.Attributes("src") = page & ".aspx"
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        CheckLogin()
    End Sub
    Sub CheckLogin()
        Dim sql As String = Nothing
        sql = "select count(id) as cnt from school_logins where username = '" & txtUser.Text & "' and password = '" & txtPassword.Text & "'"
        Dim id As Integer = 0
        id = GetCount(sql, "blaeneinon")
        If id <> 0 Then
            I2.Attributes("src") = "Manage.aspx"
            popLogin.ShowOnPageLoad = False
            If Session("loggedin") Is Nothing Then
                Session.Add("loggedin", True)
            Else
                Session("loggedin") = True
            End If
        Else
            popFailed.Top = 220
            popFailed.Left = 470
            popFailed.ShowOnPageLoad = True
            If Not Session("loggedin") Is Nothing Then
                Session.Remove("loggedin")
            End If

        End If
    End Sub
End Class