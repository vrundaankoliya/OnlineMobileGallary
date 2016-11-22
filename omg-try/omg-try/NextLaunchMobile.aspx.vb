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
            obs.cmd.CommandText = "insert into tblNextLaunchMob values('" & txtId.Text & "','" & txtname.Text & "','" & txtModelno.Text & "','" & txtDescription.Text & "' ,'" & txtFeatures.Text & "',' " & txtPrice.Text & " ' )  "
            obs.cmd.ExecuteReader()
            MsgBox("save")
            Call txtc()
            Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try

    End Sub

    
    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Public Sub txtc()
        txtId.Text = ""
        txtName.Text = ""
        txtModelno.Text = ""
        txtDescription.Text = ""
        txtFeatures.Text = ""
        txtPrice.Text = ""
    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtname.Enabled = True
        txtModelno.Enabled = True
        txtDescription.Enabled = True
        txtFeatures.Enabled = True
        txtPrice.Enabled = True
    End Sub

    Public Sub txtd()
        txtId.Enabled = False
        txtname.Enabled = False
        txtModelno.Enabled = False
        txtDescription.Enabled = False
        txtFeatures.Enabled = False
        txtPrice.Enabled = False
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call txte()

        obs.main()
        obs.cmd.CommandText = "select max(ID) from tblNextLaunchMob"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtId.Text = Val(obs.dr(0)) + 1
        Else
            txtId.Text = 1
        End If
        txtname.Focus()
    End Sub

    Protected Sub btncancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel0.Click
        Response.Redirect("EnextLonch.aspx")
    End Sub
End Class
