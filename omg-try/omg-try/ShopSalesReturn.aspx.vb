Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' TxtcustId.Focus()
        obs.main()
    End Sub

    'Protected Sub Txtpasswrd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcustName.TextChanged

    'End Sub

    Protected Sub btnsave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click
        Response.Redirect("EShopSalesReturn.aspx")
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        obs.main()
        obs.cmd.CommandText = "select Max(Id) from tblShopSalesReturn "
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtID.Text = Val(obs.dr(0)) + 1
        Else
            txtID.Text = 1
        End If

        Call txte()

        txtName.Focus()
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            If txtCity.Text = "" And txtQuantity.Text = "" And txtGivingdate.Text Then
                MsgBox("Enter Proper")
                txtCity.Focus()
            Else

                obs.cmd.CommandText = "insert into  tblShopSalesReturn values('" & txtID.Text & "','" & txtName.Text & "','" & txtAddress.Text & "',' " & txtCity.Text & " ','" & txtMobileNo.Text & "','" & txtOtherNo.Text & "','" & txtQuantity.Text & "','" & txtGivingdate.Text & "' ,'" & txtReturndate.Text & "'  )  "
                obs.cmd.ExecuteReader()
                MsgBox("save")
                Call txtc()
                Call txtd()

            End If


        Catch ex As Exception
            MsgBox(ex)
        End Try
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub

    Public Sub txtc()
        txtID.Text = ""
        txtName.Text = ""
        txtAddress.Text = ""
        txtCity.Text = ""
        txtMobileNo.Text = ""

        txtQuantity.Text = ""
        txtGivingdate.Text = ""
        txtReturndate.Text = ""

    End Sub


    Public Sub txte()
        txtID.Enabled = True
        txtName.Enabled = True
        txtAddress.Enabled = True
        txtCity.Enabled = True
        txtMobileNo.Enabled = True
        txtQuantity.Enabled = True
        txtGivingdate.Enabled = True
        txtReturndate.Enabled = True

    End Sub

    Public Sub txtd()
        txtID.Enabled = False
        txtName.Enabled = False
        txtAddress.Enabled = False
        txtCity.Enabled = False
        txtMobileNo.Enabled = False

        txtQuantity.Enabled = False
        txtGivingdate.Enabled = False
        txtReturndate.Enabled = False

    End Sub



End Class
