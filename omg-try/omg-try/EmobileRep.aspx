<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EmobileRep.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    </head>
    
<body>
    <form id="form1" runat="server">
   <div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="http://all-free-download.com/free-website-templates/">Advanced Search</a></div>
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/search.gif" class="search_bt"/>
    </div>
    <div class="languages">
      <div class="lang_text">Languages:</div>
      <a href="http://all-free-download.com/free-website-templates/" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="http://all-free-download.com/free-website-templates/" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
  </div>
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.png" alt="" border="0" width="237" height="140" /></a> </div>
    <div class="oferte_content">
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
      <div class="oferta">
        <div class="oferta_content"> <img src="images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          <div class="oferta_details">
            <div class="oferta_title">Samsung GX 2004 LM</div>
            <div class="oferta_text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco </div>
            <a href="details.html" class="details">details</a> </div>
        </div>
        <div class="oferta_pagination"> <span class="current">1</span> <a href="http://all-free-download.com/free-website-templates/">2</a> <a href="http://all-free-download.com/free-website-templates/">3</a> <a href="http://all-free-download.com/free-website-templates/">4</a> <a href="http://all-free-download.com/free-website-templates/">5</a> </div>
      </div>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
              <li><a href="dddindex.html" class="nav1"> Home</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav2">What's New? </a></li>
       
        
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">Accessories</a></li>
		  <li class="divider"></li>
        <li></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">Our Branches </a></li>
        <li class="divider"></li>
        <li><a href="MobileReview.aspx" class="nav5">Mobile Reviews </a></li>
        <li class="divider"></li>
		  <li class="divider"></li>
        <li></li>
        <li class="divider"></li>
        <li><a href="Comperm.aspx" class="nav4">Compare Mobile </a></li>
        
		<li class="divider"></li>
        <li><a href="contact.html" class="nav3">Contact Us </a></li>
       <li class="divider"></li>
        <li><a href="loginadmin.aspx" class="nav3">Log In </a></li>      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Register Of MobileRepairing</p>
        <table width="419" height="41" border="0">
          <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                        <div style ="width:740px;overflow:auto ;">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString3 %>" 
                                SelectCommand="SELECT * FROM [tblMobile Repairing]" 
                                ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [tblMobile Repairing] WHERE [Customer_Id] = @original_Customer_Id AND [Customer_Name] = @original_Customer_Name AND [Customer_Address] = @original_Customer_Address AND [Contact_No] = @original_Contact_No AND [MobilIMEI_NO] = @original_MobilIMEI_NO AND [Description_About_No] = @original_Description_About_No AND [Reason_For_Reparing] = @original_Reason_For_Reparing AND [Givining_Date] = @original_Givining_Date AND [Return_Date] = @original_Return_Date" 
                                InsertCommand="INSERT INTO [tblMobile Repairing] ([Customer_Id], [Customer_Name], [Customer_Address], [Contact_No], [MobilIMEI_NO], [Description_About_No], [Reason_For_Reparing], [Givining_Date], [Return_Date]) VALUES (@Customer_Id, @Customer_Name, @Customer_Address, @Contact_No, @MobilIMEI_NO, @Description_About_No, @Reason_For_Reparing, @Givining_Date, @Return_Date)" 
                                OldValuesParameterFormatString="original_{0}" 
                                UpdateCommand="UPDATE [tblMobile Repairing] SET [Customer_Name] = @Customer_Name, [Customer_Address] = @Customer_Address, [Contact_No] = @Contact_No, [MobilIMEI_NO] = @MobilIMEI_NO, [Description_About_No] = @Description_About_No, [Reason_For_Reparing] = @Reason_For_Reparing, [Givining_Date] = @Givining_Date, [Return_Date] = @Return_Date WHERE [Customer_Id] = @original_Customer_Id AND [Customer_Name] = @original_Customer_Name AND [Customer_Address] = @original_Customer_Address AND [Contact_No] = @original_Contact_No AND [MobilIMEI_NO] = @original_MobilIMEI_NO AND [Description_About_No] = @original_Description_About_No AND [Reason_For_Reparing] = @original_Reason_For_Reparing AND [Givining_Date] = @original_Givining_Date AND [Return_Date] = @original_Return_Date">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Customer_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Customer_Name" Type="String" />
                                    <asp:Parameter Name="original_Customer_Address" Type="String" />
                                    <asp:Parameter Name="original_Contact_No" Type="String" />
                                    <asp:Parameter Name="original_MobilIMEI_NO" Type="String" />
                                    <asp:Parameter Name="original_Description_About_No" Type="String" />
                                    <asp:Parameter Name="original_Reason_For_Reparing" Type="String" />
                                    <asp:Parameter Name="original_Givining_Date" Type="DateTime" />
                                    <asp:Parameter Name="original_Return_Date" Type="DateTime" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Customer_Name" Type="String" />
                                    <asp:Parameter Name="Customer_Address" Type="String" />
                                    <asp:Parameter Name="Contact_No" Type="String" />
                                    <asp:Parameter Name="MobilIMEI_NO" Type="String" />
                                    <asp:Parameter Name="Description_About_No" Type="String" />
                                    <asp:Parameter Name="Reason_For_Reparing" Type="String" />
                                    <asp:Parameter Name="Givining_Date" Type="DateTime" />
                                    <asp:Parameter Name="Return_Date" Type="DateTime" />
                                    <asp:Parameter Name="original_Customer_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Customer_Name" Type="String" />
                                    <asp:Parameter Name="original_Customer_Address" Type="String" />
                                    <asp:Parameter Name="original_Contact_No" Type="String" />
                                    <asp:Parameter Name="original_MobilIMEI_NO" Type="String" />
                                    <asp:Parameter Name="original_Description_About_No" Type="String" />
                                    <asp:Parameter Name="original_Reason_For_Reparing" Type="String" />
                                    <asp:Parameter Name="original_Givining_Date" Type="DateTime" />
                                    <asp:Parameter Name="original_Return_Date" Type="DateTime" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Customer_Id" Type="Int32" />
                                    <asp:Parameter Name="Customer_Name" Type="String" />
                                    <asp:Parameter Name="Customer_Address" Type="String" />
                                    <asp:Parameter Name="Contact_No" Type="String" />
                                    <asp:Parameter Name="MobilIMEI_NO" Type="String" />
                                    <asp:Parameter Name="Description_About_No" Type="String" />
                                    <asp:Parameter Name="Reason_For_Reparing" Type="String" />
                                    <asp:Parameter Name="Givining_Date" Type="DateTime" />
                                    <asp:Parameter Name="Return_Date" Type="DateTime" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
                &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Width="905px">
                                <Columns>
                                    <asp:BoundField DataField="Customer_Id" HeaderText="Customer_Id" 
                                        ReadOnly="True" SortExpression="Customer_Id" />
                                    <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" 
                                        SortExpression="Customer_Name" />
                                    <asp:BoundField DataField="Customer_Address" HeaderText="Customer_Address" 
                                        SortExpression="Customer_Address" />
                                    <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                                        SortExpression="Contact_No" />
                                    <asp:BoundField DataField="MobilIMEI_NO" HeaderText="MobilIMEI_NO" 
                                        SortExpression="MobilIMEI_NO" />
                                    <asp:BoundField DataField="Description_About_No" 
                                        HeaderText="Description_About_No" SortExpression="Description_About_No" />
                                    <asp:BoundField DataField="Reason_For_Reparing" 
                                        HeaderText="Reason_For_Reparing" SortExpression="Reason_For_Reparing" />
                                    <asp:BoundField DataField="Givining_Date" HeaderText="Givining_Date" 
                                        SortExpression="Givining_Date" />
                                    <asp:BoundField DataField="Return_Date" HeaderText="Return_Date" 
                                        SortExpression="Return_Date" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            </td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p><asp:Button ID="btnexcel" runat="server" Text="Excel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;&nbsp;
                    <asp:Button ID="btnprint" runat="server" Text="Print" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> <br />
        </p>
      </div>
      </div>
     </div>
    <!-- end of center content -->
    <!-- end of right content -->
   </div>
   <!-- end of main content -->
   </div>
   <!-- end of main_container -->
    </form>
</body>
</html>
