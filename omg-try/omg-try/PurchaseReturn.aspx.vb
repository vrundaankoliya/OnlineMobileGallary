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
        Response.Redirect("EPurchaseReturn.aspx")
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        obs.main()
        obs.cmd.CommandText = "select Max(Purchase_Id) from tblPurchaseReturn "
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtPurchaseID.Text = Val(obs.dr(0)) + 1
        Else
            txtPurchaseID.Text = 1
        End If

        Call txte()

        txtPurchaseDate.Focus()
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            If txtProductName.Text = "" And txtQuantity.Text = "" And txtPurchaseRate.Text Then
                MsgBox("Enter Proper")
                txtProductName.Focus()
            Else

                obs.cmd.CommandText = "insert into  tblPurchaseReturn values('" & txtPurchaseID.Text & "','" & txtPurchaseDate.Text & "','" & txtAgency.Text & "',' " & txtProductName.Text & " ','" & txtDescription.Text & "','" & txtAboutProduct.Text & "','" & txtQuantity.Text & "','" & txtPurchaseRate.Text & "' ,'" & txtReason.Text & "' ,'" & txtNeedResponce.Text & "' )  "
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
        txtPurchaseID.Text = ""
        txtPurchaseDate.Text = ""
        txtAgency.Text = ""
        txtProductName.Text = ""
        txtDescription.Text = ""
        txtAboutProduct.Text = ""
        txtQuantity.Text = ""
        txtPurchaseRate.Text = ""
        txtReason.Text = ""
        txtNeedResponce.Text = ""
    End Sub


    Public Sub txte()
        txtPurchaseID.Enabled = True
        txtPurchaseDate.Enabled = True
        txtAgency.Enabled = True
        txtProductName.Enabled = True
        txtDescription.Enabled = True
        txtAboutProduct.Enabled = True
        txtQuantity.Enabled = True
        txtPurchaseRate.Enabled = True
        txtReason.Enabled = True
        txtNeedResponce.Enabled = True

    End Sub

    Public Sub txtd()
        txtPurchaseID.Enabled = False
        txtPurchaseDate.Enabled = False
        txtAgency.Enabled = False
        txtProductName.Enabled = False
        txtDescription.Enabled = False
        txtAboutProduct.Enabled = False
        txtQuantity.Enabled = False
        txtPurchaseRate.Enabled = False
        txtReason.Enabled = False
        txtNeedResponce.Enabled = False
    End Sub



End Class
