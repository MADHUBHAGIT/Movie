<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerDetails.aspx.cs" Inherits="CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" Width="872px" Height="282px">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" >
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" >
            </asp:BoundField>
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" >
            </asp:BoundField>
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" 
                SortExpression="Mobileno" >
            </asp:BoundField>
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" >
            </asp:BoundField>
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" >
            </asp:BoundField>
            <asp:BoundField DataField="ActivationCode" HeaderText="ActivationCode" 
                SortExpression="ActivationCode" >
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
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectbdConnectionString8 %>" 
    SelectCommand="SELECT [Name], [Email], [Password], [Mobileno], [Location], [Status], [ActivationCode] FROM [Registerationdb]">
</asp:SqlDataSource>

    
<br />
<br />
<br />

    
</asp:Content>

