<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AddMovie.aspx.cs" Inherits="AddMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height: 1411px; text-align: center; margin-bottom: 65px;">
    
        <asp:Label ID="Label1" runat="server" Text="Movie Ticket Booking"></asp:Label>
        <br />
        <br />
        You Have Booking Movie
        <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MovieCart.aspx">Previous Page</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black" Height="337px" 
            onrowdeleting="GridView1_RowDeleting1" ShowFooter="True" Width="1101px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-left: 92px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="movieid" HeaderText="MovieID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="moviename" HeaderText="Movie Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="movietype" HeaderText="Movie Type">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="movieimage" HeaderText="Movie Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="moviedate" HeaderText="Movie Date">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="movietime" HeaderText="Movie Time">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalseat" HeaderText="Total Seat" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                <asp:BoundField DataField="price" 
                    HeaderText="Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
    
        <asp:Button ID="Button1" runat="server" Text="Select Seats" CommandName="seats" 
            PostBackUrl="~/seats.aspx" Height="67px" 
            style="font-size: x-large; color: #FFFFFF; background-color: #00FF00" 
            Width="227px" onclick="Button1_Click" />
        
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>