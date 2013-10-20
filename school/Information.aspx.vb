Public Class Information
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not IsPostBack Then
        lbl1.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/1.jpg)';")
        lbl2.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/2.jpg)';")
        lbl3.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/3.jpg)';")
        lbl4.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/4.jpg)';")
        lbl5.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/5.jpg)';")
        lbl6.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/6.jpg)';")
        lbl7.Attributes.Add("onmouseover", "document.getElementById('form1').style.backgroundImage = 'url(images/sign/7.jpg)';")
        lbl1.Attributes.Add("onclick", "location.href='TermDates.aspx'")
        lbl2.Attributes.Add("onclick", "location.href='Map.aspx'")
        lbl3.Attributes.Add("onclick", "location.href='http://www.llangynfelyn.org/hafan.html'")
        lbl6.Attributes.Add("onclick", "location.href='https://online.espresso.co.uk/espresso/login/Authn/UserPassword'")
        lbl7.Attributes.Add("onclick", "location.href='Links.aspx'")

        'https://online.espresso.co.uk/espresso/login/Authn/UserPassword
        'username:student6994
        'password:flyer15

        'End If
    End Sub

End Class