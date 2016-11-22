
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub
    Private Function GetData() As DataTable
        ' Declarations  
        Dim dt As New DataTable
        Dim dr As DataRow

        ' Add some columns  
        dt.Columns.Add("Column1")
        dt.Columns.Add("Column2")

        ' Add some test data  
        For i As Integer = 0 To 10
            dr = dt.NewRow
            dr("Column1") = i
            dr("Column2") = "Some Text " & (i * 5)
            dt.Rows.Add(dr)
        Next

        ' Return the DataTable  
        Return dt
    End Function



    Protected Sub btnexcel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnexcel.Click
        ' Clear the response  
        Response.Clear()

        ' Set the type and filename  
        Response.AddHeader("content-disposition", "attachment;filename=FileName.xls")
        Response.Charset = ""
        Response.ContentType = "application/vnd.xls"

        ' Add the HTML from the GridView to a StringWriter so we can write it out later  
        Dim sw As System.IO.StringWriter = New System.IO.StringWriter
        Dim hw As System.Web.UI.HtmlTextWriter = New HtmlTextWriter(sw)
        GridView1.RenderControl(hw)

        ' Write out the data  
        Response.Write(sw.ToString)
        Response.End()
    End Sub
End Class
