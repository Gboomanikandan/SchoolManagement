<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Library.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">
                        Login Page
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txt_userName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-success" OnClick="Button1_Click" />
                    </div>

                    <br />
                    <div class="card-footer">
                        <asp:Label ID="errorMsg" runat="server" Text="" CssClass="text-bg-danger"></asp:Label>
                    </div>
                    
                </div>

            </div>

        </div>


           
        </div>
       
    </form>
</body>
</html>
