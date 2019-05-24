<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="seats.aspx.cs" Inherits="seats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style1
{
    align="center"
}




    .style3
    {
        width: 92px;
    }
    .style4
    {
        width: 482px;
        height: 167px;
    }
    .style5
    {
        width: 95px;
    }
    .style6
    {
        width: 100px;
    }




</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1">
          
        </table>
        <table class="style4">
            <tr>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter  date" ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddltime" runat="server">
                        <asp:ListItem Selected="True">Select Time</asp:ListItem>
                        <asp:ListItem>9.00 Am</asp:ListItem>
                        <asp:ListItem>12.00 Pm</asp:ListItem>
                        <asp:ListItem>3.00 Pm</asp:ListItem>
                        <asp:ListItem>8.00 Pm</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="ddltime" ErrorMessage="Enter time" ForeColor="Red" 
                        Operator="NotEqual" ValueToCompare="Select Time"></asp:CompareValidator>
                    
                </td>
            </tr>
            
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<asp:Label ID="Label5" runat="server" Text="Theatre"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddltheatre" runat="server">
            <asp:ListItem>Select Theatre</asp:ListItem>
            <asp:ListItem>Dombivli</asp:ListItem>
            <asp:ListItem>ulhasnagar</asp:ListItem>
            <asp:ListItem>ambernath</asp:ListItem>
            <asp:ListItem>badlapur</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="ddltheatre" ErrorMessage="Enter Theatre" ForeColor="Red" 
            Operator="NotEqual" ValueToCompare="Select Theatre"></asp:CompareValidator>
        <br />
        <br />
    <table border="1" class="style3" style="margin-left: 215px">
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
                    style="text-align: center" Text="1" Width="61px" />
            </td>
            <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="34px" onclick="Button2_Click" 
                    Text="2" Width="61px" />
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="34px" onclick="Button3_Click" 
                    Text="3" Width="61px" />
            </td>
            <td style="width: 99px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="34px" onclick="Button4_Click" 
                    Text="4" Width="61px" />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Height="34px" onclick="Button5_Click" 
                    Text="5" Width="61px" />
            </td>
            <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Height="34px" onclick="Button6_Click" 
                    Text="6" Width="61px" />
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Height="34px" onclick="Button7_Click" 
                    Text="7" Width="61px" />
            </td>
            <td style="width: 99px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" Height="34px" onclick="Button8_Click" 
                    Text="8" Width="61px" />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Height="34px" onclick="Button9_Click" 
                    Text="9" Width="61px" />
            </td>
            <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" Height="34px" onclick="Button10_Click" 
                    Text="10" Width="61px" />
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button11" runat="server" Height="34px" onclick="Button11_Click" 
                    Text="11" Width="61px" />
            </td>
            <td style="width: 99px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button12" runat="server" Height="34px" onclick="Button12_Click" 
                    Text="12" Width="61px" />
                .</td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" Height="34px" onclick="Button13_Click" 
                    Text="13" Width="66px" />
            </td>
            <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button14" runat="server" Height="34px" onclick="Button14_Click" 
                    Text="14" Width="61px" />
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button15" runat="server" Height="34px" onclick="Button15_Click" 
                    Text="15" Width="61px" />
            </td>
            <td style="width: 99px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button16" runat="server" Height="34px" onclick="Button16_Click" 
                    Text="16" Width="61px" />
            </td>
        </tr>
    </table>
        <br />
        <br />
    </div>
    <asp:Button ID="Button17" runat="server" Height="44px" onclick="Button17_Click" 
        Text="Book Now" Width="132px" 
        style="font-weight: 700; font-size: large; color: #FFFFFF; margin-left: 332px; background-color: #00FF00" />
 
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
 
</asp:Content>