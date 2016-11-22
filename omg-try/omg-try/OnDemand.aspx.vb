Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtId.Focus()
        obs.main()
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            obs.cmd.CommandText = "insert into tblOnDemand values('" & txtId.Text & "','" & txtName.Text & "','" & txtEmailaddress.Text & "','" & txtMobileno.Text & "','" & txtOtherno.Text & "'  )  "
            obs.cmd.ExecuteReader()
            MsgBox("save")
            Call txtc()
            Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call txte()

        obs.main()
        obs.cmd.CommandText = "select max(Id) from tblOnDemand"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtId.Text = Val(obs.dr(0)) + 1
        Else
            txtId.Text = 1
        End If
        txtName.Focus()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Public Sub txtc()
        txtId.Text = ""
        txtName.Text = ""
        txtEmailaddress.Text = ""
        txtMobileno.Text = ""
        txtOtherno.Text = ""
    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtName.Enabled = True
        txtEmailaddress.Enabled = True
        txtMobileno.Enabled = True
        txtOtherno.Enabled = True
    End Sub



    Public Sub txtd()
        txtId.Enabled = False
        txtName.Enabled = False
        txtEmailaddress.Enabled = False
        txtMobileno.Enabled = False
        txtOtherno.Enabled = False
    End Sub

    Protected Sub btncancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel0.Click
        Response.Redirect("EonDemand.aspx")
    End Sub
End Class
