<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Elib.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                    <img src="../images/generaluser.png" style="width: 100px"/>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                    <h3>User SignUp</h3>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" runat="server" id="txtFullName" class="form-control" placeholder="Full Name" required />
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Date of Birth</label>
                            <input type="date" runat="server" id="txtDob" class="form-control" required />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Contact Number</label>
                            <input type="number" runat="server" id="txtContactNo" class="form-control" required />
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email Id</label>
                            <input type="email" runat="server" id="txtEmailId" class="form-control" runat="server" required />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">State</label>
                            <select class="form-select" id="cmbState" runat="server">
                                <option selected disabled value="">Select</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Rajasthan">Rajasthan</option>
                            </select>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">City</label>
                            <input type="text" id="txtCity" class="form-control" runat="server" required />
                        </div>


                        <div class="col-md-4 mb-3">
                            <label class="form-label">Pin Code</label>
                            <input type="number" id="txtPinCode" class="form-control" runat="server" required />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label class="form-label">Full Address</label>
                            <input type="text" id="txtFullAdd" class="form-control" runat="server" required />
                        </div>
                    </div>

                    <div class="row my-3">
                        <div class="col-1 m-auto">
                            <span class="badge rounded-pill bg-info text-dark">User Credentials</span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">User Id</label>
                            <input type="text" id="txtUserId" class="form-control" runat="server" required />
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" id="txtUserPassword" class="form-control" runat="server" required />
                        </div>
                    </div>

                    <div class="row">
                        <div class="d-grid gap-2">
                            <asp:Button ID="btnSignup" class="btn btn-success btn-lg" runat="server" Text="Sign Up" OnClick="signupBtn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
