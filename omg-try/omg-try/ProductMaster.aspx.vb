Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean
    'Dim str As String
    Public obs As New clsConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtproductID.Focus()

        obs.main()
        Call txtd()

    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Call txte()
        Call txtc()
        obs.main()
        obs.cmd.CommandText = "select max(Product_ID) from tblProductMaster"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtproductID.Text = Val(obs.dr(0)) + 1
        Else
            txtproductID.Text = 1
        End If
        cmbCompany.Focus()
    End Sub

    

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Call txtc()
        Call txtd()
    End Sub


    Public Sub txtc()
        txtproductID.Text = ""
        'cmbCompany.Text = ""
        txtProductName.Text = ""
        txtmodel.Text = ""
        txtprice.Text = ""
        txt2G.Text = ""
        txt3G.Text = ""
        txtweight.Text = ""
        txtsize.Text = ""
        txtloudspeaker.Text = ""
        txtImemory.Text = ""
        txtEmemory.Text = ""
        txtgprs.Text = ""
        txtwlan.Text = ""
        txtbluetooth.Text = ""
        txtusb.Text = ""
        txtPcamera.Text = ""
        Txtvidon.Text = ""
        TxtMplay.Text = ""
        Txtosn.Text = ""
        Txtgamesn.Text = ""
        Txtgamesn.Text = ""
        Txtcolorn.Text = ""
        txtqty.Text = ""
        txtDualSim.Text = ""

        txtotherFeatures.Text = ""




    End Sub

    Public Sub txte()
        txtproductID.Enabled = True
        cmbCompany.Enabled = True
        txtProductName.Enabled = True
        txtmodel.Enabled = True
        txtprice.Enabled = True
        txt2G.Enabled = True
        txt3G.Enabled = True
        txtweight.Enabled = True
        txtsize.Enabled = True
        txtloudspeaker.Enabled = True
        txtImemory.Enabled = True
        txtEmemory.Enabled = True
        txtgprs.Enabled = True
        txtwlan.Enabled = True
        txtbluetooth.Enabled = True
        txtusb.Enabled = True
        txtPcamera.Enabled = True
        Txtvidon.Enabled = True
        TxtMplay.Enabled = True
        Txtosn.Enabled = True
        Txtgamesn.Enabled = True
        '   Txtgamesn.Enabled = True
        Txtcolorn.Enabled = True
        txtqty.Enabled = True
        txtDualSim.Enabled = True
        'txtqwerty.Enabled = True
        txtotherFeatures.Enabled = True

    End Sub

    Public Sub txtd()
        txtproductID.Enabled = False
        cmbCompany.Enabled = False
        txtProductName.Enabled = False
        txtmodel.Enabled = False
        txtprice.Enabled = False
        txt2G.Enabled = False
        txt3G.Enabled = False
        txtweight.Enabled = False
        txtsize.Enabled = False
        txtloudspeaker.Enabled = False
        txtImemory.Enabled = False
        txtEmemory.Enabled = False
        txtgprs.Enabled = False
        txtwlan.Enabled = False
        txtbluetooth.Enabled = False
        txtusb.Enabled = False
        txtPcamera.Enabled = False
        Txtvidon.Enabled = False
        TxtMplay.Enabled = False
        Txtosn.Enabled = False
        Txtgamesn.Enabled = False
        Txtgamesn.Enabled = False
        Txtcolorn.Enabled = False
        txtqty.Enabled = False
        txtDualSim.Enabled = False
        'txtqwerty.Enabled = False
        txtotherFeatures.Enabled = False
    End Sub


    
    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            obs.main()
            obs.cmd.CommandText = "insert into tblProductMaster values('" & txtproductID.Text & "','" & cmbCompany.Text & "','" & txtProductName.Text & "','" & txtmodel.Text & "','" & txtprice.Text & "','" & txt2G.Text & "','" & txt3G.Text & "','" & txtweight.Text & "','" & txtsize.Text & "','" & txtloudspeaker.Text & "','" & txtImemory.Text & "','" & txtEmemory.Text & "','" & txtDualSim.Text & "','" & txtotherFeatures.Text & "','" & txtgprs.Text & "','" & txtwlan.Text & "','" & txtbluetooth.Text & "','" & txtusb.Text & "','" & txtPcamera.Text & "','" & Txtvidon.Text & "','" & TxtMplay.Text & "','" & Txtosn.Text & "','" & Txtradion.Text & "','" & Txtgamesn.Text & "','" & Txtcolorn.Text & "','" & txtqty.Text & "') "
            obs.cmd.ExecuteNonQuery()
            MsgBox("save")

        Catch ex As Exception
            MsgBox(ex)
        End Try

    End Sub

    Protected Sub btncancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel0.Click
        Response.Redirect("EProdmaster.aspx")
    End Sub
End Class
