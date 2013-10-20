Imports System.Web.UI
Imports System.Data.SqlClient
Imports System.IO


Module Globals
    Friend mode As String = Nothing
    Friend folder As String = "C:\GoogleDrive\Blaeneinion\Labels\Reports\"
    Friend order_num As String = Nothing
    Friend invoice_num As String = Nothing
    Friend invoice_mode As String = "print"
    'Friend sql As String = Nothing
    'Friend connStr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\blaeneinion.mdf;Integrated Security=True;User Instance=True"
    'Friend connStr As String = "Data Source=server;Initial Catalog=blaeneinion;Persist Security Info=True;User ID=sa;Password=diva"
    'Data Source=|DataDirectory|\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True
    Friend connStr As String = "Data Source=|DataDirectory|\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True"
    'Friend connStr As String = "Data Source=C:\share\Visual Studio Projects\Ysgol\App_Data\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True"
    'C:\share\Visual Studio Projects\Ysgol\App_Data\App_LocalResources\data.sdf

    Public Sub executeSQL(ByVal sqlstr As String)

        Dim conn As SqlServerCe.SqlCeConnection = Nothing
        Dim cmd As SqlServerCe.SqlCeCommand = Nothing
        'Dim rdr As SqlServerCe.SqlCeDataReader = Nothing
        Try
            conn = New SqlServerCe.SqlCeConnection(connStr)
            conn.Open()
            cmd = New SqlServerCe.SqlCeCommand(sqlstr, conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
        Finally
            conn.Close()
            conn = Nothing
        End Try
    End Sub
    Public Sub FillCombo(ByRef drop As DropDownList, ByVal sql As String, ByVal dbase As String)
        Dim SageConn As String
        Dim x As String = 0
        drop.Items.Clear()
        drop.Items.Add("<-- select -->")
        Dim rdr As SqlClient.SqlDataReader
        SageConn = connStr '"Data Source=server;Initial Catalog=" & dbase & ";Persist Security Info=True;User ID=sa;Password=diva"
        Dim str As String = Nothing
        'Dim connection As New SqlClient.SqlConnection(SageConn)
        Dim connection As New SqlClient.SqlConnection(connStr)
        Dim cmd As New SqlClient.SqlCommand(sql, connection)
        connection.Open()
        rdr = cmd.ExecuteReader()
        While rdr.Read()
            str = rdr.Item(0)
            drop.Items.Add(str)
            x = x + 1
        End While
        connection.Close()
        'drop.SelectedIndex = 0
        If x <> 0 Then
            drop.Items.Capacity = x + 1
        End If
    End Sub
    Public Function getYesNoBoolean(ByVal sql As String, ByVal dbase As String)
        Dim SageConn As String
        SageConn = "Data Source=server;Initial Catalog=" & dbase & ";Persist Security Info=True;User ID=sa;Password=diva"
        Dim ret As Integer = 0
        Using connection As New SqlClient.SqlConnection(SageConn)
            Dim command As New SqlClient.SqlCommand(sql, connection)
            connection.Open()
            ret = command.ExecuteScalar()
        End Using
        Return ret

    End Function
    Public Function GetField(ByVal sql As String, ByVal dbase As String)
        Dim ret As String = Nothing
        Dim conn As SqlServerCe.SqlCeConnection = Nothing
        Dim cmd As SqlServerCe.SqlCeCommand = Nothing
        Dim rdr As SqlServerCe.SqlCeDataReader = Nothing
        Try
            conn = New SqlServerCe.SqlCeConnection(connStr)
            conn.Open()
            cmd = New SqlServerCe.SqlCeCommand(sql, conn)
            rdr = cmd.ExecuteReader()

            ' Iterate through the results
            While rdr.Read()
                ret = rdr.GetValue(0)
                'ret = rdr.GetInt32(0) ' or: rdr["EmployeeKey"];
                'ret = rdr(0)
                'Dim lastName As String = rdr.GetString(5) ' or: rdr["FirstName"];
            End While
            ' Always dispose data readers and commands as soon as practicable
            rdr.Close()
            cmd.Dispose()
        Finally
            ' Close the connection when no longer needed
            conn.Close()
        End Try
        Return ret
    End Function
    Public Function GetCount(ByVal sqlstr As String, ByVal dbase As String)
        Dim ret As Integer
        Dim conn As SqlServerCe.SqlCeConnection = Nothing
        Dim cmd As SqlServerCe.SqlCeCommand = Nothing
        Dim rdr As SqlServerCe.SqlCeDataReader = Nothing
        Try
            conn = New SqlServerCe.SqlCeConnection(connStr)
            conn.Open()
            cmd = New SqlServerCe.SqlCeCommand(sqlstr, conn)
            rdr = cmd.ExecuteReader()
            ' Iterate through the results
            While rdr.Read()
                'ret = rdr.GetInt32(0) ' or: rdr["EmployeeKey"];
                ret = rdr("cnt")
                'Dim lastName As String = rdr.GetString(5) ' or: rdr["FirstName"];
            End While
            ' Always dispose data readers and commands as soon as practicable
            rdr.Close()
            cmd.Dispose()
        Finally
            ' Close the connection when no longer needed
            conn.Close()
        End Try
        Return ret

    End Function
    Public Function GetDouble(ByVal sql As String, ByVal dbase As String)
        Dim SageConn As String
        SageConn = "Data Source=|DataDirectory|\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True"
        Dim ret As Double
        Try
            Using connection As New SqlClient.SqlConnection(SageConn)
                Dim command As New SqlClient.SqlCommand(sql, connection)
                connection.Open()
                ret = command.ExecuteScalar()
                ret = Trim(ret)
            End Using
        Catch ex As Exception
            Return 0
            Exit Function
        End Try
        Return ret
    End Function
    Public Function readfile(ByVal file_to_read As String, ByVal qkey As String)
        Dim sql
        Try
            Dim sr As IO.StreamReader = New IO.StreamReader(file_to_read)
            readfile = sr.ReadToEnd
            sr.Close()
            'Exit Function
        Catch E As Exception
            sql = "insert into scheme.crystal_log (queue_key,status,dated) values ('"
            sql = sql & qkey & "','readfile ERROR',getdate())"
            'executeSQL(sql, "csmaster")
        End Try
    End Function
    Public Function StripGayCrap(ByVal str As String, ByVal pos As Integer, ByVal len As Integer)
        str = Mid(str, pos, len)
        str = Trim(str)
        str = Replace(str, Chr(8), "")
        str = Replace(str, Chr(9), "")
        str = Replace(str, Chr(10), "")
        str = Replace(str, Chr(13), "")
        Return str
    End Function

    Public Function WriteLog(ByVal qkey As String, ByVal dbase As String, ByVal report As String, ByVal main As String, ByVal str As String)
        Dim sql As String = Nothing
        sql = "insert into scheme.crystal_log (queue_key,dbase,report,main_param,dated,errmsg) values ('"
        sql = sql & qkey & "','" & dbase & "','" & report & "','" & main & "',getdate(),'"
        sql = sql & str & "')"
        executeSQL(sql)
    End Function
    Public Sub XLSExport(ByVal dGV As DataGrid, ByVal filename As String)
        'Dim stOutput As String = ""
        '' Export titles:
        'Dim sHeaders As String = ""
        'Dim col As String = Nothing

        'For j As Integer = 0 To dGV.Columns.Count - 1
        '    col = "" & Convert.ToString(dGV.Columns(j).HeaderText)
        '    If Trim(col) <> "" Then
        '        sHeaders = sHeaders.ToString() + Convert.ToString(dGV.Columns(j).HeaderText) + vbTab
        '    End If
        'Next
        'stOutput += sHeaders + vbCr & vbLf
        '' Export data.
        'For i As Integer = 0 To dGV.RowCount - 1
        '    Dim stLine As String = ""
        '    For j As Integer = 0 To dGV.Rows(i).Cells.Count - 1
        '        col = "" & Convert.ToString(dGV.Rows(i).Cells(j).ToolTipText)
        '        If col <> "click to delete record..." Then
        '            stLine = stLine.ToString() + Convert.ToString(dGV.Rows(i).Cells(j).Value) + vbTab
        '        End If
        '    Next
        '    stOutput += stLine + vbCr & vbLf
        'Next
        'Dim utf16 As System.Text.Encoding = System.Text.Encoding.GetEncoding(1254)
        'Dim output As Byte() = utf16.GetBytes(stOutput)
        'Dim fs As New IO.FileStream(filename, IO.FileMode.Create)
        'Dim bw As New IO.BinaryWriter(fs)
        'bw.Write(output, 0, output.Length)
        ''write the encoded file
        'bw.Flush()
        'bw.Close()
        'fs.Close()
    End Sub
    Public Sub FillComboWithFileNames(ByRef drop As DropDownList)
        'C:\share\Blaeneinion\Labels\Reports
        folder = "" & Trim(folder)
        If folder = "" Then
            folder = "C:\share\Blaeneinion\Labels\Reports\"
        End If
        Dim di As New IO.DirectoryInfo(folder)
        Dim diar1 As IO.FileInfo() = di.GetFiles()
        Dim dra As IO.FileInfo

        'list the names of all files in the specified directory
        For Each dra In diar1
            'drop.Items.Add(dra)
            drop.Items.Add(dra.ToString)
        Next
        drop.SelectedIndex = 0
    End Sub

    Public Function InsertGetId(ByVal sql As String)
        Using connection As New SqlClient.SqlConnection(connStr)
            Dim command As New SqlClient.SqlCommand(sql, connection)
            connection.Open()
            command.Connection = connection
            command.CommandType = CommandType.Text
            sql = sql & " SELECT SCOPE_IDENTITY();"
            command.CommandText = sql
            Dim id As String = Nothing
            id = command.ExecuteScalar().ToString() 'Get the @Identity Column
            Return id
        End Using

    End Function
    Public Function GenerateRandomString(ByRef len As Integer) As String
        Dim rand As New Random()
        Dim allowableChars() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
        Dim final As String = String.Empty
        For i As Integer = 0 To len - 1
            final += allowableChars(rand.Next(allowableChars.Length - 1))
        Next

        'Return IIf(upper, final.ToUpper(), final)
        Return final
    End Function
    Public Sub ImageToDatabase(ByVal myfilelocation As String, ByVal folder As String, ByVal uniq_val As String)
        'Dim db As String = HttpContext.Current.Session("database")
        'Dim cust As String = HttpContext.Current.Session("customer")
        Exit Sub
        Dim conn As New SqlConnection("Data Source=|DataDirectory|\App_LocalResources\data.sdf;Password=diva;Persist Security Info=True")
        Dim sql As String = Nothing
        'sql = "delete from portal_image_designrequests where dbase = '" & db & "' and customer = '" & cust & "'"
        'executeSQL(sql, "pure_genius")
        '~/images/
        Dim url As String = Nothing
        url = Replace(myfilelocation, "\\server\school\images\uploads\" & folder & "\", "~/school/images/uploads/" & folder & "/")
        url = Replace(url, "\", "/")

        Dim cmd As New SqlCommand("insert into school_images (folder,image_blob,image_url,dated,uniq) Values ('" & folder & "',@ImageData,'" & Trim(url) & "',getdate(),'" & uniq_val & "')", conn)

        Dim param As New SqlParameter("@ImageData", SqlDbType.Image)
        'myfilelocation = "\\server\school\images\uploads\" & folder & "\" & uniq_val & ".jpg"
        Dim ImageData As Byte() = IO.File.ReadAllBytes(myfilelocation)
        param.Value = ImageData
        cmd.Parameters.Add(param)
        Try
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            'MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try
    End Sub

End Module
