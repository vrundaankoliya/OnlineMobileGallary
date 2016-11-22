Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Imports Microsoft.VisualBasic
Public Class clsConnection

    'Inherits System.Web.UI.Page

    'Public cn As New SqlConnection("Data Source=.;Initial Catalog=Mobile;Integrated Security=True")
    Public cn As New SqlConnection("Data Source=SAI-pc;Initial Catalog=MoBile;Integrated Security=True")
    Public cmd As New SqlCommand("select * from Mobile", cn)
    Public dr As SqlDataReader
    Public Sub main()
        If cn.State = Data.ConnectionState.Open Then cn.Close()
        cn.Open()
        'dr.Read()
        ' MsgBox("oepn")

    End Sub
End Class

