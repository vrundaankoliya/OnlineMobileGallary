Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'txtCustID.Focus()
        obs.main()
        Call txtd()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        obs.main()
        obs.cmd.CommandText = "select Max(ID) from tblCustomer "
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtID.Text = Val(obs.dr(0)) + 1
        Else
            txtID.Text = 1
        End If

        Call txte()

        txtCustName.Focus()
    End Sub


    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try
            If txtID.Text = "" And txtCustName.Text = "" And txtMobNo.Text Then
                MsgBox("Enter Proper")
                txtCustName.Focus()
            Else

                obs.cmd.CommandText = "insert into  tblCustomer values('" & txtID.Text & "','" & txtCustName.Text & "','" & txtEmail.Text & "',' " & txtPhoneNo.Text & " ','" & txtMobNo.Text & "','" & txtCompany.Text & "','" & txtModel.Text & "','" & txtShopNear.Text & "' ,'" & txtAddress.Text & "' ,'" & txtOffice.Text & "','" & cmbPaymentMode.Text & "','" & cmbBanking.Text & "','" & cmbCard.Text & "','" & txtCode.Text & "' )  "
                obs.cmd.ExecuteReader()
                MsgBox("save")
                Call txtc()
                Call txtd()

            End If


        Catch ex As Exception
            MsgBox(ex)
        End Try

    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Public Sub txtc()
        txtID.Text = ""
        txtCustName.Text = ""
        txtEmail.Text = ""
        txtPhoneNo.Text = ""
        txtMobNo.Text = ""
        txtCompany.Text = ""
        txtModel.Text = ""
        txtShopNear.Text = ""
        txtAddress.Text = ""
        txtOffice.Text = ""
        cmbPaymentMode.Text = ""
        cmbBanking.Text = ""
        cmbCard.Text = ""
        txtCode.Text = ""

    End Sub

    Public Sub txte()
        txtID.Enabled = True
        txtCustName.Enabled = True
        txtEmail.Enabled = True
        txtPhoneNo.Enabled = True
        txtMobNo.Enabled = True
        txtCompany.Enabled = True
        txtModel.Enabled = True
        txtShopNear.Enabled = True
        txtAddress.Enabled = True
        txtOffice.Enabled = True
        cmbPaymentMode.Enabled = True
        cmbBanking.Enabled = True
        cmbCard.Enabled = True
        txtCode.Enabled = True
    End Sub



    Public Sub txtd()
        txtID.Enabled = False
        txtCustName.Enabled = False
        txtEmail.Enabled = False
        txtPhoneNo.Enabled = False
        txtMobNo.Enabled = False
        txtCompany.Enabled = False
        txtModel.Enabled = False
        txtShopNear.Enabled = False
        txtAddress.Enabled = False
        txtOffice.Enabled = False
        cmbPaymentMode.Enabled = False
        cmbBanking.Enabled = False
        cmbCard.Enabled = False
        txtCode.Enabled = False
    End Sub


End Class
