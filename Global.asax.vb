Imports System.Web.SessionState

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application is started
        ' Fires when the application is started
        EO.Pdf.Runtime.AddLicense( _
            "z/If9KvcwvwDzX660+Aa5JKq1OoT7Xqiu/kg8Iq0wc3a8qLe8vIf9Kvcwp61" + _
            "u2jj7fQQ7azcwp61dePt9BDtrNzCnrWfWZekzRfonNzyBBDInbW4yOS3cKm5" + _
            "yt+4dabw+g7kp+rp2g+9RoGkscufdePt9BDtrNzpz+eupeDn9hnyntzCnrWf" + _
            "WZekzQzrpeb7z7iJWZekscufWZfA8g/jWev9ARC8W7zTv/vjn5mkBxDxrODz" + _
            "/+ihbaW0s8uud4SOscufWbOz8hfrqO7CnrWfWZekzRrxndz22hnlqJfo8h/k" + _
            "dpm1wtqwcqa2wdyxW5f69h3youbyzs2zW5ezz7iJWZeksefyot7y")
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session is started
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires at the beginning of each request
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires upon attempting to authenticate the use
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when an error occurs
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session ends
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application ends
    End Sub

End Class