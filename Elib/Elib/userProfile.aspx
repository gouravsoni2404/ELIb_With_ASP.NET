<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="Elib.userProfile" %>

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
                                    <img src="images/generaluser.png" width="100px"/>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                    <h3>Your Profile</h3>
                                    <span>Account Status -</span>
                                    <asp:Label ID="Label1" CssClass="badge bg-success" runat="server" Text="Label"></asp:Label>
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
                            <asp:TextBox ID="fullName" class="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Date of Birth</label>
                            <asp:TextBox ID="dob" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Contact Number</label>
                            <asp:TextBox ID="contactNum" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Email Id</label>
                            <asp:TextBox ID="emailId" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">State</label>
                            <asp:DropDownList ID="stateDrpDn" class="form-control" runat="server">
                                <asp:ListItem Text="Select" Value="select" />
                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                <asp:ListItem Text="Assam" Value="Assam" />
                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Goa" Value="Goa" />
                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                            </asp:DropDownList>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">City</label>
                            <asp:TextBox ID="cityName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>


                        <div class="col-md-4 mb-3">
                            <label class="form-label">Pin Code</label>
                            <asp:TextBox ID="pinCode" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label class="form-label">Full Address</label>
                            <asp:TextBox ID="fullAdd" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row my-3">
                        <div class="col-md-2 mx-auto">
                            <span class="badge rounded-pill bg-info text-dark">User Credentials</span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">User Id</label>
                            <asp:TextBox ID="userId" CssClass="form-control" runat="server" placeholder="Member Id" Enabled="false"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Old Password</label>
                            <asp:TextBox ID="userPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="SingleLine" Enabled="false"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">New Password</label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6 d-grid gap-2 mx-auto">
                            <asp:Button ID="signupBtn" class="btn btn-primary btn-lg" runat="server" Text="Update" />
                        </div>
                    </div>

                </div>

            </div>

            <div class="col-md-7 card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                            <img src="images/books.png" width="100px"/>
                            </center>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Your Issued Books</h3>
                                <span class="badge bg-info text-dark">Info about book due date</span>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr /> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:GridView ID="GridView1" CssClass="table table-striped table-hover table-border" runat="server"></asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
