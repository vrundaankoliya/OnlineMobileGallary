<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EProdmaster.aspx.vb" Inherits="_Default" %>

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
        .style2
        {
            width: 846px;
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
        <li><a href="loginadmin.aspx" class="nav3">Log In </a></li>
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Register Of ProductMaster<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Height="452px" Width="1839px">
                                <Columns>
                                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" 
                                        SortExpression="Product_ID" />
                                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                                        SortExpression="Company_Name" />
                                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                                        SortExpression="Product_Name" />
                                    <asp:BoundField DataField="Model_no" HeaderText="Model_no" 
                                        SortExpression="Model_no" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="2G_Network" HeaderText="2G_Network" 
                                        SortExpression="2G_Network" />
                                    <asp:BoundField DataField="3G_Network" HeaderText="3G_Network" 
                                        SortExpression="3G_Network" />
                                    <asp:BoundField DataField="Weight" HeaderText="Weight" 
                                        SortExpression="Weight" />
                                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                                    <asp:BoundField DataField="LoudSpeaker" HeaderText="LoudSpeaker" 
                                        SortExpression="LoudSpeaker" />
                                    <asp:BoundField DataField="Internal_Memory" HeaderText="Internal_Memory" 
                                        SortExpression="Internal_Memory" />
                                    <asp:BoundField DataField="External_Memory" HeaderText="External_Memory" 
                                        SortExpression="External_Memory" />
                                    <asp:BoundField DataField="GPRS" HeaderText="GPRS" SortExpression="GPRS" />
                                    <asp:BoundField DataField="WLAN" HeaderText="WLAN" SortExpression="WLAN" />
                                    <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
                                        SortExpression="Bluetooth" />
                                    <asp:BoundField DataField="USB" HeaderText="USB" SortExpression="USB" />
                                    <asp:BoundField DataField="Primary_camera" HeaderText="Primary_camera" 
                                        SortExpression="Primary_camera" />
                                    <asp:BoundField DataField="Features" HeaderText="Features" 
                                        SortExpression="Features" />
                                    <asp:BoundField DataField="Video" HeaderText="Video" SortExpression="Video" />
                                    <asp:BoundField DataField="Music_Play" HeaderText="Music_Play" 
                                        SortExpression="Music_Play" />
                                    <asp:BoundField DataField="OS" HeaderText="OS" SortExpression="OS" />
                                    <asp:BoundField DataField="Radio" HeaderText="Radio" SortExpression="Radio" />
                                    <asp:BoundField DataField="Games" HeaderText="Games" SortExpression="Games" />
                                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                    <asp:BoundField DataField="Dual_SIM" HeaderText="Dual_SIM" 
                                        SortExpression="Dual_SIM" />
                                    <asp:BoundField DataField="QWERTY" HeaderText="QWERTY" 
                                        SortExpression="QWERTY" />
                                    <asp:BoundField DataField="QWERTY" HeaderText="QWERTY" 
                                        SortExpression="QWERTY" />
                                    <asp:BoundField DataField="Other_Features" HeaderText="Other_Features" 
                                        SortExpression="Other_Features" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            </p>
        <table width="419" height="41" border="0">
          <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                        <div style ="width:740px;overflow:auto ;">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString2 %>" 
                                SelectCommand="SELECT * FROM [tblProductMaster]">
                            </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
            &nbsp;<asp:Button ID="btnexcel" runat="server" Text="Excel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;
                    <asp:Button ID="btnprint" runat="server" Text="Print" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> </td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p><br />
        </p>
        <p>&nbsp;</p>
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
