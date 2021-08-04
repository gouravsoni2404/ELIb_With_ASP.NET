<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authorManagement.aspx.cs" Inherits="Elib.authorManagement" %>
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
                                <h3>Author Details</h3>
                                <img src="images/writer.png" width="100px" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Account Id</label>
                            <div class="input-group">
                                <asp:TextBox ID="accId" class="form-control" runat="server" placeholder="Account Id"></asp:TextBox>
                                <asp:Button ID="btnGo" CssClass="btn btn-primary" runat="server" Text="GO" />
                            </div>
                        </div>

                        <div class="col-md-8 mb-3">
                            <label class="form-label">Author Name</label>
                            <asp:TextBox ID="txtAuthorName" class="input-group form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 d-grid gap-2 mx-auto">
                            <asp:Button ID="btnAdd" class="btn btn-success btn-lg" runat="server" Text="Add" />
                        </div>
                         <div class="col-md-4 d-grid gap-2 mx-auto">
                            <asp:Button ID="btnUpdate" class="btn btn-primary btn-lg" runat="server" Text="Update" />
                        </div>
                         <div class="col-md-4 d-grid gap-2 mx-auto">
                            <asp:Button ID="btnDelete" class="btn btn-danger btn-lg" runat="server" Text="Delete" />
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-6 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col text-center">
                            <h3>Author List</h3>
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
