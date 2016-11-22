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

    Protected Sub Txtpasswrd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtName.TextChanged

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call txte()
        Try

        Catch ex As Exception

        End Try
        obs.main()
        obs.cmd.CommandText = "select max(Id) from tblAgencyMaster"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtId.Text = Val(obs.dr(0)) + 1
        Else
            txtId.Text = 1
        End If
        txtName.Focus()
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            obs.cmd.CommandText = "insert into tblAgencyMaster values('" & txtId.Text & "','" & txtName.Text & "','" & txtaddr.Text & "','" & txtemail.Text & "','" & txtono.Text & "')  "
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
        txtaddr.Text = ""
        txtemail.Text = ""
        txtCno.Text = ""
        txtono.Text = ""
      
    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtName.Enabled = True
        txtaddr.Enabled = True
        txtemail.Enabled = True
        txtCno.Enabled = True
        txtono.Enabled = True
       

    End Sub



    Public Sub txtd()
        txtId.Enabled = False
        txtName.Enabled = False
        txtaddr.Enabled = False
        txtemail.Enabled = False
        txtCno.Enabled = False
        txtono.Enabled = False
       

    End Sub

    Protected Sub btnsave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave0.Click
        Response.Redirect("tblAgencyMaster.aspx")
    End Sub
End Class
