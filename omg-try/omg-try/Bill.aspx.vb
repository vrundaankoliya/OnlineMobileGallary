Imports System.Data.SqlClient
Imports System.IO
Imports clsConnection

Partial Class _Default
    Inherits System.Web.UI.Page
    Public ob As New clsConnection

    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

   
    'Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    'End Sub

    'Private Function GetData() As DataTable
    '    ' Declarations  
    '    Dim dt As New DataTable
    '    Dim dr As DataRow

    '    ' Add some columns  
    '    dt.Columns.Add("Column1")
    '    dt.Columns.Add("Column2")

    '    ' Add some test data  
    '    For i As Integer = 0 To 10
    '        dr = dt.NewRow
    '        dr("Column1") = i
    '        dr("Column2") = "Some Text " & (i * 5)
    '        dt.Rows.Add(dr)
    '    Next

    '    ' Return the DataTable  
    '    Return dt
    'End Function




    'Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ob.main()



        'Call main()
        ob.cmd.CommandText = "Select * from tblCustomerSignUP Where UserName='" & Session("UserName") & "' And Password='" & Session("Password") & "'"
        ob.dr = ob.cmd.ExecuteReader
        ' lblname.Text = Session("Username")
        ob.dr.Close()
        ob.main()
        ob.cmd.CommandText = "select * from tblCustomerSignUP where UserName='" & Session("UserName") & "' "
        ob.dr = ob.cmd.ExecuteReader
        ob.dr.Read()


        lblname.Text = (ob.dr("CName"))
        lbladd.Text = (ob.dr("Address"))
        lblcountry.Text = (ob.dr("Country"))
        lblstate.Text = (ob.dr("State"))
        lblcity.Text = (ob.dr("City"))
        lblEmail.Text = (ob.dr("EMail_Address"))
        lblphno.Text = (ob.dr("PhoneNo"))
        lblmob.Text = (ob.dr("MobileNo"))

        ob.dr.Close()
        ob.main()

        ob.cmd.CommandText = "select max(ID) from tblbuynow2  "
        ob.dr = ob.cmd.ExecuteReader
        ob.dr.Read()


        If ob.dr(0).ToString <> "" Then
            lblnop.Text = Val(ob.dr(0))
        
        End If

        ob.dr.Close()
        ob.main()

        ob.cmd.CommandText = "select * from tblbuynow2  "
        ob.dr = ob.cmd.ExecuteReader

        Dim i As Int16 = 0
        Dim j As Int16 = 0
        While ob.dr.Read

            j = ob.dr("Price")

            lbltot.Text = j + Val(lbltot.Text)

            i += 1
        End While
        ob.dr.Close()

    End Sub

    'Protected Sub txtaddress_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtaddress.TextChanged

    'End Sub

    'Protected Sub btnbuynow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbuynow.Click
    '    If lblname.Text = "" And lbladd.Text = "" And lblcountry.Text = "" And lblstate.Text = "" And lblcity.Text = "" And lblEmail.Text = "" And lblphno.Text = "" And lblmob.Text = "" Then
    '        MsgBox("&nbsp;&nbsp; Please Enter  Name.")

    'Else
    'ob.cn.Open()
    ' Call main()
    ' ob.cmd.CommandText = "Select * from tblCustomerSignUP1 Where Name='" & lblname.Text & "' And Address= '" & lbladd.Text & "'And Country='" & lblcountry.Text & "' And State='" & lblstate & "' And City='" & lblcity & "'And Email='" & lblEmail & "'And PhoneNo='" & lblphno & "'And MobileNo='" & lblmob & "'  "

    'obs.cmd.CommandText = "insert into  tblCustomerSignUP values('" & lblname.Text & "',' " & lbladd.Text " ','" & lblcountry.Text & "','" lblstate.Text & "','" & cmbCountry.Text & "' ,'" & cmbstate.Text & "' ,'" & cmbcity.Text & "','" & txtemail.Text & "','" & txtPhNo.Text & "','" & txtMoNo.Text & "','" & txtUserName.Text & "','" & txtPassword.Text & "','" & txtConPassword.Text & "' )  "
    '        ob.dr = ob.cmd.ExecuteReader

    '    End If

    'End Sub

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        Try
            ob.cmd.CommandText = "insert into tblshipping values('" & txtname.Text & "','" & txtaddress.Text & "','" & cmbcity.Text & "','" & txtemail.Text & "','" & txtphoneno.Text & "','" & txtmono.Text & "' )  "
            ob.cmd.ExecuteReader()
            MsgBox("save")
            Call txtc()
            Call txtd()

        Catch ex As Exception
            MsgBox(ex)
        End Try
    End Sub
    Public Sub txtc()

        txtName.Text = ""
        txtaddress.Text = ""
        cmbcity.Text = ""
        txtemail.Text = ""
        txtphoneno.Text = ""
        txtmono.Text = ""
        
    End Sub

    Public Sub txte()
        txtname.Enabled = True
        txtaddress.Enabled = True
        cmbcity.Enabled = True
        txtemail.Enabled = True
        txtphoneno.Enabled = True
        txtmono.Enabled = True



    End Sub



    Public Sub txtd()
        txtname.Enabled = False
        txtaddress.Enabled = False
        cmbcity.Enabled = False
        txtemail.Enabled = False
        txtphoneno.Enabled = False
        txtmono.Enabled = False

    End Sub
End Class
