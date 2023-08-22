<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="SchoolManagement.AddStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            Add Staff
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>First Name</label>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Email ID</label>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Contact No</label>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button1" CssClass="btn btn-success" OnClick="Button1_Click" runat="server" Text="Button" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
