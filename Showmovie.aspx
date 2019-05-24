<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Showmovie.aspx.cs" Inherits="Showmovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

<br />

<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
    CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:BoundField DataField="MovieID" HeaderText="MovieID" 
            SortExpression="MovieID" />
        <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
            SortExpression="MovieName" />
        <asp:BoundField DataField="MovieType" HeaderText="MovieType" 
            SortExpression="MovieType" />
        <asp:ImageField DataImageUrlField="MovieImage" HeaderText="Movie Image">
        </asp:ImageField>
        <asp:BoundField DataField="MovieDate" HeaderText="MovieDate" 
            SortExpression="MovieDate" />
        <asp:BoundField DataField="MovieTime" HeaderText="MovieTime" 
            SortExpression="MovieTime" />
        <asp:BoundField DataField="TotalSeat" HeaderText="TotalSeat" 
            SortExpression="TotalSeat" />
        <asp:BoundField DataField="Price" HeaderText="Price" 
            SortExpression="Price" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectbdConnectionString5 %>" 
        SelectCommand="SELECT * FROM [movielists]"></asp:SqlDataSource>

        <br />
    <br />
    <br />
    <br />

</asp:Content>
