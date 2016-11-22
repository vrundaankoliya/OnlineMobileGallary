Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Public obs As New clsConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtshopId.Focus()
    End Sub

    Protected Sub Txtpasswrd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtdate.TextChanged

    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click

        Try

            If txtdate.Text = "" And txtme.Text = "" And txtmrp.Text = "" Then


                MsgBox("Enter Proper")
                txtdate.Focus()

            Else
                obs.main()
                obs.cmd.CommandText = "insert into tblSupplyGoodstoShopes values('" & txtshopId.Text & "','" & txtdate.Text & "','" & txtme.Text & "','" & txtpname.Text & "','" & txtquantity.Text & "','" & txtmrp.Text & "' )  "
                obs.cmd.ExecuteReader()
                MsgBox("save")
                ' Call txtc()
                ' Call txtd()


            End If


        Catch ex As Exception
            MsgBox(ex)
        End Try



    End Sub

    Protected Sub btnsave0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave0.Click
        Response.Redirect("ESupplyGoodstoShop.aspx")
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        obs.main()
        obs.cmd.CommandText = "select max(Shop_Id) from tblSupplyGoodstoShopes"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtshopId.Text = Val(obs.dr(0)) + 1
        Else
            txtshopId.Text = 1
        End If
        txtshopId.Focus()
    End Sub
End Class
