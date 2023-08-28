<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parentsform.aspx.cs" Inherits="SchoolManagement.Parentsform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            Parents Form
                        </div>
                        <div class="card-body">

                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
                                <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
                                <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="EmailID"></asp:Label>
                                <asp:TextBox ID="txt_emailid" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="ContactNo"></asp:Label>
                                <asp:TextBox ID="txt_contactno" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                <asp:TextBox ID="txt_address" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Role"></asp:Label>

                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>

                            </div>



                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </form>
</body>
</html>
