

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="temp.aspx.vb" Inherits="temp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        `````
        
        <asp:Repeater ID="Repeater1" runat="server">
           
            <ItemTemplate>
              <table>
               <tr>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Product_Name") %>'></asp:Label>
                 </td>
               </tr>
               <tr>
                  <td>
                  <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Price") %>'></asp:Label>
  
                  </td>
               
               </tr>
               <tr>
                  <td>
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/5s.jpg" />
                  </td>
               
               </tr>
               </table>
            </ItemTemplate>
            <SeparatorTemplate>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </SeparatorTemplate>
            <AlternatingItemTemplate>
              <table>
               <tr>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Product_Name") %>'></asp:Label>
                 </td>
               </tr>
               <tr>
                  <td>
                  <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Price") %>'></asp:Label>
  
                  </td>
               
               </tr>
               <tr>
                  <td>
                  </td>
               
               </tr>
               </table>
            </AlternatingItemTemplate>
        </asp:Repeater>
        
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        
          <Columns>
            <asp:TemplateField>
              <ItemTemplate>
              
                <table>
               <tr>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Product_Name") %>'></asp:Label>
                 </td>
               </tr>
               <tr>
                  <td>
                  <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Price") %>'></asp:Label>
  
                  </td>
               
               </tr>
               <tr>
                  <td>
                  </td>
               
               </tr>
               </table>
              </ItemTemplate>
            </asp:TemplateField>
          </Columns>
        </asp:GridView>--%>
    </div>
    </form>
</body>
</html>
