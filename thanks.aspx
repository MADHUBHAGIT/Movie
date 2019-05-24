<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="boss">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" Text="Details Of Book Ticket" 
            style="font-size: x-large; color: #00FF00"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" Width="485px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="theatre" HeaderText="theatre" 
                    SortExpression="theatre" />
                <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" 
                    SortExpression="Cust_Email" />
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
            ConnectionString="<%$ ConnectionStrings:projectbdConnectionString2 %>" 
            SelectCommand="SELECT [id], [time], [date], [theatre], [Cust_Email] FROM [Cust_Movies] WHERE (([Cust_Email] = @Cust_Email) AND ([id] = @id))">
            <SelectParameters>
                <asp:SessionParameter Name="Cust_Email" SessionField="email" Type="String" />
                <asp:SessionParameter Name="id" SessionField="aid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
        <br />
        <asp:Label ID="Label3" runat="server" Text="PAyment Done Succesfuly !!"></asp:Label>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </div>
   </asp:Content>