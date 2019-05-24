<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
   <table style="margin-top:30px; height: 131px;" width="100%" align="center">
            <tr bgcolor="#66AFF">
                <td class="style2">
               
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large"  NavigateUrl="Update.aspx">Update Movie</asp:HyperLink>
               
                   </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large"  NavigateUrl="delete.aspx">Delete movie</asp:HyperLink></td>
                
                <td>
                    
                   <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large"  NavigateUrl="Showmovie.aspx">Show movie</asp:HyperLink></td>
                     <td>
                    
                   <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large"  NavigateUrl="CustomerDetails.aspx">Customer Details</asp:HyperLink></td>


                   <td>
                   
                  
                       <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Default.aspx">Logout</asp:HyperLink>
                  
            </tr>

        </table>
    </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>