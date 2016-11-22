<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewCart.aspx.vb" Inherits="ViewCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
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
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MobileConnectionString47 %>" 
        DeleteCommand="DELETE FROM [tblbuynow2] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [tblbuynow2] ([ID], [CompanyName], [ModelNo], [strp], [Price], [Color], [Os], [Cemera]) VALUES (@ID, @CompanyName, @ModelNo, @strp, @Price, @Color, @Os, @Cemera)" 
        SelectCommand="SELECT * FROM [tblbuynow2]" 
        UpdateCommand="UPDATE [tblbuynow2] SET [CompanyName] = @CompanyName, [ModelNo] = @ModelNo, [strp] = @strp, [Price] = @Price, [Color] = @Color, [Os] = @Os, [Cemera] = @Cemera WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ModelNo" Type="String" />
            <asp:Parameter Name="strp" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Os" Type="String" />
            <asp:Parameter Name="Cemera" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ModelNo" Type="String" />
            <asp:Parameter Name="strp" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Os" Type="String" />
            <asp:Parameter Name="Cemera" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <asp:Button ID="btnPaynow" runat="server" Text="Paynow" />
    &nbsp;&nbsp;
    <asp:Button ID="btnshopcon" runat="server" Text="Shoping Continue" />
    <br />
    <br />
    </form>
</body>
</html>
