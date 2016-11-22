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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Call txte()

        obs.main()
        obs.cmd.CommandText = "select max(Purchase_Id) from tblShopPurchaseFromAdmin"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtId.Text = Val(obs.dr(0)) + 1
        Else
            txtId.Text = 1
        End If
        txtProductname.Focus()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try
            obs.cmd.CommandText = "insert into tblShopPurchaseFromAdmin values('" & txtId.Text & "','" & txtPurchasedate.Text & "','" & txtAgencyname.Text & "','" & txtProductname.Text & "','" & txtDescription.Text & "','" & txtQuentity.Text & "','" & txtPurchaserate.Text & "'  )"
            obs.cmd.ExecuteReader()
            MsgBox("save")
            Call txtc()
            Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try

    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Public Sub txtc()
        txtId.Text = ""
        txtProductname.Text = ""
        txtPurchasedate.Text = ""
        txtAgencyname.Text = ""
        txtProductname.Text = ""
        txtQuentity.Text = ""
        txtDescription.Text = ""
    End Sub

    Public Sub txte()
        txtId.Enabled = True
        txtProductname.Enabled = True
        txtPurchasedate.Enabled = True
        txtAgencyname.Enabled = True
        txtProductname.Enabled = True
        txtQuentity.Enabled = True
        txtDescription.Enabled = True
    End Sub



    Public Sub txtd()
        txtId.Enabled = False
        txtProductname.Enabled = False
        txtPurchasedate.Enabled = False
        txtAgencyname.Enabled = False
        txtProductname.Enabled = False
        txtQuentity.Enabled = False
        txtDescription.Enabled = False
    End Sub
  

    Protected Sub btncancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel0.Click
        Response.Redirect("EShopPurchaseFromAdmin.aspx")
    End Sub
End Class
