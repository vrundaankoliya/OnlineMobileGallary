Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection
Partial Class _Default
    Inherits System.Web.UI.Page
    'Public cn As New SqlConnection("data source=ABC-PC;Initial catalog=Mobile;Integrated security=True")
    'Public cmd As New SqlCommand("select * from logs", cn)
    'Public dr As SqlDataReader
    Public obs As New clsConnection
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obs.main()


    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        Call im1()
        FormView2.Visible = True
    End Sub

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
        Call im2()
        FormView1.Visible = True
    End Sub

    Public Sub im1()
        Try
            obs.main()

            obs.cmd.CommandText = "select * from tblimges where Model_no='" & DropDownList3.SelectedValue & "'"
            obs.dr = obs.cmd.ExecuteReader
            obs.dr.Read()
            'While Dr.Read
            Image1.Visible = True


            Image1.ImageUrl = obs.dr("Strp")
            MsgBox(Image1.ImageUrl)
        Catch ex As Exception
            'MsgBox(ex)
        End Try
       
        ' End While
        'dr.Close()

    End Sub
    Public Sub im2()
        Try

            obs.main()

            obs.cmd.CommandText = "select * from tblimges where Model_no='" & DropDownList4.SelectedValue & "'"
            obs.dr = obs.cmd.ExecuteReader
            obs.dr.Read()
            'While Dr.Read
            ' If DropDownList4.SelectedItem.Selected = True Then

            Image2.Visible = True
            Image2.ImageUrl = obs.dr("Strp")
            MsgBox(Image2.ImageUrl)
            'Else
            'Image2.Visible = False
            'End If


        Catch ex As Exception

            MsgBox(ex)
        End Try


        
       
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label1.Visible = True
        Label1.Text = DropDownList1.SelectedItem.Text
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Label2.Visible = True
        Label2.Text = DropDownList2.SelectedItem.Text
    End Sub

   
 
End Class
