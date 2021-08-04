<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Elib.adminLogin" %>
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
                                <img src="images/adminuser.png" width="150px"/>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Adim Login</h3>
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
                                <label class="form-label">Member Id</label>
                                <asp:TextBox class="form-control" runat="server" placeholder="Member Id"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <asp:TextBox class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="d-grid gap-2">
                                <asp:Button id="button1" class="btn btn-success btn-lg" runat="server" Text="LogIn" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
