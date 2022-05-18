<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="DemoAssignment.WelcomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 275px">
    
        <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>, 

        <asp:Label ID="lblName" runat="server"></asp:Label> ! &nbsp;</br>

        
        <asp:Label ID="Label2" runat="server" Text="Your Age is"></asp:Label>

        &nbsp;
        <asp:Label ID="lblAge" runat="server"></asp:Label>

        <asp:Label ID="lblDob" runat="server" Visible="False"></asp:Label>

        <br />
        <br />
        <br />
       

        <asp:Label ID="lblcount" runat="server"></asp:Label>
       

    </div>
    </form>
</body>
</html>
