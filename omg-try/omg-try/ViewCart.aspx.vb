Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection
Partial Class ViewCart
    Inherits System.Web.UI.Page


    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Public ob As New clsConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call ob.main()
        'MsgBox("open")
        '  Call info()
    End Sub

    'Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    'End Sub

    Protected Sub btnPaynow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPaynow.Click


        Response.Redirect("loginuser.aspx")
    End Sub

    'Public Sub info()
    '    ob.cmd.CommandText = "select * from tblbuynow2 "

    '    ob.dr = ob.cmd.ExecuteReader
    '    ob.dr.Read()
    '    'Label1.Text = ob.dr("Price")


    'End Sub

    Protected Sub btnshopcon_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshopcon.Click
        Response.Redirect("buynow.aspx")
    End Sub
End Class
