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
        Call txtd()

    End Sub




    Public Sub txtc()
        txtId.Text = ""
        txtCompanyName.Text = ""

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try

            obs.main()
            obs.cmd.CommandText = "select max(Id) from tblCompanyMaster"
            obs.dr = obs.cmd.ExecuteReader
            obs.dr.Read()

            If obs.dr(0).ToString <> "" Then
                txtId.Text = Val(obs.dr(0)) + 1
            Else
                txtId.Text = 1
            End If
            txtCompanyName.Focus()
        Catch ex As Exception

        End Try
        Call txte()

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            obs.cmd.CommandText = "insert into tblCompanyMaster values('" & txtId.Text & "','" & txtCompanyName.Text & "'  )  "
            obs.cmd.ExecuteReader()
            MsgBox("save")
            Call txtc()
            Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try


    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtCompanyName.Enabled = True

    End Sub



    Public Sub txtd()
        txtId.Enabled = False
        txtCompanyName.Enabled = False

    End Sub
End Class
