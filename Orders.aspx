<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" Height="110px" Width="941px">
        <Columns>
            <asp:BoundField DataField="Payment_Status" HeaderText="Payment_Status" 
                SortExpression="Payment_Status" >
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="date" 
                SortExpression="date" >
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" >
            </asp:BoundField>
            <asp:BoundField DataField="time" HeaderText="time" 
                SortExpression="time" >
            </asp:BoundField>
            <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" 
                SortExpression="Cust_Email" >
            </asp:BoundField>
            <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                SortExpression="MovieName" >
            </asp:BoundField>
            <asp:BoundField DataField="MovieDate" HeaderText="MovieDate" 
                SortExpression="MovieDate" >
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
    ConnectionString="<%$ ConnectionStrings:projectbdConnectionString11 %>" 
    
        
    
        SelectCommand="SELECT [Payment_Status], [date], [Name], [time], [Cust_Email], [MovieName], [MovieDate], [Price] FROM [Cust_Details]">
</asp:SqlDataSource>

</asp:Content>

