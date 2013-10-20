Public Class Photos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        gallery.SettingsFolder.ImageSourceFolder = "~\school\" & Session("year")
        lblYear.Text = Session("year")
    End Sub

End Class