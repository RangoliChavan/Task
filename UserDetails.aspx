<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="OtobitTask1.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="Scripts/jquery-3.3.1.js"></script>


     <script>

        $(document).ready(function () {       


            $('#btnLogin').click(function () {
                 
        $.ajax({
             
              type: "Post",
             
             url: "http://localhost:52883/api/UserProfileAPI",
            
            contentType: "application/json; charset=utf-8",
            dataType: "json",
                headers:
                {
                
                    Authorization: 'Basic ' + str

                },

            success: function (response) {
                alert(response);
                  
            }
           ,
            failure: function (response) {
                alert(response);
            }
            
            }); 

            }); 




             

        });  

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Information</h1>
            User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="drpUserId" runat="server"></asp:DropDownList>
            <br />
            <br />
            <div>
                User Name <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <br />
            <br />
                Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                <br />
            <br />
                Password&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <br />
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdateEmail" runat="server" Text="Update EmailId" OnClick="btnUpdateEmail_Click" />
                <br />
            <br />

            </div>
        </div>
    </form>
</body>
</html>
