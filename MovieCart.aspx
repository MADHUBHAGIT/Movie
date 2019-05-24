<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="MovieCart.aspx.cs" Inherits="MovieCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 531px;
        }
        .style2
        {
            height: 39px;
        }
        .style3
        {
            height: 44px;
        }
        .style4
        {
            font-size: x-large;
        }
    .style5
    {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
<div class="prs_title_main_sec_wrapper">
		<div class="prs_title_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="prs_title_heading_wrapper">
						<h2 class="style4">Movie List</h2>
						<ul>
							<li><a href="Default.aspx">Home</a>
							</li>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
   

    <div style="height: 838px; text-align: center;">
    
        <asp:Label ID="Label1" runat="server" Text="MOVIE BOOKING SYSTEM" 
            style="font-weight: 700; font-size: x-large; background-color: #FFFFFF"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Welcome To Ticket Booking Protocol" 
            style="color: #000000; font-size: large; background-color: #FFFFFF"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <span class="style5">You Have No of Movie</span>
        <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddMovie.aspx">Show Movie</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" 
            onitemcommand="DataList1_ItemCommand" RepeatColumns="4" 
            RepeatDirection="Horizontal" Height="1174px" Width="630px" BackColor="Red" 
            CaptionAlign="Right">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            MovieID :<asp:Label ID="Label4" runat="server" Text='<%# Eval("MovieID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            Movie Name :<asp:Label ID="Label5" runat="server" 
                                Text='<%# Eval("MovieName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            Movie Type :<asp:Label ID="Label6" runat="server" 
                                Text='<%# Eval("MovieType") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="208px" 
                                ImageUrl='<%# Eval("MovieImage") %>' Width="206px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="text-align: center">
                            Date :<asp:Label ID="Label7" runat="server" Text='<%# Eval("MovieDate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" style="text-align: center">
                            Duration :<asp:Label ID="Label8" runat="server" Text='<%# Eval("MovieTime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" style="text-align: center">
                            Seats :<asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            Price :<asp:Label ID="Label9" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("movieid") %>' 
                                CommandName="addmovie" onclick="Button1_Click" 
                                Height="55px" 
                                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #FFFFFF; background-color: #00FF00" 
                                Width="175px" Text="Submit" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projectbdConnectionString %>" 
            SelectCommand="SELECT * FROM [movielists]"></asp:SqlDataSource>
    
    </div>
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
        <br />
        <br />
        <br />
   </div>
   </asp:Content>