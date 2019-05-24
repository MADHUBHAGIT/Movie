<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
<div class="prs_title_main_sec_wrapper">
		<div class="prs_title_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="prs_title_heading_wrapper">
						<h2>Registeration</h2>
						<ul>
							<li><a href="Default.aspx">Home</a>
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
							    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Enter only character" ForeColor="Red" 
                                    ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
							<asp:TextBox ID="txtname" runat="server" autocomplete="off" placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="reqName"  Display ="Dynamic" ErrorMessage="Name Field is required" ForeColor="#FF4040" controltovalidate="txtname" />
							</div>
						</div>
                        	
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:TextBox ID="txtemail" runat="server" autocomplete="off" textmode="Email" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1"  Display ="Dynamic" ErrorMessage="Email Field is required" ForeColor="#FF4040" controltovalidate="txtemail" />
							</div>
						    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Enter valid Email id" 
                                ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
						</div>

                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:TextBox ID="txtpass" runat="server" autocomplete="off" textmode="Password" placeholder=Password></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2"  Display ="Dynamic" ErrorMessage="Password Field is required" ForeColor="#FF4040" controltovalidate="txtpass" />
							</div>
						</div>
                       

                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtpass1" ErrorMessage="Re-Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
								<asp:TextBox ID="txtpass1" runat="server" autocomplete="off" textmode="Password" placeholder="ReEnter Password" ></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                           ControlToCompare="txtpass" ControlToValidate="txtpass1" 
                            ErrorMessage="Password is not same" ForeColor="Red" ></asp:CompareValidator>
							</div>
						</div>

                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                    ControlToValidate="txtcontact" ErrorMessage="Enter 10 digit number" 
                                    ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="Red"></asp:RegularExpressionValidator>
								<asp:TextBox ID="txtcontact" runat="server" textmode="Number" placeholder="Mobile No"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3"  Display ="Dynamic" ErrorMessage="Mobile No Field is required" ForeColor="#FF4040" controltovalidate="txtcontact" />
							</div>
						</div>

                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper">
								<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                    ControlToValidate="txtcity" ErrorMessage="Enter only charcter" ForeColor="Red" 
                                    ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
								<asp:TextBox ID="txtcity" runat="server" autocomplete="off"  placeholder="City"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4"  Display ="Dynamic" ErrorMessage="City Field is required" ForeColor="#FF4040" controltovalidate="txtcity" />
							</div>
						</div>
						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="prs_contact_input_wrapper prs_contact_input_wrapper2">
								<ul>
                                    <asp:Button ID="Button1" runat="server" Text="Register" 
                                        onclick="Button1_Click" ForeColor="#FF3300" />
									</li>
								</ul>
							</div>
						</div><br />
                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        	    <asp:Label ID="Label1" runat="server" Text="" 
                                    style="font-weight: 700; font-size: x-large; color: #00FF00"></asp:Label>
                                <br />
                                <br />
                                <br />
                                </div>
				
					</div>
                    </div>
                    </div>
                    </div>
    
</asp:Content>

