﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InVoice.aspx.vb" Inherits="_Default" %>

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
            text-align: center;
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
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav1"> Home</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav2">Products</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav3">Specials</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">My account</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">Sign Up</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav5">Shipping</a></li>
        <li class="divider"></li>
        <li><a href="contact.html" class="nav6">Contact Us</a></li>
        <li class="divider"></li>
        <li class="currencies">Currencies        </li>
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Processors</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Motherboards</a></li>
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Desktops</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Laptops &amp; Notebooks</a></li>
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Processors</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Motherboards</a></li>
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Processors</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Motherboards</a></li>
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Desktops</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Laptops &amp; Notebooks</a></li>
        <li class="odd"><a href="http://all-free-download.com/free-website-templates/">Processors</a></li>
        <li class="even"><a href="http://all-free-download.com/free-website-templates/">Motherboards</a></li>
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
        <p>Register Of InVoice</p>
        <table width="419" height="41" border="0">
          <tr>
            <td><table width="410" border="0" background="images/products_details_bg.gif">
              <tr>
                <td width="172">&nbsp;</td>
                <td width="12">&nbsp;</td>
                <td width="212">
                    &nbsp;</td>
              </tr>
              <tr>
                <td width="172">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Double" Height="46px" 
                        ImageUrl="~/images/connected_multiple_big.jpg" Width="55px" />
                  </td>
                <td width="12">&nbsp;</td>
                <td width="212">
                    &nbsp;</td>
              </tr>
              <tr>
                <td width="172">Bill</td>
                <td width="12"><div align="center">:</div></td>
                <td width="212">
                    <asp:TextBox ID="txtbill" runat="server" BackColor="#EFEDED" 
                        BorderColor="#003366"></asp:TextBox>                  </td>
              </tr>
              <tr>
                <td>Buyer</td>
                <td><div align="center">:</div></td>
                <td>
                    <asp:TextBox ID="txtBuyer" runat="server" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>VAT_TIN_NO</td>
                <td style="text-align: center">:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtVatno" runat="server" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>CST_TIN_NO</td>
                <td style="text-align: center">:</td>
                <td>
                    <asp:TextBox ID="txtCstno" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>CustomerName</td>
                <td style="text-align: center">:</td>
                <td>
                    <asp:TextBox ID="txtCustomername" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    
                                           </td>
              </tr>
              <tr>
                <td>CustomerAddress</td>
                <td class="style1">:</td>
                <td>
                    <asp:TextBox ID="txtCustomeraddress" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    
                                           </td>
              </tr>
              <tr>
                <td>InVoiceNo</td>
                <td class="style1">:</td>
                <td>
                    <asp:TextBox ID="txtInvoiceno" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Date</td>
                <td class="style1">:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>DeliveryNote</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtDeliverynote" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>SuppliersReference</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtSupplier" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>BuyersOrderNo</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtOrderno" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>SrNo</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtSrno" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>DescriptionOfGoods</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtDescgoods" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Quantity</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Rate</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtRate" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Per</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtPer" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Discount%</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtDiscount" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Amount</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Total</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtTotal" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Terms&amp;Condition</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtTermscondition" runat="server" ForeColor="#D5D7C1" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>PaymentMode</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtPaymentmode" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td>Remark</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtRemark" runat="server" ForeColor="Black" 
                        BackColor="#EFEDED" BorderColor="#003366"></asp:TextBox>                    </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center; margin-left: 40px;">
                    <asp:Button ID="btnadd" runat="server" Text="Add" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;&nbsp;
                    <asp:Button ID="btnsave" runat="server" Text="Save" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp; 
                    <asp:Button ID="btnedit" runat="server" Text="Edit" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">
                    &nbsp;</td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center">&nbsp;</td>
              </tr>
            </table>
            � </td>
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
