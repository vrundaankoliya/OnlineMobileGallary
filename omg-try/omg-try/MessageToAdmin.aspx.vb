Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection
Partial Class _Default
    Inherits System.Web.UI.Page
    'Public cn As New SqlConnection("data source=ABC-PC;Initial catalog=Mobile;Integrated security=True")
    'Public cmd As New SqlCommand("select * from logs", cn)
    'Public dr As SqlDataReader
    Public ob As New clsConnection
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ob.main()
        'TxtUname.Focus()
    End Sub

    'Protected Sub Txtname_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtUname.TextChanged
    '    '   TxtUname.Focus()
    'End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        'ob.cmd.CommandText = "select * from logs where UserName=' " & TxtUname.Text & "'And pass='" & Txtpass.Text & "'  "
        'Session("UserName") = TxtUname.Text
        'Response.Redirect("welcome.aspx")

    End Sub

    Public Sub main()
        '    If cn.State = 1 Then cn.Close()
        '    cn.Open()
    End Sub


    Public Sub txtc()
        'TxtUname.Text = ""
        'Txtpass.Text = ""
        'TxtUname.Text = ""
        'Txtpass.Text = ""
    End Sub

End Class
