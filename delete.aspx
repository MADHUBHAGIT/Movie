<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 148px;
            text-align: center;
        }
        .nav-justified
        {
            height: 242px;
            width: 671px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

&nbsp;</br>

</br>

</br>
&nbsp;<table class="nav-justified" align="center">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="MovieID" style="color: #33CC33"></asp:Label>
                <br />
                <br />
                <br />
            </td>
            <td class="style1">
                <br />
                <br />
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" 
                    style="font-size: x-large; color: #00FF00;"></asp:Label>
                <br />
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="* RequiredField" 
                    style="color: #FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>


    </asp:Content>