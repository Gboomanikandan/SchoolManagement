<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="SchoolManagement.AddSubject" %>

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
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            Add Subject Details Page
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Subject Name"></asp:Label>
                                <asp:TextBox ID="txt_subjectName" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <br />                           
                            <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
