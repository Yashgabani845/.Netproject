<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Form</title>
    <link rel="stylesheet" type="text/css" href="design.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate-unobtrusive/3.2.11/jquery.validate.unobtrusive.min.js"></script>

    <script type="text/javascript">
        function validateForm() {
            var name = document.getElementById('<%= name.ClientID %>').value.trim();
            var username = document.getElementById('<%= username.ClientID %>').value.trim();
            var password = document.getElementById('<%= password.ClientID %>').value.trim();
            var role = document.getElementById('<%= role.ClientID %>').value;

            if (name === "" || username === "" || password === "" || role === "") {
                alert("All fields are required.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="signup_form" runat="server">
        <div class="container">
            <h2>Sign Up</h2>
            <div class="form-group">
                <label for="name">Name:</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="name"
                    ErrorMessage="Name is required"
                    ForeColor="Red"
                    CssClass="error"
                    Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="username"
                    ErrorMessage="Username is required"
                    ForeColor="Red"
                    CssClass="error"
                    Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="password"
                    ErrorMessage="Password is required"
                    ForeColor="Red"
                    CssClass="error"
                    Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <asp:DropDownList ID="role" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Please select role" Value="" />
                    <asp:ListItem Text="Admin" Value="admin" />
                    <asp:ListItem Text="User" Value="user" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    runat="server"
                    ControlToValidate="role"
                    InitialValue=""
                    ErrorMessage="Please select a role"
                    ForeColor="Red"
                    CssClass="error"
                    Display="Dynamic" />
            </div>
            <div class="form-group">
                <asp:Button
                    ID="signupButton"
                    runat="server"
                    Text="Sign Up"
                    CssClass="form-control"
                    OnClientClick="return validateForm();" />
            </div>
        </div>
    </form>
</body>
</html>
