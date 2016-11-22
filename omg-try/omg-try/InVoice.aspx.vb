Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtbill.Focus()
        obs.main()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            obs.cmd.CommandText = "insert into tblInVoice values('" & txtbill.Text & "','" & txtBuyer.Text & "'," & txtVatno.Text & "," & txtCstno.Text & " ,'" & txtCustomername.Text & "','" & txtCustomeraddress.Text & "'," & txtInvoiceno.Text & " ,'" & txtDate.Text & "','" & txtDeliverynote.Text & "','" & txtSupplier.Text & "'," & txtOrderno.Text & "," & txtSrno.Text & " ,' " & txtDescgoods.Text & " '," & txtQuantity.Text & "," & txtRate.Text & "," & txtPer.Text & "," & txtDiscount.Text & "," & txtAmount.Text & "," & txtTotal.Text & ",'" & txtTermscondition.Text & "'," & txtPaymentmode.Text & ",'" & txtRemark.Text & "')"
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
        obs.cmd.CommandText = "select max(ID) from tblInVoice"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtbill.Text = Val(obs.dr(0)) + 1
        Else
            txtbill.Text = 1
        End If
        txtBuyer.Focus()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub
    Public Sub txtc()
        txtbill.Text = ""
        txtBuyer.Text = ""
        txtVatno.Text = ""
        txtCstno.Text = ""
        txtCustomername.Text = ""
        txtCustomeraddress.Text = ""
        txtInvoiceno.Text = ""
        txtDeliverynote.Text = ""
        txtSupplier.Text = ""
        txtOrderno.Text = ""
        txtSrno.Text = ""
        txtQuantity.Text = ""
        txtRate.Text = ""
        txtPer.Text = ""
        txtDiscount.Text = ""
        txtAmount.Text = ""
        txtTotal.Text = ""
        txtTermscondition.Text = ""
        txtPaymentmode.Text = ""
        txtRemark.Text = ""
    End Sub

    Public Sub txte()
        txtbill.Enabled = True
        txtBuyer.Enabled = True
        txtVatno.Enabled = True
        txtCstno.Enabled = True
        txtCustomername.Enabled = True
        txtCustomeraddress.Enabled = True
        txtInvoiceno.Enabled = True
        txtDeliverynote.Enabled = True
        txtSupplier.Enabled = True
        txtOrderno.Enabled = True
        txtSrno.Enabled = True
        txtQuantity.Enabled = True
        txtRate.Enabled = True
        txtPer.Enabled = True
        txtDiscount.Enabled = True
        txtAmount.Enabled = True
        txtTotal.Enabled = True
        txtTermscondition.Enabled = True
        txtPaymentmode.Enabled = True
        txtRemark.Enabled = True
    End Sub

    Public Sub txtd()
        txtbill.Enabled = False
        txtBuyer.Enabled = False
        txtVatno.Enabled = False
        txtCstno.Enabled = False
        txtCustomername.Enabled = False
        txtCustomeraddress.Enabled = False
        txtInvoiceno.Enabled = False
        txtDeliverynote.Enabled = False
        txtSupplier.Enabled = False
        txtOrderno.Enabled = False
        txtSrno.Enabled = False
        txtQuantity.Enabled = False
        txtRate.Enabled = False
        txtPer.Enabled = False
        txtDiscount.Enabled = False
        txtAmount.Enabled = False
        txtTotal.Enabled = False
        txtTermscondition.Enabled = False
        txtPaymentmode.Enabled = False
        txtRemark.Enabled = False
    End Sub


    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click
        Response.Redirect("EInVoice.aspx")
    End Sub
End Class
