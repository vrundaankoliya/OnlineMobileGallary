Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection
Partial Class _Default
    Inherits System.Web.UI.Page

    Public obs As New clsConnection
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean
    Dim teps As Integer



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obs.main()
        Call max()

        'Call ins()

    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        Call im1()
        Call ins()
        Txttot.Text = txtPrice.Text
        teps = Val(Txttot.Text)
        MsgBox(teps)
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
    'Public Sub im2()
    '    Try

    '        obs.main()

    '        obs.cmd.CommandText = "select * from tblimges where Model_no='" & DropDownList3.SelectedValue & "'"
    '        obs.dr = obs.cmd.ExecuteReader
    '        obs.dr.Read()



    'While Dr.Read
    ' If DropDownList4.SelectedItem.Selected = True Then

    'Image2.Visible = True
    'Image2.ImageUrl = obs.dr("Strp")
    'MsgBox(Image2.ImageUrl)
    'Else
    'Image2.Visible = False
    'End If


    '    Catch ex As Exception

    '        MsgBox(ex)
    '    End Try




    'End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label1.Visible = True
        Label1.Text = DropDownList1.SelectedItem.Text
    End Sub


    Protected Sub btnbuynow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbuynow.Click



        Try
            Call obs.main()
            obs.cmd.CommandText = "insert into tblbuynow2 values('" & txtID.Text & "','" & DropDownList1.Text & "','" & DropDownList3.Text & "','" & Image1.ImageUrl & "','" & txtPrice.Text & "','" & txtcolor.Text & "','" & txtOS.Text & "','" & txtcamera.Text & "','" & Txttot.Text & "' )  "
            obs.cmd.ExecuteNonQuery()
            MsgBox("save")
            'Call txtc()
            'Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try



        Dim i As Integer

        For i = 1 To 1

            MsgBox(i)
            'btnbuy.Text = i
            Label2.Text = i

        Next

        MsgBox("Item is Successfully add in Cart")


        Response.Redirect("ViewCart.aspx")
    End Sub



    Public Sub ins()
        Try
            obs.main()

            obs.cmd.CommandText = "select * from tblProductMaster where Model_no='" & DropDownList3.SelectedValue & "'"
            obs.dr = obs.cmd.ExecuteReader
            obs.dr.Read()


            'Dim I As Int16 = 0

            'While obs.dr.Read
            txtPrice.Text = (obs.dr("Price"))
            txtcolor.Text = (obs.dr("Color"))
            txtOS.Text = (obs.dr("Os"))
            txtcamera.Text = (obs.dr("Cemera"))

        Catch ex As Exception
            MsgBox(ex)
        End Try

        ' End While
        'dr.Close()


    End Sub


    Public Sub max()
        obs.main()
        obs.cmd.CommandText = "select max(ID) from tblbuynow2"
        obs.dr = obs.cmd.ExecuteReader
        obs.dr.Read()

        If obs.dr(0).ToString <> "" Then
            txtID.Text = Val(obs.dr(0)) + 1
        Else
            txtID.Text = 1
        End If
        'DropDownList1.Focus()
    End Sub

    Protected Sub Txttot_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttot.TextChanged

    End Sub

    Protected Sub txtPrice_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtPrice.TextChanged

    End Sub
End Class
