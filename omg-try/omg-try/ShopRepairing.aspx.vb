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
        obs.cmd.CommandText = "select max(Id) from tblShopRepairing"
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
            obs.cmd.CommandText = "insert into tblShopRepairing values('" & txtId.Text & "','" & txtName.Text & "','" & txtcost.Text & "','" & txtAdate.Text & "','" & txtRdate.Text & "','" & txtBname.Text & "','" & txtModelno.Text & "','" & txtInvoiceNo.Text & "','" & txtConNo.Text & "','" & txtQuantity.Text & "'  )  "
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
        txtcost.Text = ""
        txtAdate.Text = ""
        txtRdate.Text = ""
        txtBname.Text = ""
        txtModelno.Text = ""
        txtInvoiceNo.Text = ""
        txtConNo.Text = ""
        txtQuantity.Text = ""
    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtName.Enabled = True
        txtcost.Enabled = True
        txtAdate.Enabled = True
        txtRdate.Enabled = True
        txtBname.Enabled = True
        txtModelno.Enabled = True
        txtInvoiceNo.Enabled = True
        txtConNo.Enabled = True
        txtQuantity.Enabled = True


    End Sub



    Public Sub txtd()
        txtId.Enabled = False
        txtName.Enabled = False
        txtcost.Enabled = False
        txtAdate.Enabled = False
        txtRdate.Enabled = False
        txtBname.Enabled = False
        txtModelno.Enabled = False
        txtInvoiceNo.Enabled = False
        txtConNo.Enabled = False
        txtQuantity.Enabled = False

    End Sub

    Protected Sub btnsave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave0.Click
        Response.Redirect("EShopRepairing.aspx")
    End Sub
End Class
