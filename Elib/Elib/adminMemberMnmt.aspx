<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberMnmt.aspx.cs" Inherits="Elib.adminMemberMnmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-5 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Member Details</h3>
                                <img src="images/publisher.png" width="100px" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label class="form-label">Member Id</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtMemberId" class="form-control" runat="server" placeholder="ID"></asp:TextBox>
                                <asp:Button ID="btnGo" CssClass="btn btn-primary" runat="server" Text="GO" />
                            </div>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Full Name</label>
                            <asp:TextBox ID="txtFullName" class="form-control" runat="server" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <label class="form-label">Account Status</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtAccStatus" class="form-control" runat="server" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                <asp:LinkButton ID="btnSuccess" CssClass="btn btn-success me-1 ms-1" runat="server" Text="S"> <i class="fas fa-check-circle"></i> </asp:LinkButton>
                                <asp:LinkButton ID="btnWarning" CssClass="btn btn-warning me-1" runat="server" Text="P"> <i class="fas fa-stop"></i> </asp:LinkButton>
                                <asp:LinkButton ID="btnDanger" CssClass="btn btn-danger" runat="server" Text="D"> <i class="fas fa-times-circle"> </i> </asp:LinkButton>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label class="form-label">DOB</label>
                            <asp:TextBox ID="txtDob" class="form-control" runat="server" TextMode="Date" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Mobile No.</label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Number" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <label class="form-label">Email</label>
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" TextMode="Email" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">State</label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">City</label>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Pin Code</label>
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server" TextMode="Number" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label class="form-label">Full Address</label>
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col mb-3 d-grid">
                            <asp:Button ID="btnDelUser" class="btn btn-danger btn-lg" runat="server" Text="Delete User Permantly" ReadOnly="true" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col text-center">
                            <h3>Publisher List</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
