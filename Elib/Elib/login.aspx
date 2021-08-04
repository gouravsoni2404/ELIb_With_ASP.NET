<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Elib.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="images/generaluser.png" width="150px"/>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Member Login</h3>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <div class="mb-3">
                                <label class="form-label">User Name</label>
                                <asp:TextBox ID="txtUserName" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <asp:TextBox ID="txtPassword" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="d-grid gap-2">
                                <asp:Button id="btnLogin" class="btn btn-success btn-lg" runat="server" Text="LogIn" OnClick="btnLogin_Click" />
                                <a href="signup.aspx" class="d-grid gap-2"><input id="Button2" class="btn btn-primary btn-lg" type="button" value="Sign Up" /></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
