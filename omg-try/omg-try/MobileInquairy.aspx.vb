
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Txtname.Focus()
    End Sub

    Protected Sub Txtpasswrd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtaddress.TextChanged

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click

    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click

    End Sub

    Protected Sub btncancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel0.Click
        Response.Redirect("EmobileInq.aspx")

    End Sub
End Class
