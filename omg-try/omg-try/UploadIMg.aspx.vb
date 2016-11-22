Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Imports clsConnection
Partial Class _Default
    Inherits System.Web.UI.Page
    'Public cn As New SqlConnection("data source=ABC-PC;Initial catalog=Mobile;Integrated security=True")
    'Public cmd As New SqlCommand("select * from logs", cn)
    'Public dr As SqlDataReader
    Public obs As New clsConnection
    'Dim Savemode As Boolean
    'Dim Editmode As Boolean
    'Dim Deletemode As Boolean
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        obs.main()


        'TxtUname.Focus()
    End Sub



    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        obs.main()
        My.Computer.FileSystem.CreateDirectory("Uploads")
        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" & _
                 FileUpload1.FileName))
        str = "~/Uploads/" & _
                FileUpload1.FileName
        'MsgBox(str)
        'obs.cmd.CommandText = "insert into tblimges values('" & txtid.Text & "','" & drpcmp.SelectedValue & "','" & drpmod.SelectedValue & "','" & str & "')"
        obs.cmd.CommandText = "insert into tblimges values('" & txtid.Text & "','" & drpcmp.SelectedValue & "','" & drpmod.SelectedValue & "','" & str & "')     "
        obs.cmd.ExecuteNonQuery()
        'TextBox1.Text = ""
        MsgBox("Upload")
    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub Btnadd_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click


        obs.main()

        obs.cmd.CommandText = "select max(Id) from tblimges"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtid.Text = Val(obs.dr(0)) + 1
        Else
            txtid.Text = 1
        End If

    End Sub

    Public Sub txtd()
        txtid.Enabled = False
        drpcmp.Enabled = False
        drpmod.Enabled = False
        FileUpload1.Enabled = False

    End Sub

    Public Sub txte()
        txtid.Enabled = True
        drpcmp.Enabled = True
        drpmod.Enabled = True
        FileUpload1.Enabled = True

    End Sub

End Class
