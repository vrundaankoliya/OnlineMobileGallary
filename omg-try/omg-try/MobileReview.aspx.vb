Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'TxtcustId.Focus()
        obs.main()
    End Sub

    'Protected Sub Txtpasswrd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcustName.TextChanged

    'End Sub

    'Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
    '    Response.Redirect("EmobileRep.aspx")
    'End Sub

    'Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click

    'End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try
            If txtname.Text = "" And txtEmail.Text = "" Then
                MsgBox("Enter Proper")
                txtname.Focus()
            Else

                obs.cmd.CommandText = "insert into  tblReview values('" & cmbBrand.Text & "','" & cmbproduct.Text & "','" & txtname.Text & "',' " & txtEmail.Text & " ','" & txtReview.Text & "'  )  "
                obs.cmd.ExecuteNonQuery()

                MsgBox("save")
                Call txtc()
                Call txtd()
                'Call Page_Load()
                Response.Redirect("MobileReview.aspx")
            End If


        Catch ex As Exception
            'MsgBox(ex)
        End Try

    End Sub

    Protected Sub txtReview_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtReview.TextChanged

    End Sub

    Protected Sub cmbproduct_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbproduct.SelectedIndexChanged

    End Sub

    Protected Sub cmbBrand_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbBrand.SelectedIndexChanged

    End Sub
    Public Sub txte()
        cmbBrand.Enabled = True
        cmbproduct.Enabled = True
        txtname.Enabled = True
        txtEmail.Enabled = True
        txtReview.Enabled = True
       
    End Sub
    Public Sub txtc()
        cmbBrand.Text = ""
        cmbproduct.Text = ""
        txtname.Text = ""
        txtEmail.Text = ""
        txtReview.Text = ""

    End Sub
    Public Sub txtd()
        cmbBrand.Enabled = False
        txtName.Enabled = False
        cmbproduct.Enabled = False
        txtEmail.Enabled = False
        txtReview.Enabled = False

       
    End Sub

    Protected Sub txtEmail_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtEmail.TextChanged

    End Sub
End Class
