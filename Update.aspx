<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            color: #000000;
        }
        .style2
        {
            color: #000000;
            height: 22px;
        }
        .style4
        {
            text-align: center;
            width: 173px;
        }
        .style5
        {
            height: 22px;
            text-align: center;
            width: 173px;
        }
        .style6
        {
            color: #000000;
            height: 30px;
        }
        .style8
        {
            text-align: center;
            height: 30px;
            width: 173px;
        }
        .style9
        {
            color: #33CC33;
        }
        .style10
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />



    <table class="nav-justified" align="center">
    <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="MovieID" style="color: #33CC33"></asp:Label>
            </strong>
        </td>

        
        <br />
        <br />
        <td class="text-left">
            <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="TextBox1" 
                ErrorMessage="* RequiredField" CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="MovieName" 
                style="text-align: center; color: #33CC33;"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" ></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
 
    <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label4" runat="server" Text="MovieType" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <strong>
            <asp:Label ID="Label5" runat="server" Text="MovieImage" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox8" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox8" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label6" runat="server" Text="MovieDate" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label8" runat="server" Text="MovieTime" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
       </tr>
      <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="TotalSeat" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox6" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
    </tr>
      <tr>
        <td class="style1">
            <strong>
            <asp:Label ID="Label10" runat="server" Text="Price" CssClass="style9"></asp:Label>
            </strong>
        </td>
        <td class="text-left">
            <asp:TextBox ID="TextBox7" runat="server" autocomplete="off"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="* RequiredField" 
                CssClass="style10"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>
&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
    Text="AddMovie" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label7" runat="server" style="color: #00FF00"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<table class="nav-justified">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />



</asp:Content>