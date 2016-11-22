Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Imports System.Web.UI.HtmlTextWriter
Partial Class _Default
    Inherits System.Web.UI.Page
    'Public cn As New SqlConnection("data source=ABC-PC;Initial catalog=Mobile;Integrated security=True")
    'Public cmd As New SqlCommand("select * from logs", cn)
    'Public dr As SqlDataReader

    'Dim Savemode As Boolean
    'Dim Editmode As Boolean
    'Dim Deletemode As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'cn.Open()
        'MsgBox("oen")


    End Sub

    'Protected Sub Txtname_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtUname.TextChanged
    '    '   TxtUname.Focus()
    'End Sub

    'Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click


    '    Call main()
    '    cmd.CommandText = "Select * from logs Where UserName='" & TxtUname.Text & "' And Pass='" & Txtpass.Text & "' "
    '    dr = cmd.ExecuteReader
    '    If dr.HasRows = False Then
    '        validate.InnerHtml = "&nbsp;&nbsp; Invalid User Name Or Password "
    '        Exit Sub
    '    Else
    '        Session("UserName") = TxtUname.Text
    '        Session("Pass") = Txtpass.Text

    '        If TxtUname.Text = "Nk" Then
    '            MsgBox("HI")
    '        Else
    '            Response.Redirect("Welcome.aspx")
    '        End If


    '    End If




    'End Sub

    'Public Sub main()
    '    If cn.State = 1 Then cn.Close()
    '    cn.Open()
    'End Sub


    'Public Sub txtc()
    '    TxtUname.Text = ""
    '    Txtpass.Text = ""
    '    TxtUname.Text = ""
    '    Txtpass.Text = ""
    'End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub



    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnexcel.Click
        ' Clear the response
        Try
            Response.Clear()

            ' Set the type and filename  
            Response.AddHeader("content-disposition", "attachment;filename=FileName.xls")
            Response.Charset = ""
            Response.ContentType = "application/vnd.xls"

            ' Add the HTML from the GridView to a StringWriter so we can write it out later  
            Dim sw As System.IO.StringWriter = New System.IO.StringWriter
            Dim hw As System.Web.UI.HtmlTextWriter = New HtmlTextWriter(sw)
            GridView1.RenderControl(hw)

            ' Write out the data  
            Response.Write(sw.ToString)
            Response.End()

        Catch ex As Exception
            MsgBox(e)
        End Try

    End Sub



    Private Function GetData() As DataTable
        ' Declarations  
        Dim dt As New DataTable
        Dim dr As DataRow

        ' Add some columns  
        dt.Columns.Add("Column1")
        dt.Columns.Add("Column2")

        ' Add some test data  
        For i As Integer = 0 To 10
            dr = dt.NewRow
            dr("Column1") = i
            dr("Column2") = "Some Text " & (i * 5)
            dt.Rows.Add(dr)
        Next

        ' Return the DataTable  
        Return dt
    End Function

    Protected Sub btnadd0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnprint.Click

    End Sub
End Class
