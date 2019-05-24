<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">'
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="container">
    

                                        <br />



    <table class="style1">
        <tr>
            <td class="style2">
    

    <asp:TextBox ID="txtname" runat="server" placeholder="Name Of Card Holder" class="form-control input-md"> </asp:TextBox>
                                        </td>
            <td>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" Display="Dynamic"
                                            ErrorMessage="Name Field is required" ForeColor="#FF4040" 
                                            ControlToValidate="txtname" ValidationGroup="vd1" />
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic"
 ErrorMessage="Only characters allowed"  ForeColor="#FF4040" ControlToValidate="txtname" 
ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="style2">

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
            <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                                            ValidationExpression="[0-9]{16}" ErrorMessage="Entered Number Must be 16 digit"
                                            Display="Dynamic" ForeColor="#FF4040" ValidationGroup="vd1"></asp:RegularExpressionValidator>
                                              <br />
                                              <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                            display ="Dynamic" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TextBox1" ForeColor="#FF4040" ErrorMessage="Value must be a whole number" />
                                        <br />
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" Display="Dynamic"
                                            ErrorMessage="This Field Cannot be empty" ForeColor="#FF4040" 
                                            ControlToValidate="TextBox1" ValidationGroup="vd1"  />

                                            </td>
        </tr>
        <tr>
            <td class="style2">

                                            <asp:DropDownList ID="txtmonth" 
            runat="server" placeholder="MM" class="form-control input-md" Width="144px">
                                            <asp:ListItem Text="JAN"></asp:ListItem>
                                            <asp:ListItem Text="FEB"></asp:ListItem>
                                            <asp:ListItem Text="MARCH"></asp:ListItem>
                                            <asp:ListItem Text="APRIL"></asp:ListItem>
                                            <asp:ListItem Text="MAY"></asp:ListItem>
                                            <asp:ListItem Text="JUNE"></asp:ListItem>
                                            <asp:ListItem Text="JULY"></asp:ListItem>
                                            <asp:ListItem Text="AUG"></asp:ListItem>
                                            <asp:ListItem Text="SEP"></asp:ListItem>
                                            <asp:ListItem Text="OCT"></asp:ListItem>
                                            <asp:ListItem Text="NOV"></asp:ListItem>
                                            <asp:ListItem Text="DEC"></asp:ListItem>
                                                 </asp:DropDownList>
                                        </td>
            <td>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" Display="Dynamic"
                                            ErrorMessage="This Field Cannot be empty" ForeColor="#FF4040" ControlToValidate="txtmonth" ValidationGroup="vd1"/>

                                             </td>
        </tr>
        <tr>
            <td class="style2">

                                             <asp:DropDownList ID="txtyear" runat="server" placeholder="MM" class="form-control input-md">
                                            <asp:ListItem Text="2019"></asp:ListItem>
                                            <asp:ListItem Text="2020"></asp:ListItem>
                                            <asp:ListItem Text="2021"></asp:ListItem>
                                            <asp:ListItem Text="2022"></asp:ListItem>
                                            <asp:ListItem Text="2023"></asp:ListItem>
                                            <asp:ListItem Text="2024"></asp:ListItem>
                                            <asp:ListItem Text="2025"></asp:ListItem>
                                            <asp:ListItem Text="2026"></asp:ListItem>
                                            <asp:ListItem Text="2027"></asp:ListItem>
                                            <asp:ListItem Text="2028"></asp:ListItem>
                                            <asp:ListItem Text="2029"></asp:ListItem>
                                            <asp:ListItem Text="2030"></asp:ListItem>
                                                 </asp:DropDownList>
                                        </td>
            <td>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" Display="Dynamic"
                                            ErrorMessage="This Field Cannot be empty" ForeColor="#FF4040" ControlToValidate="txtyear" ValidationGroup="vd1"/>
                                            </td>
        </tr>
        <tr>
            <td class="style2">
                                            <asp:TextBox ID="txtcvv" runat="server" placeholder="CVV" class="form-control input-md"> </asp:TextBox>
                                        </td>
            <td>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" Display="Dynamic"
                                            ErrorMessage="This Field Cannot be empty" ForeColor="#FF4040" ControlToValidate="txtcvv" ValidationGroup="vd1" />
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcvv"
                                            ValidationExpression="[0-9]{3,4}" ErrorMessage="Entered A Valid CVV" Display="Dynamic"
                                            ForeColor="#FF4040" ValidationGroup="vd1"> </asp:RegularExpressionValidator>
                                                <br />
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" display ="Dynamic" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="txtcvv" ForeColor="#FF4040" ErrorMessage="Value must be a whole number" />


            </td>
        </tr>
        <tr>
            <td class="style2">


   <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click"  ValidationGroup="vd1"
            style="text-align: left" Text="Pay" Width="141px" 
            CssClass="acount-btn" />


                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </div>
   </asp:Content>