
Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxUploadControl
Imports System.Web.UI
Imports System.IO
Imports Blaeneinion.DevExpress.Web.Demos
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Object

Public Class ManageStaff
    Inherits System.Web.UI.Page
    Private Const UploadDirectory As String = "~/UploadControl/UploadImages/"
    Private Const ThumbnailFileName As String = "ThumbnailImage.jpg"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("loggedin") Is Nothing Then
                Response.Redirect("NotLoggedIn.aspx")
            End If
        End If
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCancel.Click
        txtName.Text = ""
        txtTitle.Text = ""
        txtBlurb.Text = ""

        popAdd.ShowOnPageLoad = False
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click
        If Trim(txtName.Text) = "" Then
            txtName.Focus()
            Exit Sub
        End If
        If Trim(txtTitle.Text) = "" Then
            txtTitle.Focus()
            Exit Sub
        End If
        Dim id As String = GenerateRandomString(50)
        Dim sql As String = Nothing
        sql = "insert into school_staff (staff_name,title,blurb,image_id) values ('"
        sql = sql & txtName.Text & "','" & txtTitle.Text & "','" & txtBlurb.Text & "','" & id & "')"
        executeSQL(sql)
        savePic(id)
        ds_staff.DataBind()
        grdStaff.DataBind()
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
            Dim sql As String = "insert into school_images (folder,image_blob,dated,uniq) Values ('staff',@ImageData,getdate(),'" & id & "')"
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

    Protected Sub grdStaff_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdStaff.RowCommand
        If (e.CommandName = "delete_row") Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim sql As String = ""
            Dim linetype As String = Nothing
            Dim rowid As String = Nothing
            Dim row As Label = CType(grdStaff.Rows(index).FindControl("lblID"), Label)
            rowid = row.Text
            txtID.Text = rowid
            popDelete.Top = 50
            popDelete.Left = 280
            popDelete.ShowOnPageLoad = True
        End If
    End Sub

    Protected Sub btnYes_Click(sender As Object, e As EventArgs) Handles btnYes.Click
        Dim sql As String = Nothing
        sql = "delete from school_staff where id = " & txtID.Text
        executeSQL(sql)
        popDelete.ShowOnPageLoad = False
        ds_staff.DataBind()
        grdStaff.DataBind()
    End Sub

    Protected Sub btnNo_Click(sender As Object, e As EventArgs) Handles btnNo.Click
        popDelete.ShowOnPageLoad = False
    End Sub
End Class