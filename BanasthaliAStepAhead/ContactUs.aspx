<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BanasthaliAStepAhead.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 465px;
        }
        .auto-style5 {
            width: 136px;                                                                                                                                                                                                                                                                                                                                                                                                                                  
        }
        .auto-style6 {
            width: 625px;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style9 {
            width: 943px;
            height: 31px;
        }
        .auto-style10 {
            width: 136px;
            height: 33px;
        }
        
        .auto-style11 {
            width: 625px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
     <table class="auto-style1">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9"> </td>
                
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <B><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT US</h1></B>&nbsp;</tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <p>
                    <b>ROAD LINK :</b><br />
                    72 km. from Jaipur. 8 km. off. Jaipur-Kota Road at 65 km. stone. There are 14 buses of Rajasthan Roadways Transport Corporation at Jaipur-Banasthali route.
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    <b>RAIL LINK :</b><br />
                    Banasthali Newai Railway station is on the Jaipur-Swaimadhopur-Mumbai broad gauge line of the Western Railway.
                    <br />
                    It is equidistance from Jaipur and Swaimadhopur, 66 Kms from both.</p>
                <p>
                    <br />
                    Jaipur is on Delhi-Ahmedabad Broad-guage main line of Western Railway and there are direct trains to Jaipur from Delhi-Junction,
                    <br />
                    Agra Fort, Ahmedabad, Indore, Mumbai, Udaipur, Bikaner, Jodhpur, Chennai, Bangalore, Howrah etc.<br />
                    <br />
                    Swaimadhopur is on Delhi-Mumbai Central Broad gauge main line of the Western Railways. Their are direct trains to Swaimadhopur from Agra Fort also.</p>
                <p>
                    <br />
                </p>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <h3>&nbsp;</h3>
                <h3>&nbsp;</h3>
                <h3>Address</h3>
                <p>
                    Banasthali Vidyapith, P.O. Banasthali Vidyapith-304022 (Rajasthan)</p>
               
                <div>
                    <i class="fas fa-envelope"></i>
                    <h3>Email</h3>
                    <p>
                        Banasthalividyapith@banasthali.in</p>
                    
                </div>
                <div>
                    <i class="fas fa-phone-alt"></i>
                    <h3>Phone</h3>
                    <p>
                        +91 77xxxxxxxx</p>
                    <p>
                        &nbsp;</p>
                    
                </div>
            </td>
            <td>
                <br />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style10">
                &nbsp;
                <br />
            </td>
            <td class="auto-style11">&nbsp;<b>Enter Your E-mail</b><br />
                <br />
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="EmailTxt" runat="server" BackColor="White" ForeColor="Black" Width="292px" TextMode="Email" ></asp:TextBox>
                <br />
        <asp:RequiredFieldValidator ID="rfvEmailId" runat="server"
            ControlToValidate="EmailTxt" Display="Dynamic"
            ErrorMessage="Please enter Email Id" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="rgeEmailId" runat="server"
            ControlToValidate="EmailTxt" Display="Dynamic"
            ErrorMessage="Please enter valid email id format" ForeColor="Red"
            SetFocusOnError="True"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
            </td>
            <td class="auto-style6">&nbsp;<b>Enter Your Name</b><br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="NameTxt" runat="server" BackColor="White" ForeColor="Black" Width="292px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
            </td>
            <td class="auto-style6"><b>Your Message Here</b><br />
                <br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="MessageTxt" runat="server" BackColor="White" ForeColor="White" Width="293px" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="SendButton" runat="server" BackColor="#003399" ForeColor="White" Text="Send Message" Width="206px" OnClick="SendButton_Click" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
     </body>
</asp:Content>
