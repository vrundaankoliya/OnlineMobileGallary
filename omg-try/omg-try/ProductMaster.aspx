<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductMaster.aspx.vb" Inherits="_Default" %>

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
                width: 105px;
            }
            .style2
            {
                width: 14px;
            }
            .style3
            {
            }
            .style4
            {
                width: 130px;
            }
            .style5
            {
                margin-left: 40px;
            }
        </style>
    </head>
<script type="text/javascript">    function checkForm(form) { if (form.username.value == "") { alert("Error: Username cannot be blank!"); form.username.focus(); return false; } re = /^\w+$/; if (!re.test(form.username.value)) { alert("Error: Username must contain only letters, numbers and underscores!"); form.username.focus(); return false; } if (form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) { if (form.pwd1.value.length < 6) { alert("Error: Password must contain at least six characters!"); form.pwd1.focus(); return false; } if (form.pwd1.value == form.username.value) { alert("Error: Password must be different from Username!"); form.pwd1.focus(); return false; } re = /[0-9]/; if (!re.test(form.pwd1.value)) { alert("Error: password must contain at least one number (0-9)!"); form.pwd1.focus(); return false; } re = /[a-z]/; if (!re.test(form.pwd1.value)) { alert("Error: password must contain at least one lowercase letter (a-z)!"); form.pwd1.focus(); return false; } re = /[A-Z]/; if (!re.test(form.pwd1.value)) { alert("Error: password must contain at least one uppercase letter (A-Z)!"); form.pwd1.focus(); return false; } } else { alert("Error: Please check that you've entered and confirmed your password!"); form.pwd1.focus(); return false; } alert("You entered a valid password: " + form.pwd1.value); return true; } </script>
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
            <div class="oferta_title">Online Mobile Gallery</div>
            <div class="oferta_text"> Welcome To Visite Our Site,,,<br />
                You can Buy Our Mobile in this Site..... </div>
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
        <li><a href="loginadmin.aspx" class="nav3">Log In </a></li>         </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
        <li class="odd"><a href="Welcome.aspx">Home</a></li>
        <li class="even"><a href="NewAcc.aspx">Create Account</a></li>
        <li class="odd"><a href="ProductMaster.aspx">Product Master</a></li>
        <li class="even"><a href="PurchaseGoods.aspx">Purchase Goods</a></li>
        <li class="odd"><a href="PurchaseReturn.aspx">Purchase Return</a></li>
        <li class="even"><a href="SupplyGoodstoShop.aspx">Sales To Shop</a></li>
      <li class="odd"><a href="ShopSupplyReturn.aspx">Sales Return</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Sales Report</a></li>
        <li class="odd"><a href="OnDemand.aspx">On Demand</a></li>
         <li class="even"><a href="ManageAcc.aspx">Managed Account</a></li>
        <li class="odd"><a href="NextLaunchingMobile.aspx">UpComing Product</a></li>
        <li class="even"><a href="ShopMaster.aspx">Shop Master</a></li>
      </ul>
      <div class="title_box">Special Products</div>
      <div class="border_box">
        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
        <div class="product_img"><a href="details.html"></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="http://all-free-download.com/free-website-templates/" class="join">join</a> </div>
      <div class="banner_adds"> <a href="http://all-free-download.com/free-website-templates/"></a> </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Register Of Product Master</p>
        <table width="300" height="41" border="0">
          <tr>
            <td valign="top"><table width="450" border="0">
              <tr>
                <td class="style1">Product Id </td>
                <td class="style5">
                    <asp:TextBox ID="txtproductID" runat="server" Height="22px" Width="136px" 
                        BackColor="White"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">GPRS</td>
                <td>
                    <asp:TextBox ID="txtgprs" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Company_Name</td>
                <td class="style5">
                    <asp:DropDownList ID="cmbCompany" runat="server" Height="31px" Width="141px" 
                        DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                        DataValueField="CompanyName">
                    </asp:DropDownList>
                                           </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">WLAN</td>
                <td>
                    <asp:TextBox ID="txtwlan" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Product_Name</td>
                <td class="style5">
                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Bluetooth</td>
                <td>
                    <asp:TextBox ID="txtbluetooth" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Model_No</td>
                <td class="style5">
                    <asp:TextBox ID="txtmodel" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">USB</td>
                <td>
                    <asp:TextBox ID="txtusb" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Price</td>
                <td class="style5">
                    <asp:TextBox ID="txtprice" runat="server" Width="138px" Height="23px"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Primary_camera</td>
                <td>
                    <asp:TextBox ID="txtPcamera" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">2GNetwork</td>
                <td class="style5">
                    <asp:TextBox ID="txt2G" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Video</td>
                <td>
                    <asp:TextBox ID="Txtvidon" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">3GNetwork</td>
                <td class="style5">
                    <asp:TextBox ID="txt3G" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Music_Play</td>
                <td>
                    <asp:TextBox ID="TxtMplay" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Weight</td>
                <td class="style5">
                    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">OS</td>
                <td>
                    <asp:TextBox ID="Txtosn" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Size</td>
                <td class="style5">
                    <asp:TextBox ID="txtsize" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Radio</td>
                <td>
                    <asp:TextBox ID="Txtradion" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">LoudSpeaker</td>
                <td class="style5">
                    <asp:TextBox ID="txtloudspeaker" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Games</td>
                <td>
                    <asp:TextBox ID="Txtgamesn" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Internal_Memory</td>
                <td class="style5">
                    <asp:TextBox ID="txtImemory" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Color</td>
                <td>
                    <asp:TextBox ID="Txtcolorn" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">External_Memory</td>
                <td class="style5">
                    <asp:TextBox ID="txtEmemory" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">Qwerty</td>
                <td>
                    <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td class="style1">Dual_SIM</td>
                <td class="style5">
                    <asp:TextBox ID="txtDualSim" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
              </tr>
              <tr>
                <td class="style1">Other_Features</td>
                <td class="style5">
                    <asp:TextBox ID="txtotherFeatures" runat="server"></asp:TextBox>
                  </td>
                <td class="style2">&nbsp;</td>
                <td class="style4">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UploadIMg.aspx">Upload 
                    Images</asp:LinkButton>
                  </td>
                <td class="style3" colspan="4">
                  &nbsp;&nbsp;
                    </td>
              </tr>
              <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5" colspan="4">
                    <asp:Button ID="btnadd" runat="server" Text="Add" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="59px" /> &nbsp; <asp:Button ID="btnsave" runat="server" Text="Save" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;
                    <asp:Button ID="btncancel0" runat="server" Text="Edit" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="54px" Height="26px" /> &nbsp;
                    <asp:Button 
                        ID="btncancel" runat="server" Text="Cancel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" Height="25px" /> </td>
              </tr>
              <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                    &nbsp;&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="style1">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MobileConnectionString5 %>" 
                        SelectCommand="SELECT [CompanyName] FROM [tblCompanyMaster]">
                    </asp:SqlDataSource>
                  </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
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
