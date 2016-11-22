Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Txtuname.Focus()
        obs.main()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncreateacc.Click
        'Try
        '    obs.cmd.CommandText = "insert into  values('" & txtId.Text & "','" & txtName.Text & "','" & txtpassword.Text & "','" & txtaddress.Text & "','" & txtcity.Text & "','" & txtpincode.Text & "','" & cmbtstate.Text & "','" & txtContactNo.Text & "','" & txtContactperson.Text & "','" & txtemaild.Text & "'  )  "
        '    obs.cmd.ExecuteReader()
        '    MsgBox("save")
        '    Call txtc()
        '    Call txtd()

        'Catch ex As Exception
        '    MsgBox(ex)
        'End Try
    End Sub
End Class
