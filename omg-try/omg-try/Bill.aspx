<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Bill.aspx.vb" Inherits="_Default" %>

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
        .style3
        {
            width: 177px;
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
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Final Bill</p>
        <table width="419" height="41" border="0">
          <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                        <div style ="width:740px;overflow:auto ;">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                                        SortExpression="CompanyName" />
                                    <asp:BoundField DataField="ModelNo" HeaderText="ModelNo" 
                                        SortExpression="ModelNo" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                    <asp:BoundField DataField="Os" HeaderText="Os" SortExpression="Os" />
                                    <asp:BoundField DataField="Cemera" HeaderText="Cemera" 
                                        SortExpression="Cemera" />
                                    <asp:ImageField DataAlternateTextField="strp" DataImageUrlField="strp">
                                    </asp:ImageField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString2 %>" 
                                
                                SelectCommand="SELECT [CompanyName], [ModelNo], [strp], [Price], [Color], [Os], [Cemera] FROM [tblbuynow2]">
                            </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
            &nbsp;&nbsp;
                               </td>
          </tr>
        </table>
                       <table bgcolor="#ECE9D8" border="1" class="style1" frame="hsides">
                           <tr>
                             <td>
                                             <asp:Label ID="lblpayment" runat="server" Text="Label"></asp:Label>
                                 Customer Information</td>
                           </tr>
                           <tr>
                               <td>
                                   <table class="style1">
                                       <tr>
                                           <td>
                                               Name</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               Address</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               Country</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblcountry" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               State</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblstate" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               City</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               E-mail</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               Phone</td>
                                           <td>
                                               :</td>
                                           <td>
                           <asp:Label ID="lblphno" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               Mobile No</td>
                                           <td>&nbsp;
                                         </td>
                                           <td>
                                               <asp:Label ID="lblmob" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               No Of Pice</td>
                                           <td>
                                               :</td>
                                           <td>
                                               <asp:Label ID="lblnop" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               Total Payment</td>
                                           <td>
                                               :</td>
                                           <td>
                                               <asp:Label ID="lbltot" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>&nbsp;
                                         </td>
                                           <td>&nbsp;
                                         </td>
                                           <td>&nbsp;
                                         </td>
                                       </tr>
                                   </table>
                               </td>
                           </tr>
                       </table>
                       <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </p>
                       <p>&nbsp;
                       </p>
                       <p>&nbsp;</p>
                       <br />
                           Shipping Address:                           <br />
                                                      <p>
                           </asp:DropDownList>
                                                          <table class="style1">
                                                              <tr>
                                                                  <td class="style3">
                                                                      Name</td>
                                   <td>
                                       <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style3">
                                       Address</td>
                                   <td>
                                       <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style3">
                                       City&nbsp;
                                   </td>
                                   <td>
                                       <asp:DropDownList ID="cmbcity" runat="server" Height="16px" Width="125px">
                                           <asp:ListItem>Surat</asp:ListItem>
                                           <asp:ListItem></asp:ListItem>
                                       </asp:DropDownList>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style3">
                                       EMail_ID</td>
                                   <td>
                                       <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style3">
                                       Phone_No</td>
                                   <td>
                                       <asp:TextBox ID="txtphoneno" runat="server"></asp:TextBox>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style3">
                                       Mobile No
                                   </td>
                                   <td>
                                       <asp:TextBox ID="txtmono" runat="server"></asp:TextBox>
                                   </td>
                               </tr>
                           </table>
                       </p>
                       <p>
                           <asp:Button ID="btnsend" runat="server" Text="Send " />
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
