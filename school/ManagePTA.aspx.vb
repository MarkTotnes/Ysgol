Imports System.IO
Imports System.Drawing

Public Class ManagePTA
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("loggedin") Is Nothing Then
            Response.Redirect("NotLoggedIn.aspx")
        End If
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCancel.Click
        txtName.Text = ""
        txtTitle.Text = ""
        txtBlurb.Text = ""

        popAdd.ShowOnPageLoad = False
        ds_pta.DataBind()
        grdPTA.DataBind()
    End Sub


    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click
        Dim id As String = GenerateRandomString(50)
        Dim sql As String = Nothing
        sql = "insert into school_pta (pta_name,title,blurb,image_id) values ('"
        sql = sql & txtName.Text & "','" & txtTitle.Text & "','" & txtBlurb.Text & "','" & id & "')"
        executeSQL(sql)
        savePic(id)
        ds_pta.DataBind()
        grdPTA.DataBind()
        popAdd.ShowOnPageLoad = False

    End Sub

    Sub savePic(ByVal id As String)
        If Not imgUpload.HasFile Then
            Exit Sub
        End If
        Using original As Image = Image.FromStream(imgUpload.FileContent)
            'Dim conn As New SqlConnection("Data Source=|DataDirectory|\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True")
            Dim conn As SqlServerCe.SqlCeConnection = Nothing
            conn = New SqlServerCe.SqlCeConnection(connStr)
            conn.Open()
            Dim sql As String = "insert into school_images (folder,image_blob,dated,uniq) Values ('pta',@ImageData,getdate(),'" & id & "')"
            Dim cmd As SqlServerCe.SqlCeCommand
            cmd = New SqlServerCe.SqlCeCommand(sql, conn)
            Dim ImageData As Byte() = Nothing
            Dim imgMemoryStream As MemoryStream = New MemoryStream()
            original.Save(imgMemoryStream, System.Drawing.Imaging.ImageFormat.Jpeg)
            ImageData = imgMemoryStream.GetBuffer
            cmd.Parameters.Add("@ImageData", SqlDbType.Image, ImageData.Length).Value = ImageData
            Try
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                conn.Close()
            End Try
        End Using
    End Sub

    Protected Sub grdPta_RowCommand(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdPTA.RowCommand
        If (e.CommandName = "delete_row") Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim sql As String = ""
            Dim linetype As String = Nothing
            Dim rowid As String = Nothing
            Dim row As Label = CType(grdPTA.Rows(index).FindControl("lblID"), Label)
            rowid = row.Text
            txtID.Text = rowid
            popDelete.Top = 50
            popDelete.Left = 280
            popDelete.ShowOnPageLoad = True
        End If
    End Sub
    Protected Sub btnYes_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnYes.Click
        Dim sql As String = Nothing
        sql = "delete from school_pta where id = " & txtID.Text
        executeSQL(sql)
        popDelete.ShowOnPageLoad = False
        ds_pta.DataBind()
        grdPTA.DataBind()
        'Response.Redirect("ManagePTA.aspx")
    End Sub
    Protected Sub btnNo_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnNo.Click
        popDelete.ShowOnPageLoad = False
        ds_pta.DataBind()
        grdPTA.DataBind()
    End Sub

End Class