Public Class Games
    Inherits System.Web.UI.Page
    Dim url As String = Nothing

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'GameList()
    End Sub

    Sub PlayGame(ByVal w As Integer, ByVal h As Integer)
        player.ObjectUrl = url
        player.Width = w
        player.Height = h
        player.Visible = True
    End Sub

    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton1.Click
        url = "http://englishflashgames.appspot.com/static/clothes.swf"
        PlayGame(600, 390)
    End Sub

    Protected Sub ASPxButton2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton2.Click
        url = "http://englishflashgames.appspot.com/static/numbers.swf"
        PlayGame(600, 390)
    End Sub

    Protected Sub ASPxButton3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton3.Click
        url = "http://static.novelgames.com/flashgames/game_e.39.swf?l=e&shortName=countsheep"
        PlayGame(600, 390)
    End Sub

    Protected Sub ASPxButton4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton4.Click
        url = "http://www.novelgames.com/en/spgames/musicmemory/game.swf"
        PlayGame(600, 390)
    End Sub

    Protected Sub ASPxButton5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton5.Click
        url = "http://www.novelgames.com/en/spgames/whack/game.swf"
        PlayGame(600, 390)
    End Sub

    Protected Sub ASPxButton6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ASPxButton6.Click
        url = "http://www.novelgames.com/en/spgames/mathlines/game.swf"
        PlayGame(600, 390)
    End Sub
End Class