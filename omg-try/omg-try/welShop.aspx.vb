Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Dim Savemode As Boolean
    Dim Editmode As Boolean

    Dim Deletemode As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim obj As New clsConnection
        obj.main()
        Label2.Text = Session("UserName")
    End Sub
End Class
'

