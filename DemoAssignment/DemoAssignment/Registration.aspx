<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DemoAssignment.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 634px;
        }
        .style1
        {
            height: 60px;
        }
        .style2
        {
            height: 60px;
            text-align: center;
            width: 363px;
        }
        .style3
        {
            height: 395px;
        }
        .style4
        {
            height: 395px;
            width: 363px;
        }
        .style9
        {
            width: 55px;
            height: 34px;
        }
        .style11
        {
            width: 55px;
            height: 33px;
        }
        .style15
        {
            width: 55px;
            height: 44px;
        }
        .style18
        {
            height: 34px;
            width: 222px;
        }
        .style19
        {
            height: 33px;
            width: 222px;
        }
      
        .style22
        {
            width: 55px;
            height: 46px;
        }
        .style23
        {
            height: 46px;
            width: 222px;
        }
        .style24
        {
            width: 55px;
            height: 48px;
        }
        .style25
        {
            height: 48px;
            width: 222px;
        }
        .style26
        {
            width: 55px;
            height: 50px;
        }
        .style27
        {
            height: 50px;
            width: 222px;
        }
        .style28
        {
            width: 55px;
            height: 55px;
        }
        .style29
        {
            height: 55px;
            width: 222px;
        }
    </style>
</head>
<body style="height: 597px">
    <form id="form1" runat="server">
    <table style="width: 100%; height: 474px;">
        <tr>
            <td class="style1">
            </td>
            <td bgcolor="#00CC66" class="style2">
                <strong>Registration Form</strong></td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style4" valign="top">
                <table style="width: 129%; height: 96px;">
                    <tr>
                        <td class="style22">
                            First Name</td>
                        <td class="style23">
                            <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
                        &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Last Name</td>
                        <td class="style18">
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            Date Of Birth</td>
                        <td class="style19">
                            <asp:TextBox ID="TxtDate" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp;DD/MM/YY</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            Email ID</td>
                        <td class="style27">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="EnterValidEmail" ForeColor="Red" 
                                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                           Password</td>
                        <td class="style25">
                            <asp:TextBox ID="Txtpass" runat="server" TextMode="Password" Width="161px"></asp:TextBox>
                        &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="EnterPassword" ForeColor="Red" ControlToValidate="Txtpass"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="style28">
                          Confirm Password</td>
                        <td class="style29">
                            <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="ConfirmPassWord" ForeColor="Red" 
                                ControlToValidate="txtConfirmPass"></asp:RequiredFieldValidator>
                         </td>
                    </tr>
                     <td class="style15">
                         </td>
                        <td class="style21">
                           
                            <asp:Button ID="btnSubmit" runat="server" Text="Register" Width="77px" 
                                onclick="btnSubmit_Click" />
                            &nbsp;&nbsp;
                            <asp:Button ID="btnReset" runat="server" Text="Reset" Width="70px" 
                                onclick="btnReset_Click" />
                           
                         &nbsp;</td>
                    </tr>
                     



                </table>
                <center><asp:Label ID="lblmsg" runat="server" ForeColor="#006600"></asp:Label></center>
         
    </form>
</body>
</html>
