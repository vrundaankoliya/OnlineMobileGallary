<%@ Page Language="VB" AutoEventWireup="false" CodeFile="buynow.aspx.vb" Inherits="_Default" %>

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
            height: 834px;
        }
        .style4
        {
            height: 62px;
        }
        .style6
        {
            height: 67px;
        }
    </style>
    </head>
    
<body>
    <form id="form1" runat="server">
   <div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      &nbsp;<div class="search_text"><a href="http://all-free-download.com/free-website-templates/">Advanced Search</a></div>
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
            <div class="oferta_title">u<br />
              </div>
            <a href="details.html" class="details">details</a> Welcome To Visite Our Site,,,<br />
                You can Buy Our Mobile in this Site..... </div>
        </div>
        <div class="oferta_pagination"> <span class="current">1</span> <a href="http://all-free-download.com/free-website-templates/">2<div class="center_title_bar">
        
        <table width="42<div class="center_title_bar">
        
            </table>
        <p>&nbsp;</p>
        <p><br />
        </p>
        <p>&nbsp;</p>
      </div>
            </a> &nbsp;<a href="http://all-free-download.com/free-website-templates/">3</a> <a href="http://all-free-download.com/free-website-templates/">
            4</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://all-free-download.com/free-website-templates/">5</a>
            You have
            <asp:Label ID="Label2" runat="server" Text="(s)"></asp:Label>
&nbsp;item in cart<a href="http://all-free-download.com/free-website-templates/"><asp:Image 
                ID="Image2" runat="server" ImageUrl="~/images/imagessss/car.png" />
            </a> 
            <br />
&nbsp; </div>
      </div>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  
  <div id="main_content">&nbsp;<div id="menu_tab">
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
        <li><a href="login.aspx" class="nav3">Log In </a></li>

      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
      <div class="title_box">Categories</div>
     <%-- <ul class="left_menu">
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
      </ul>--%>
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
        <table width="450" border="0">
          <tr>
              <a href="http://all-free-download.com/free-website-templates/">
            <td><table width="450" border="0" style="margin-right: 0px">
              <tr>
                <td class="style6">
                    <p>&nbsp;                    </p>
                    <p>&nbsp;&nbsp;ID&nbsp;&nbsp;
                      :
                        <asp:TextBox ID="txtID" runat="server" Height="25px"></asp:TextBox>
                      </a> 
                    &nbsp;</p>
                                           <p>&nbsp;</p>
                    <p>
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource7" DataTextField="CompanyName" 
                        DataValueField="CompanyName">                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MobileConnectionString24 %>" 
                        SelectCommand="SELECT [CompanyName] FROM [tblCompanyMaster]">                      </asp:SqlDataSource>
                      &nbsp;
                    </p></td>
                <td class="style6">
                  </td>
              </tr>
              <tr>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource8" DataTextField="Model_no" 
                        DataValueField="Model_no" style="width: 88px">
                    </asp:DropDownList>
                  </td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MobileConnectionString25 %>" 
                        SelectCommand="SELECT [Model_no] FROM [tblProductMaster] WHERE ([Companyname] = @Companyname)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Companyname" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                  &nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;
                    <a href="http://all-free-download.com/free-website-templates/">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </a> 
                    </td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="style4">&nbsp;
            </td>
              </tr>
              <tr>
                <td class="style4">
                    <asp:Image ID="Image1" runat="server" Height="67px" Width="60px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style4">&nbsp;
                    </td>
              </tr>
              <tr>
                <td valign="top" style="margin-left: 40px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                    Price&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;Color&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="txtcolor" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtOS" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;Camera :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcamera" runat="server"></asp:TextBox>
                  </td>
                <td id="t">&nbsp;</td>
                                       <td>&nbsp;
                                           </td>
              </tr>
              <tr>
                <td valign="top">
                    <asp:Button ID="btnbuynow" runat="server" Text="Buynow" />
                  </td>
                <td>&nbsp;
                    </td>
                                       <td>
                                           </td>
              </tr>
              <tr>
                <td valign="top">&nbsp;
                    <br />
                    Total :<asp:TextBox ID="Txttot" runat="server"></asp:TextBox>
                    </td>
                <td>&nbsp;
                    </td>
                                       <td>&nbsp;
                                           </td>
              </tr>
              <tr>
                <td>
                    </td>
                <td></td>
              </tr>
              <tr>
                <td class="style1">
                    </td>
                <td class="style1">&nbsp;</td>
              </tr>
              <%--<tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlD&nbsp;</td>
              </tr>--%>
              <tr>
                <td>&nbsp;
                    </td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
            </a> 
          </tr>
        </table>
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
