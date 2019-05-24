<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            margin-top: 5;
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
						<h2>Login</h2>
						<ul>
							<li style="width: 42px"><a href="Homepage.aspx">Home</a>
							</li>
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					
	<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Enter valid mail id" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
								<asp:TextBox ID="txtemail" runat="server" autocomplete="off" placeholder=Email></asp:TextBox>
							</div>
						</div>
                        	<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
                            &nbsp

                            </div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtpass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
								<asp:TextBox ID="txtpass" runat="server" autocomplete="off" placeholder=Password TextMode="Password"></asp:TextBox>
							</div>
						</div>
                       
						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper prs_contact_input_wrapper2">
								<ul>
									 <li><asp:Button ID="btnsubmit" runat="server" Text="Login" 
                                         onclick="btnsubmit_Click" CssClass="style1" Width="178px"/>
									</li>
								</ul>
							</div>
						</div>


                        						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper prs_contact_input_wrapper2">
								<ul>
									<li><a href="Register.aspx">Register</a>
									</li>
								</ul>
							    <p>
                                    &nbsp;</p>
                                <p>
                                    &nbsp;</p>
                                <p>
                                    &nbsp;</p>
							</div>
						</div>


                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        	    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>

                    
				
					</div>
                    </div>
                    </div>
                    </div>
    

        

</asp:Content>

