<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EPurchaseGoods.aspx.vb" Inherits="_Default" %>

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
        <li><a href="loginadmin.aspx" class="nav3">Log In </a></li>      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Register Of PurchaseGoods</p>
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
                                    <asp:BoundField DataField="Purchase_Id" HeaderText="Purchase_Id" 
                                        ReadOnly="True" SortExpression="Purchase_Id" />
                                    <asp:BoundField DataField="Purchase_Date" HeaderText="Purchase_Date" 
                                        SortExpression="Purchase_Date" />
                                    <asp:BoundField DataField="Agency_Name" HeaderText="Agency_Name" 
                                        SortExpression="Agency_Name" />
                                    <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                                        SortExpression="Product_Name" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" 
                                        SortExpression="Description" />
                                    <asp:BoundField DataField="Quentity" HeaderText="Quentity" 
                                        SortExpression="Quentity" />
                                    <asp:BoundField DataField="Purchase_Rate" HeaderText="Purchase_Rate" 
                                        SortExpression="Purchase_Rate" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString2 %>" 
                                SelectCommand="SELECT * FROM [tblPurchaseGoods]" 
                                ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [tblPurchaseGoods] WHERE [Purchase_Id] = @original_Purchase_Id AND [Purchase_Date] = @original_Purchase_Date AND [Agency_Name] = @original_Agency_Name AND [Product_Name] = @original_Product_Name AND [Description] = @original_Description AND [Quentity] = @original_Quentity AND [Purchase_Rate] = @original_Purchase_Rate" 
                                InsertCommand="INSERT INTO [tblPurchaseGoods] ([Purchase_Id], [Purchase_Date], [Agency_Name], [Product_Name], [Description], [Quentity], [Purchase_Rate]) VALUES (@Purchase_Id, @Purchase_Date, @Agency_Name, @Product_Name, @Description, @Quentity, @Purchase_Rate)" 
                                OldValuesParameterFormatString="original_{0}" 
                                UpdateCommand="UPDATE [tblPurchaseGoods] SET [Purchase_Date] = @Purchase_Date, [Agency_Name] = @Agency_Name, [Product_Name] = @Product_Name, [Description] = @Description, [Quentity] = @Quentity, [Purchase_Rate] = @Purchase_Rate WHERE [Purchase_Id] = @original_Purchase_Id AND [Purchase_Date] = @original_Purchase_Date AND [Agency_Name] = @original_Agency_Name AND [Product_Name] = @original_Product_Name AND [Description] = @original_Description AND [Quentity] = @original_Quentity AND [Purchase_Rate] = @original_Purchase_Rate">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Purchase_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Purchase_Date" Type="String" />
                                    <asp:Parameter Name="original_Agency_Name" Type="String" />
                                    <asp:Parameter Name="original_Product_Name" Type="String" />
                                    <asp:Parameter Name="original_Description" Type="String" />
                                    <asp:Parameter Name="original_Quentity" Type="String" />
                                    <asp:Parameter Name="original_Purchase_Rate" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Purchase_Date" Type="String" />
                                    <asp:Parameter Name="Agency_Name" Type="String" />
                                    <asp:Parameter Name="Product_Name" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="Quentity" Type="String" />
                                    <asp:Parameter Name="Purchase_Rate" Type="Int32" />
                                    <asp:Parameter Name="original_Purchase_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Purchase_Date" Type="String" />
                                    <asp:Parameter Name="original_Agency_Name" Type="String" />
                                    <asp:Parameter Name="original_Product_Name" Type="String" />
                                    <asp:Parameter Name="original_Description" Type="String" />
                                    <asp:Parameter Name="original_Quentity" Type="String" />
                                    <asp:Parameter Name="original_Purchase_Rate" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Purchase_Id" Type="Int32" />
                                    <asp:Parameter Name="Purchase_Date" Type="String" />
                                    <asp:Parameter Name="Agency_Name" Type="String" />
                                    <asp:Parameter Name="Product_Name" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="Quentity" Type="String" />
                                    <asp:Parameter Name="Purchase_Rate" Type="Int32" />
                                </InsertParameters>
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
                        onclientclick="#" PostBackUrl="#" Width="64px" /> 
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
