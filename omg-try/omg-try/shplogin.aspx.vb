Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection
Partial Class _Default
    Inherits System.Web.UI.Page
    'Public cn As New SqlConnection("data source=ABC-PC;Initial catalog=Mobile;Integrated security=True")
    'Public cmd As New SqlCommand("select * from logs", cn)
    'Public dr As SqlDataReader
    Public ob As New clsConnection
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ob.main()
        TxtUname.Focus()
    End Sub

    Protected Sub Txtname_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtUname.TextChanged
        '   TxtUname.Focus()
    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        'ob.main()
        'ob.cmd.CommandText = "select * from tblShopMaster where Shop_Name=' " & TxtUname.Text & "'And SPassword='" & Txtpass.Text & "'  "
        'Session("UserName") = TxtUname.Text
        'Response.Redirect("welShop.aspx")


        If TxtUname.Text = "" And Txtpass.Text = "" Then
            MsgBox("&nbsp;&nbsp; Please Enter User Name And Password.")
            Label3.Visible = True


        Else
            'ob.cn.Open()
            ' Call main()
            ob.cmd.CommandText = "Select * from tblShopMaster Where Shop_Name='" & TxtUname.Text & "' And SPassword='" & Txtpass.Text & "' "
            ob.dr = ob.cmd.ExecuteReader
            If ob.dr.HasRows = False Then
                'Validate.InnerHtml = "&nbsp;&nbsp; Invalid User Name Or Password Or Area Code."
                MsgBox("not match")
                Label4.Visible = True
                Exit Sub
            Else
                Session("UserName") = TxtUname.Text
                'Session("AreaCode") = txtACode.Text
                Session("Pass") = Txtpass.Text
                ' 
                MsgBox("Welcome")
                Call txtc()
                Response.Redirect("welShop.aspx")
            End If
        End If








    End Sub

    'Public Sub main()
    '    If cn.State = 1 Then cn.Close()
    '    cn.Open()
    'End Sub


    Public Sub txtc()
        TxtUname.Text = ""
        Txtpass.Text = ""
        TxtUname.Text = ""
        Txtpass.Text = ""
    End Sub

End Class
