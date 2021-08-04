<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBookIssueing.aspx.cs" Inherits="Elib.adminBookIssueing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

            <div class="col-md-5 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Book Issuing</h3>
                                <img src="images/books.png" width="100px" />
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
                            <label class="form-label">Member Id</label>
                            <asp:TextBox ID="txtMemberId" class="input-group form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Book Id</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtBookId" class="form-control" runat="server" placeholder="Account Id"></asp:TextBox>
                                <asp:Button ID="btnBookIdGo" CssClass="btn btn-primary" runat="server" Text="GO" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Member Name</label>
                            <asp:TextBox ID="txtMamberName" class="form-control" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">Book Name</label>
                            <asp:TextBox ID="txtBookName" class="form-control" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Start Date</label>
                            <asp:TextBox ID="txtStartDate" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label class="form-label">End Date</label>
                            <asp:TextBox ID="txtEndDate" class="form-control" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 d-grid">
                            <asp:Button ID="btnIssue" class="btn btn-primary btn-lg" runat="server" Text="Issue" />
                        </div>
                        <div class="col-md-6 d-grid">
                            <asp:Button ID="btnReturn" class="btn btn-success btn-lg" runat="server" Text="Return" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col text-center">
                            <h3>Issued Booked List</h3>
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
