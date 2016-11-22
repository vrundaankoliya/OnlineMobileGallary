<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewAcc.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js">

//function Allvalidate()

//    {

//        var ValidationSummary = "";

//        ValidationSummary += NameValidation();
//if (ValidationSummary != "")

//        {

//            alert(ValidationSummary);

//            return false;

//        }

//        else

//        {

//            alert("Information submited successfuly");

//           // return true;

//        } 

//    }
//  function NameValidation()
//{

//        var userid;

//        var controlId = document.getElementById("<%=Txtuname.ClientID %>");

//        userid = controlId.value;

//        var val = /^[a-zA-Z ]+$/

//        if (userid == "")

//        {

//            return ("Please Enter Name" + "\n");

//        }
//else if (val.test(userid))

//        {

//            return "";

// 

//        }

//        else

//        {

//            return ("Name accepts only spaces and charcters" + "\n");

//        }

//    }            -->
//    
//    
    
</script>
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
        <li><a href="loginadmin.aspx" class="nav3">Log In </a></li>
      </ul>
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
        <p>Register Area          </p>
        <table width="419" height="41" border="0">
          <tr>
            <td><table width="410" border="0" background="images/products_details_bg.gif">
              <tr>
                <td width="172">User Name </td>
                <td width="12"><div align="center">:</div></td>
                <td width="212">
                    <asp:TextBox ID="Txtuname" runat="server" BackColor="#EFEDED" 
                        BorderColor="#003366"></asp:TextBox>                  </td>
              </tr>
              <tr>
                <td>Password</td>
                <td><div align="center">:</div></td>
                <td>
                    <asp:TextBox ID="Txtpasswrd" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366">Password</asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Mobile No</td>
                <td style="text-align: center">:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="Txtpasswrd0" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366">+91</asp:TextBox>                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;                    </td>
              </tr>
              <tr>
                <td>Date of Birth</td>
                <td style="text-align: center">:</td>
                <td>
                    <asp:TextBox ID="Txtpasswrd1" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Gender</td>
                <td style="text-align: center">:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#EFEDED" 
                        Height="18px" Width="128px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                                           </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="btncreateacc" runat="server" Text="Create New Account" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        PostBackUrl="#"  OnClientClick ="javascript:Allvalidate()"/> </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">&nbsp;</td>
              </tr>
            </table>
            &#65533;           </tr>
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
