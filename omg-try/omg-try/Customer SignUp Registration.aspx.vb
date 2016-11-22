Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim Savemode As Boolean
    Dim Editmode As Boolean
    Dim Deletemode As Boolean

    Public obs As New clsConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obs.main()
    End Sub



    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If txtname.Text = "" Then
            MsgBox("Please Enter  Name")
            Return
        End If


        If txtAddress.Text = "" Then
            MsgBox("Please Enter  Address")
            txtname.Focus()
            Return
        End If


        If txtUserName.Text = "" Then
            MsgBox("Please Enter  Username")
            txtname.Focus()
            Return
        End If



        If txtPassword.Text = txtConPassword.Text Then

            'End If
            Try
                Dim d As Integer
                Dim m As String
                Dim y As Integer
                Dim A As String


                d = cmbDD.Text
                m = cmbMM.Text
                y = cmbY.Text
                A = d & m & y
                MsgBox(A)

                'If txtname.Text = "" And txtPassword.Text = "" And txtUserName.Text Then
                '    MsgBox("Enter Proper")
                '    txtPassword.Focus()
                ' Else
                '                                                                                   1                   2               3                       4                           5                           6                   7                       8                       9                       10                      11                      12                              13                  
                obs.cmd.CommandText = "insert into  tblCustomerSignUP values('" & txtname.Text & "',' " & A & " ','" & cmbgender.Text & "','" & txtAddress.Text & "','" & cmbCountry.Text & "' ,'" & cmbState.Text & "' ,'" & CmbCity.Text & "','" & txtEmail.Text & "','" & txtPhNo.Text & "','" & txtMoNo.Text & "','" & txtUserName.Text & "','" & txtPassword.Text & "' )  "
                obs.cmd.ExecuteNonQuery()
                MsgBox("save")
                'Call txtc()
                Call txtd()

                'End If


            Catch ex As Exception
                MsgBox(ex)
            End Try
        Else
            MsgBox("Password and confirm password are not same..!!!")
        End If
    End Sub
    Public Sub txtc()
        txtname.Text = ""
        cmbDD.Text = ""
        cmbMM.Text = ""
        cmbY.Text = ""
        cmbgender.Text = ""
        txtAddress.Text = ""
        cmbCountry.Text = ""
        cmbState.Text = ""
        CmbCity.Text = ""
        txtEmail.Text = ""
        txtPhNo.Text = ""
        txtMoNo.Text = ""
        txtUserName.Text = ""
        txtPassword.Text = ""
        txtConPassword.Text = ""

    End Sub

    Public Sub txtd()
        txtname.Enabled = False
        cmbDD.Enabled = False
        cmbMM.Enabled = False
        cmbY.Enabled = False
        cmbgender.Enabled = False
        txtAddress.Enabled = False
        cmbCountry.Enabled = False
        cmbState.Enabled = False
        CmbCity.Enabled = False
        txtEmail.Enabled = False
        txtPhNo.Enabled = False
        txtMoNo.Enabled = False
        txtUserName.Enabled = False
        txtPassword.Enabled = False
        txtConPassword.Enabled = False
    End Sub


    Public Sub txte()
        txtname.Enabled = True
        cmbDD.Enabled = True
        cmbMM.Enabled = True
        cmbY.Enabled = True
        cmbgender.Enabled = True
        txtAddress.Enabled = True
        cmbCountry.Enabled = True
        cmbState.Enabled = True
        CmbCity.Enabled = True
        txtEmail.Enabled = True
        txtPhNo.Enabled = True
        txtMoNo.Enabled = True
        txtUserName.Enabled = True
        txtPassword.Enabled = True
        txtConPassword.Enabled = True
    End Sub


    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReset.Click
        Call txtc()
    End Sub

    Protected Sub txtUserName_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtUserName.TextChanged

    End Sub
End Class
