<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Verification.aspx.cs" Inherits="Verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    
   <div class="container">
   <div class="box" style="height: 443px; width: 786px; margin-left: 360px;">
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <span style="font-size: x-large; color: #FF0000">
       <strong style="font-size: xx-large">Check Email Address For Activation !!</strong></span><br />
       <br />
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter OTP" Height="39px" 
           Width="147px"></asp:TextBox>
        <br />
        <br />
       <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
           CssClass="acount-btn" />
       &nbsp;&nbsp;&nbsp;
       <br />
       <br />
       <asp:Label ID="Label4" runat="server" Font-Bold="True" 
           style="color: #00FF00; font-size: large"></asp:Label>
       
       <br />
       
    </div>
    </div>
    
</div>

</asp:Content>

