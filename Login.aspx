<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OtobitTask1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
             <h1>Fill the information below</h1>
             User Name:

            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

            <br />

            <br />
            Password:&nbsp;&nbsp;
            <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
           <br />
            <br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#33CC33" ForeColor="White " OnClick="btnLogin_Click"/>
            &nbsp &nbsp
            <asp:Button ID="btnSignup" runat="server" Text="Sign Up" BackColor="#0000CC" ForeColor="White" OnClick="btnSignup_Click" />
        </div>
    </form>
</body>
</html>
