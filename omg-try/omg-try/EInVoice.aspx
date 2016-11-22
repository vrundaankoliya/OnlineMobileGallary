<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EInVoice.aspx.vb" Inherits="_Default" %>

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
        <Columns>
                        Register Of Invoice<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                        SortExpression="ID" />
                                    <asp:BoundField DataField="Buyer" HeaderText="Buyer" SortExpression="Buyer" />
                                    <asp:BoundField DataField="VAT_TIN_No" HeaderText="VAT_TIN_No" 
                                        SortExpression="VAT_TIN_No" />
                                    <asp:BoundField DataField="CST_TIN_No" HeaderText="CST_TIN_No" 
                                        SortExpression="CST_TIN_No" />
                                    <asp:BoundField DataField="Coustomer_Name" HeaderText="Coustomer_Name" 
                                        SortExpression="Coustomer_Name" />
                                    <asp:BoundField DataField="Coustomer_Address" HeaderText="Coustomer_Address" 
                                        SortExpression="Coustomer_Address" />
                                    <asp:BoundField DataField="Invoice_No" HeaderText="Invoice_No" 
                                        SortExpression="Invoice_No" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:BoundField DataField="Delivery_Note" HeaderText="Delivery_Note" 
                                        SortExpression="Delivery_Note" />
                                    <asp:BoundField DataField="Suppliers_Reference" 
                                        HeaderText="Suppliers_Reference" SortExpression="Suppliers_Reference" />
                                    <asp:BoundField DataField="Buyers_Order_No" HeaderText="Buyers_Order_No" 
                                        SortExpression="Buyers_Order_No" />
                                    <asp:BoundField DataField="Sr_No" HeaderText="Sr_No" SortExpression="Sr_No" />
                                    <asp:BoundField DataField="Description_Of_Goods" 
                                        HeaderText="Description_Of_Goods" SortExpression="Description_Of_Goods" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                        SortExpression="Quantity" />
                                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                                    <asp:BoundField DataField="Per" HeaderText="Per" SortExpression="Per" />
                                    <asp:BoundField DataField="Discount" HeaderText="Discount" 
                                        SortExpression="Discount" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                        SortExpression="Amount" />
                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                    <asp:BoundField DataField="Terms_and_Condition" 
                                        HeaderText="Terms_and_Condition" SortExpression="Terms_and_Condition" />
                                    <asp:BoundField DataField="Payment_Mode" HeaderText="Payment_Mode" 
                                        SortExpression="Payment_Mode" />
                                    <asp:BoundField DataField="Remark" HeaderText="Remark" 
                                        SortExpression="Remark" />
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
                                DeleteCommand="DELETE FROM [tblInVoice] WHERE [ID] = @ID" 
                                InsertCommand="INSERT INTO [tblInVoice] ([ID], [Buyer], [VAT_TIN_No], [CST_TIN_No], [Coustomer_Name], [Coustomer_Address], [Invoice_No], [Date], [Delivery_Note], [Suppliers_Reference], [Buyers_Order_No], [Sr_No], [Description_Of_Goods], [Quantity], [Rate], [Per], [Discount], [Amount], [Total], [Terms_and_Condition], [Payment_Mode], [Remark]) VALUES (@ID, @Buyer, @VAT_TIN_No, @CST_TIN_No, @Coustomer_Name, @Coustomer_Address, @Invoice_No, @Date, @Delivery_Note, @Suppliers_Reference, @Buyers_Order_No, @Sr_No, @Description_Of_Goods, @Quantity, @Rate, @Per, @Discount, @Amount, @Total, @Terms_and_Condition, @Payment_Mode, @Remark)" 
                                SelectCommand="SELECT * FROM [tblInVoice]" 
                                
                                UpdateCommand="UPDATE [tblInVoice] SET [Buyer] = @Buyer, [VAT_TIN_No] = @VAT_TIN_No, [CST_TIN_No] = @CST_TIN_No, [Coustomer_Name] = @Coustomer_Name, [Coustomer_Address] = @Coustomer_Address, [Invoice_No] = @Invoice_No, [Date] = @Date, [Delivery_Note] = @Delivery_Note, [Suppliers_Reference] = @Suppliers_Reference, [Buyers_Order_No] = @Buyers_Order_No, [Sr_No] = @Sr_No, [Description_Of_Goods] = @Description_Of_Goods, [Quantity] = @Quantity, [Rate] = @Rate, [Per] = @Per, [Discount] = @Discount, [Amount] = @Amount, [Total] = @Total, [Terms_and_Condition] = @Terms_and_Condition, [Payment_Mode] = @Payment_Mode, [Remark] = @Remark WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Buyer" Type="String" />
                                    <asp:Parameter Name="VAT_TIN_No" Type="Int32" />
                                    <asp:Parameter Name="CST_TIN_No" Type="Int32" />
                                    <asp:Parameter Name="Coustomer_Name" Type="String" />
                                    <asp:Parameter Name="Coustomer_Address" Type="String" />
                                    <asp:Parameter Name="Invoice_No" Type="Int32" />
                                    <asp:Parameter Name="Date" Type="DateTime" />
                                    <asp:Parameter Name="Delivery_Note" Type="String" />
                                    <asp:Parameter Name="Suppliers_Reference" Type="String" />
                                    <asp:Parameter Name="Buyers_Order_No" Type="Int32" />
                                    <asp:Parameter Name="Sr_No" Type="Int32" />
                                    <asp:Parameter Name="Description_Of_Goods" Type="String" />
                                    <asp:Parameter Name="Quantity" Type="Int32" />
                                    <asp:Parameter Name="Rate" Type="Int32" />
                                    <asp:Parameter Name="Per" Type="Int32" />
                                    <asp:Parameter Name="Discount" Type="Int32" />
                                    <asp:Parameter Name="Amount" Type="Int32" />
                                    <asp:Parameter Name="Total" Type="Int32" />
                                    <asp:Parameter Name="Terms_and_Condition" Type="String" />
                                    <asp:Parameter Name="Payment_Mode" Type="Int32" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="Buyer" Type="String" />
                                    <asp:Parameter Name="VAT_TIN_No" Type="Int32" />
                                    <asp:Parameter Name="CST_TIN_No" Type="Int32" />
                                    <asp:Parameter Name="Coustomer_Name" Type="String" />
                                    <asp:Parameter Name="Coustomer_Address" Type="String" />
                                    <asp:Parameter Name="Invoice_No" Type="Int32" />
                                    <asp:Parameter Name="Date" Type="DateTime" />
                                    <asp:Parameter Name="Delivery_Note" Type="String" />
                                    <asp:Parameter Name="Suppliers_Reference" Type="String" />
                                    <asp:Parameter Name="Buyers_Order_No" Type="Int32" />
                                    <asp:Parameter Name="Sr_No" Type="Int32" />
                                    <asp:Parameter Name="Description_Of_Goods" Type="String" />
                                    <asp:Parameter Name="Quantity" Type="Int32" />
                                    <asp:Parameter Name="Rate" Type="Int32" />
                                    <asp:Parameter Name="Per" Type="Int32" />
                                    <asp:Parameter Name="Discount" Type="Int32" />
                                    <asp:Parameter Name="Amount" Type="Int32" />
                                    <asp:Parameter Name="Total" Type="Int32" />
                                    <asp:Parameter Name="Terms_and_Condition" Type="String" />
                                    <asp:Parameter Name="Payment_Mode" Type="Int32" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
            &nbsp;<asp:Button ID="btnexcel" runat="server" Text="Excel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;&nbsp;
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
