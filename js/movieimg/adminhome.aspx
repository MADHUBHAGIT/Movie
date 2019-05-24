<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1>MOVIE BOOKING MANAGEMENT</h1>
<table style="margin-top:25px; margin-bottom: 509px;" width="100%" align="center">
            <tr bgcolor="#66AFF">
                <td class="style2">
               
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large"  NavigateUrl="add.aspx">Add movie</asp:HyperLink>
               
                   &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large"  NavigateUrl="delete.aspx">Delete movie</asp:HyperLink></td>
               
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large"  NavigateUrl="Showmovie.aspx">Show movie</asp:HyperLink></td>
               
                <td>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Homepage.aspx">Logout</asp:HyperLink>
                </td>
            </tr>
        </table>
       <td style="width: 281px; text-align: left">
                    <img alt="" class="style1" src="images/hurryup.png" /></td>
  
</asp:Content>

