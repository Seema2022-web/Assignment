<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoAssignment.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
      
        .style1
        {
            height: 66px;
        }
        .style2
        {
            height: 334px;
        }
       
      
        .style3
        {
            width: 132px;
        }
       
      
        .style4
        {
            width: 89px;
        }
       
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 437px">
       
                
       
        <table style="width: 100%; height: 258px;">
            <tr>
                <td class="style1">
                </td>
                <td align="center" bgcolor="#CC99FF" class="style1">
                    <strong>Login Form</strong></td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style2" valign="top">
                   
                          
                             
                    <table style="width: 100%; height: 152px;">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                UserName</td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server" Width="140px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Please Enter User Name" ControlToValidate="txtUserName" 
                                    ForeColor="#FF5050"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                Password</td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="141px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Please Enter Password" ControlToValidate="txtPassword" 
                                    ForeColor="#FF5050"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                               
                                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                    Width="71px" onclick="btnLogin_Click" />
                               
                            &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Reset" Width="65px" 
                                    onclick="Button2_Click" />
                               
                                &nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="LblMessage" runat="server"></asp:Label>
                                <br />
                                <br />
                                <br />
&nbsp;
                               
                            </td>
                        </tr>
                    </table>
                   
                          
                             
        </table>
       
                
       
    </div>
    </form>
</body>
</html>
