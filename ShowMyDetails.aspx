<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMyDetails.aspx.cs" Inherits="OtobitTask1.ShowMyDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
             User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="drpUserId" runat="server" OnSelectedIndexChanged="drpUserId_SelectedIndexChanged"></asp:DropDownList>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btnShowMyProfile" runat="server" Text="ShowMyProfile" BackColor="Aqua"  />
           <br />
           <br />
           User Name <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <br />
            <br />
                Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                <br />
            <br />
                Password&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <br />
            <br />
       </div>
    </form>
</body>
</html>


 
