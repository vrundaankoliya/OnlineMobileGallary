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

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
       



        Try

            If TxtSdate.Text = "" And txtSproductname.Text = "" And txtSdescription.Text = "" Then


                MsgBox("Enter Proper")
                TxtSdate.Focus()

            Else

                obs.cmd.CommandText = "insert into tblShopSupplyReturn values('" & txtId.Text & "','" & TxtSdate.Text & "','" & txtSproductname.Text & "','" & txtScontactno.Text & "','" & txtSquantity.Text & "','" & txtSdescription.Text & "' )  "
                obs.cmd.ExecuteReader()
                MsgBox("save")
                Call txtc()
                Call txtd()


            End If

           
        Catch ex As Exception
            MsgBox(ex)
        End Try
    End Sub

    'Public Sub txte()
    '    txtId.Enabled = True
    '    txtProductname.Enabled = True
    '    txtPurchasedate.Enabled = True
    '    txtAgencyname.Enabled = True
    '    txtProductname.Enabled = True
    '    txtQuentity.Enabled = True
    '    txtDescription.Enabled = True
    'End Sub



    'Public Sub txtd()
    '    txtId.Enabled = False
    '    txtProductname.Enabled = False
    '    txtPurchasedate.Enabled = False
    '    txtAgencyname.Enabled = False
    '    txtProductname.Enabled = False
    '    txtQuentity.Enabled = False
    '    txtDescription.Enabled = False
    'End Sub
    'values('" & txtId.Text & "','" & txtPurchasedate.Text & "','" & txtAgencyname.Text & "','" & txtProductname.Text & "','" & txtDescription.Text & "','" & txtQuentity.Text & "','" & txtPurchaserate.Text & "'  )"
    '            obs.cmd.ExecuteReader()
    '            MsgBox("save")
    '            Call txtc()
    '            Call txtd()

    '        Catch ex As Exception
    '            MsgBox(ex)
    '        End Try
    '    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call txte()

        obs.main()
        obs.cmd.CommandText = "select max(Purchase_Id) from tblPurchaseGoods"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtId.Text = Val(obs.dr(0)) + 1
        Else
            txtId.Text = 1
        End If
        TxtSdate.Focus()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub
    Public Sub txtc()
        'txtId.Text = ""
        'txtProductname.Text = ""
        'txtPurchasedate.Text = ""
        'txtAgencyname.Text = ""
        'txtProductname.Text = ""
        'txtQuentity.Text = ""
        'txtDescription.Text = ""
    End Sub

    Public Sub txte()
        'txtId.Enabled = True
        'txtProductname.Enabled = True
        'txtPurchasedate.Enabled = True
        'txtAgencyname.Enabled = True
        'txtProductname.Enabled = True
        'txtQuentity.Enabled = True
        'txtDescription.Enabled = True
    End Sub



    Public Sub txtd()
        'txtId.Enabled = False
        'txtProductname.Enabled = False
        'txtPurchasedate.Enabled = False
        'txtAgencyname.Enabled = False
        'txtProductname.Enabled = False
        'txtQuentity.Enabled = False
        'txtDescription.Enabled = False
    End Sub

    Protected Sub btnsave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave0.Click
        Response.Redirect("EShopSupplyReturn.aspx")
    End Sub
End Class
