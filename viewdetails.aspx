<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewdetails.aspx.cs" Inherits="viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

View Details of movies

<style type="text/css">
        .style1
        {
            width: 100%;
            height: 142px;
            margin-bottom: 21px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 115px;
        }
        .style4
        {
            width: 100%;
            margin-top: 0px;
        }
    </style>



    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Movie Name"></asp:Label>
            </td>
            <td class="style2">
                GullyBoy</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Release Date"></asp:Label>
            </td>
            <td>
                <span class="LrzXr kno-fv">25 January 2018</span></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Cast"></asp:Label>
            </td>
            <td>
                &nbsp;Ranveer Singh,alia bhatt etc.</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Director"></asp:Label>
            </td>
            <td>
                Zoya akhtar</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Duration"></asp:Label>
            </td>
            <td>
                2h 44m</td>
        </tr>
    </table>
    <table class="style4">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" Height="43px" onclick="Button1_Click" 
            Text="BOOK NOW" Width="154px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        
<br />
<br />
</asp:Content>

