<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loginuser.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>a

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
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
              <div class="oferta_text"> 
            <div class="oferta_title">Online Mobile Gallery</div>
            <div class="oferta_text"> Welcome To Visite Our Site,,,<br />
                You can Buy Our Mobile in this Site..... </div>
            &nbsp;</div>
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
        <li><a href="login.aspx" class="nav3">Log In </a></li>      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
     
      <ul class="left_menu">
       
      </ul>
     
      <div class="banner_adds"> <a href="http://all-free-download.com/free-website-templates/"></a> </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Log In Of User</p>
        <table width="419" height="41" border="0">
          <tr>
            <td><table width="410" border="0" background="images/products_details_bg.gif">
              <tr>
                <td width="172">&nbsp;</td>
                <td width="12">&nbsp;</td>
                <td width="212">&nbsp;
                    </td>
              </tr>
              <tr>
                <td width="172">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Double" Height="46px" 
                        ImageUrl="~/images/connected_multiple_big.jpg" Width="55px" />
                  </td>
                <td width="12">&nbsp;</td>
                <td width="212">&nbsp;
                    </td>
              </tr>
              <tr>
                <td>UserName</td>
                <td><div align="center">:</div></td>
                <td>
                    <asp:TextBox ID="TxtUname" runat="server" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password :" Width="96px"></asp:Label>
                  </td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="Txtpass" runat="server" 
                        BackColor="#EFEDED" BorderColor="#003366" TextMode="Password"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="btnulogin" runat="server" Text="login" />
                    &nbsp;&nbsp;
                    &nbsp;
                    <asp:Button ID="btnsignup" runat="server" Text="SignUp" />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="88px" ImageUrl="~/8-1.gif" 
                        Visible="False" Width="79px" />
                    <br />
                    </td>
                  <td valign="top" style="height: 67px">
                                    <p id="validate" runat="server" style="font-size: 8pt; width: 269px; color: red;
                                        font-family: Arial; height: 48px" valign="top">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:MobileConnectionString4 %>" 
                                            SelectCommand="SELECT * FROM [logs]"></asp:SqlDataSource>
                                    </p>
                                </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Enter Username" Width="96px" 
                        BorderColor="Red" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">
                    &nbsp;</td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Text="Not Valid User " Width="96px" 
                        BorderColor="Red" Visible="False"></asp:Label>
                  </td>
              </tr>
            </table>
                               </td>
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
