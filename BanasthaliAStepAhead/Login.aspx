<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BanasthaliAStepAhead.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="UserValidation.js" type="text/javascript"> 
        function userValid() {  
        
 var Username, Password;    
Username = document.getElementById("txtUserId").value;       
Password = document.getElementById("txt2").value;    
if (Username == '' &&  Password == '') {    
    alert("Enter All Fields");    
    return false;    
}    
if (Username == '') {    
    alert("Username Is Required");    
    return false;    
}    
   
if (Password == '')    
{    
    alert("Password Is Required");    
    return false;    
}    
  
  return true;    
}  


</script>
    <style type="text/css">
        #Button1  {
            font-size:larger;
        }
      #Button2  {
            font-size:larger;
        }
       #Button5 {
            font-size:larger;
            
        }
     
       #Button4  {
            font-size:larger;
            float:right;
        }
     
        #Label3{
            color:darkblue;
            font-size:50px;
        }
      
        #Label5{
            color:darkblue;
            font-size:30px;
        }
        #Label6{
            color:darkblue;
            font-size:30px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            width: 157px;
        }
        .auto-style5 {
            height: 31px;
            width: 157px;
        }
        .auto-style7 {
            width: 240px;
        }
        .auto-style8 {
            height: 31px;
            width: 240px;
        }
        .auto-style9 {
            height: 34px;
            width: 240px;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
            width: 157px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style13 {
            width: 240px;
            height: 33px;
        }
        .auto-style14 {
            width: 157px;
            height: 33px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
            width: 240px;
        }
        .auto-style17 {
            height: 29px;
            width: 157px;
        }
        .auto-style23 {
            width: 8px;
        }
        .auto-style24 {
            height: 29px;
            width: 8px;
        }
        .auto-style25 {
            height: 33px;
            width: 8px;
        }
        .auto-style26 {
            height: 31px;
            width: 8px;
        }
        .auto-style27 {
            height: 34px;
            width: 8px;
        }
        .auto-style28 {
            width: 83px;
        }
        .auto-style29 {
            height: 29px;
            width: 83px;
        }
        .auto-style30 {
            height: 33px;
            width: 83px;
        }
        .auto-style31 {
            height: 31px;
            width: 83px;
        }
        .auto-style32 {
            height: 34px;
            width: 83px;
        }
        .auto-style38 {
            height: 52px;
        }
        .auto-style39 {
            width: 240px;
            height: 52px;
        }
        .auto-style40 {
            width: 157px;
            height: 52px;
        }
        .auto-style41 {
            width: 8px;
            height: 52px;
        }
        .auto-style42 {
            width: 83px;
            height: 52px;
        }
        .auto-style44 {
            height: 37px;
            width: 157px;
        }
        .auto-style45 {
            height: 37px;
        }
        .auto-style46 {
            height: 37px;
            width: 240px;
        }
        .auto-style47 {
            height: 37px;
            width: 8px;
        }
        .auto-style48 {
            height: 37px;
            width: 83px;
        }
        .auto-style50 {
            height: 52px;
            width: 120px;
        }
        .auto-style51 {
            height: 31px;
            width: 120px;
        }
        .auto-style52 {
            width: 120px;
        }
        .auto-style53 {
            height: 29px;
            width: 120px;
        }
        .auto-style54 {
            height: 33px;
            width: 120px;
        }
        .auto-style55 {
            height: 37px;
            width: 120px;
        }
        .auto-style56 {
            height: 34px;
            width: 120px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
        <tr>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style40"></td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style41"></td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style38">
                <asp:Button ID="SignUpButton" runat="server" BackColor="#003399" ForeColor="White" Text="Signup" PostBackUrl="~/Signup.aspx" OnClick="SignUpButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style5"></td>
            <td class="auto-style51"></td>
            <td class="auto-style26"></td>
            <td class="auto-style31">
                <asp:Label ID="Label7" runat="server" Text="Login " Style="color: darkblue; font-size:40px;" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style54">
                <asp:Label ID="Label8" runat="server" Text="Role" Style=" font-size:20px;"></asp:Label>
            </td>
            <td class="auto-style23"></td>
            <td class="auto-style28">  <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" BackColor="#003399" EnableTheming="True" ForeColor="White"  ValidateRequestMode="Enabled" ValidationGroup="g1" >
                    <asp:ListItem Selected="True"></asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Head of Department</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Warden</asp:ListItem>
                </asp:DropDownList>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style53"></td>
            <td class="auto-style24"></td>
            <td class="auto-style29"></td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                </td>
            <td class="auto-style54">
                <asp:Label ID="Label5" runat="server" Text="Email" Style=" font-size:20px;"></asp:Label>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style30">
                <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style46"></td>
            <td class="auto-style44"></td>
            <td class="auto-style55"></td>
            <td class="auto-style47"></td>
            <td class="auto-style48"></td>
            <td class="auto-style45"></td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style11">
                </td>
            <td class="auto-style56">
                <asp:Label ID="Label6" runat="server" Text="Password" Style=" font-size:20px;"></asp:Label>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style32">
                <asp:TextBox ID="PwdTxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PwdTxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">
                <asp:LinkButton ID="ForgetPwdButton" runat="server" PostBackUrl="~/ForgetPassword.aspx">Forget Password?</asp:LinkButton>
            </td>
            <td class="auto-style51">
                <asp:Button ID="LoginButton" runat="server" BackColor="#003399" ForeColor="White" Text="Login"  OnClick="LoginButton_Click" />
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style52">
        
                
                    
            </td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
