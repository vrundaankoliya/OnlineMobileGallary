<%@ Page Language="VB" AutoEventWireup="false" CodeFile="rptpurchaseGoods.aspx.vb" Inherits="rptpurchaseGoods" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetData" 
            TypeName="MobileDataSetTableAdapters.tblPurchaseGoodsTableAdapter">
        </asp:ObjectDataSource>
    
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="400px" Width="400px">
            <localreport reportpath="Report1.rdlc">
                <datasources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" 
                        Name="MobileDataSet_tblPurchaseGoods" />
                </datasources>
            </localreport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MobileConnectionString66 %>" 
            SelectCommand="SELECT [Purchase_Id], [Purchase_Date], [Agency_Name], [Product_Name], [Description], [Quentity] FROM [tblPurchaseGoods]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
