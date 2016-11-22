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
        Try
            ob.main()

            '  TxtUname.Focus()
            Session("UserName") = ""
            Session("Pass") = ""
            'ob.cn.ConnectionString = SqlDataSource1.ConnectionString
            ' ob.cn.Open()
            ob.main()
            ob.cmd.Connection = ob.cn
            ob.cmd.CommandType = Data.CommandType.Text
            ob.cmd.CommandText = "Select * from logs Where UserName='" & Session("UserName") & "' And Pass='" & Session("Pass") & "' "
            ob.dr = ob.cmd.ExecuteReader
            If ob.dr.HasRows = False Then
                Session.Clear()
                Response.Redirect("index.html")

            End If
            ob.dr.Close()
            ob.cn.Close()
            'MsgBox(Session("UName"))
            'Response.Redirect("index.html")
            'Server.TransferRequest("index.html")
        Catch ex As Exception
            ' MsgBox("error..")

        End Try
        Session.Clear()
        
    End Sub


   


    'Public Sub main()
    '    If cn.State = 1 Then cn.Close()
    '    cn.Open()
    'End Sub


    
End Class
