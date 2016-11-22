<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EShopMaster.aspx.vb" Inherits="_Default" %>

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
        <p>Register Of ShopMaster</p>
        <table width="419" height="41" border="0">
          <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                        <div style ="width:740px;overflow:auto ;">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Shop_ID" HeaderText="Shop_ID" ReadOnly="True" 
                                        SortExpression="Shop_ID" />
                                    <asp:BoundField DataField="Shop_Name" HeaderText="Shop_Name" 
                                        SortExpression="Shop_Name" />
                                    <asp:BoundField DataField="SPassword" HeaderText="SPassword" 
                                        SortExpression="SPassword" />
                                    <asp:BoundField DataField="SAddress" HeaderText="SAddress" 
                                        SortExpression="SAddress" />
                                    <asp:BoundField DataField="SCity" HeaderText="SCity" SortExpression="SCity" />
                                    <asp:BoundField DataField="SPincode" HeaderText="SPincode" 
                                        SortExpression="SPincode" />
                                    <asp:BoundField DataField="SState" HeaderText="SState" 
                                        SortExpression="SState" />
                                    <asp:BoundField DataField="SContact_Number" HeaderText="SContact_Number" 
                                        SortExpression="SContact_Number" />
                                    <asp:BoundField DataField="SContact_Person" HeaderText="SContact_Person" 
                                        SortExpression="SContact_Person" />
                                    <asp:BoundField DataField="SEMail_ID" HeaderText="SEMail_ID" 
                                        SortExpression="SEMail_ID" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString2 %>" 
                                SelectCommand="SELECT * FROM [tblShopMaster]" 
                                ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [tblShopMaster] WHERE [Shop_ID] = @original_Shop_ID AND [Shop_Name] = @original_Shop_Name AND [SPassword] = @original_SPassword AND [SAddress] = @original_SAddress AND [SCity] = @original_SCity AND [SPincode] = @original_SPincode AND [SState] = @original_SState AND [SContact_Number] = @original_SContact_Number AND [SContact_Person] = @original_SContact_Person AND [SEMail_ID] = @original_SEMail_ID" 
                                InsertCommand="INSERT INTO [tblShopMaster] ([Shop_ID], [Shop_Name], [SPassword], [SAddress], [SCity], [SPincode], [SState], [SContact_Number], [SContact_Person], [SEMail_ID]) VALUES (@Shop_ID, @Shop_Name, @SPassword, @SAddress, @SCity, @SPincode, @SState, @SContact_Number, @SContact_Person, @SEMail_ID)" 
                                OldValuesParameterFormatString="original_{0}" 
                                UpdateCommand="UPDATE [tblShopMaster] SET [Shop_Name] = @Shop_Name, [SPassword] = @SPassword, [SAddress] = @SAddress, [SCity] = @SCity, [SPincode] = @SPincode, [SState] = @SState, [SContact_Number] = @SContact_Number, [SContact_Person] = @SContact_Person, [SEMail_ID] = @SEMail_ID WHERE [Shop_ID] = @original_Shop_ID AND [Shop_Name] = @original_Shop_Name AND [SPassword] = @original_SPassword AND [SAddress] = @original_SAddress AND [SCity] = @original_SCity AND [SPincode] = @original_SPincode AND [SState] = @original_SState AND [SContact_Number] = @original_SContact_Number AND [SContact_Person] = @original_SContact_Person AND [SEMail_ID] = @original_SEMail_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Shop_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Shop_Name" Type="String" />
                                    <asp:Parameter Name="original_SPassword" Type="String" />
                                    <asp:Parameter Name="original_SAddress" Type="String" />
                                    <asp:Parameter Name="original_SCity" Type="String" />
                                    <asp:Parameter Name="original_SPincode" Type="Int32" />
                                    <asp:Parameter Name="original_SState" Type="String" />
                                    <asp:Parameter Name="original_SContact_Number" Type="String" />
                                    <asp:Parameter Name="original_SContact_Person" Type="String" />
                                    <asp:Parameter Name="original_SEMail_ID" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Shop_Name" Type="String" />
                                    <asp:Parameter Name="SPassword" Type="String" />
                                    <asp:Parameter Name="SAddress" Type="String" />
                                    <asp:Parameter Name="SCity" Type="String" />
                                    <asp:Parameter Name="SPincode" Type="Int32" />
                                    <asp:Parameter Name="SState" Type="String" />
                                    <asp:Parameter Name="SContact_Number" Type="String" />
                                    <asp:Parameter Name="SContact_Person" Type="String" />
                                    <asp:Parameter Name="SEMail_ID" Type="String" />
                                    <asp:Parameter Name="original_Shop_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Shop_Name" Type="String" />
                                    <asp:Parameter Name="original_SPassword" Type="String" />
                                    <asp:Parameter Name="original_SAddress" Type="String" />
                                    <asp:Parameter Name="original_SCity" Type="String" />
                                    <asp:Parameter Name="original_SPincode" Type="Int32" />
                                    <asp:Parameter Name="original_SState" Type="String" />
                                    <asp:Parameter Name="original_SContact_Number" Type="String" />
                                    <asp:Parameter Name="original_SContact_Person" Type="String" />
                                    <asp:Parameter Name="original_SEMail_ID" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Shop_ID" Type="Int32" />
                                    <asp:Parameter Name="Shop_Name" Type="String" />
                                    <asp:Parameter Name="SPassword" Type="String" />
                                    <asp:Parameter Name="SAddress" Type="String" />
                                    <asp:Parameter Name="SCity" Type="String" />
                                    <asp:Parameter Name="SPincode" Type="Int32" />
                                    <asp:Parameter Name="SState" Type="String" />
                                    <asp:Parameter Name="SContact_Number" Type="String" />
                                    <asp:Parameter Name="SContact_Person" Type="String" />
                                    <asp:Parameter Name="SEMail_ID" Type="String" />
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
                        onclientclick="#" PostBackUrl="#" Width="64px" /> </td>
          </tr>
        </table>
        <p>
            &nbsp;</p>
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
