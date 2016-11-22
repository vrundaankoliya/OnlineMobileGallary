Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class temp
    Inherits System.Web.UI.Page

    Public cn As New SqlConnection("Data Source=.;Initial Catalog=Mobile;Integrated Security=True")
    Public cmd As New SqlCommand("select Product_ID, Product_Name, Price from tblProductMaster", cn)
    Public da As New SqlDataAdapter(cmd)
    Public ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.Open()
        da.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
        cn.Close()

    End Sub

    Protected Sub Repeater1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles Repeater1.ItemCommand

    End Sub
End Class

