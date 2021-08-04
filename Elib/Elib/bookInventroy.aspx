<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookInventroy.aspx.cs" Inherits="Elib.bookInventroy" %>

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
                                <h3>Book Details</h3>
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
                        <div class="col mb-3">
                            <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label class="form-label">Book Id</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtBookId" class="form-control" runat="server" placeholder="ID"></asp:TextBox>
                                <asp:Button ID="btnGo" CssClass="btn btn-primary" runat="server" Text="GO" />
                            </div>
                        </div>

                        <div class="col-md-9 mb-3">
                            <label class="form-label">Book Name</label>
                            <asp:TextBox ID="txtBookName" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label class="form-label">Language</label>
                            <asp:DropDownList class="form-control mb-3" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="English" Value="English" />
                                <asp:ListItem Text="Hindi" Value="Hindi" />
                                <asp:ListItem Text="Marathi" Value="Marathi" />
                                <asp:ListItem Text="French" Value="French" />
                                <asp:ListItem Text="German" Value="German" />
                                <asp:ListItem Text="Urdu" Value="Urdu" />
                            </asp:DropDownList>

                            <label>Publisher Name</label>
                            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                            </asp:DropDownList>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Author Name</label>
                            <asp:DropDownList class="form-control mb-3" ID="DropDownList3" runat="server">
                                <asp:ListItem Text="A1" Value="a1" />
                                <asp:ListItem Text="a2" Value="a2" />
                            </asp:DropDownList>

                            <label>Publish Date</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Genre</label>
                            <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="4">
                                <asp:ListItem Text="Action" Value="Action" />
                                <asp:ListItem Text="Adventure" Value="Adventure" />
                                <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                <asp:ListItem Text="Self Help" Value="Self Help" />
                                <asp:ListItem Text="Motivation" Value="Motivation" />
                                <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                <asp:ListItem Text="Wellness" Value="Wellness" />
                                <asp:ListItem Text="Crime" Value="Crime" />
                                <asp:ListItem Text="Drama" Value="Drama" />
                                <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                <asp:ListItem Text="Horror" Value="Horror" />
                                <asp:ListItem Text="Poetry" Value="Poetry" />
                                <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                <asp:ListItem Text="Romance" Value="Romance" />
                                <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                <asp:ListItem Text="Suspense" Value="Suspense" />
                                <asp:ListItem Text="Thriller" Value="Thriller" />
                                <asp:ListItem Text="Art" Value="Art" />
                                <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                <asp:ListItem Text="Health" Value="Health" />
                                <asp:ListItem Text="History" Value="History" />
                                <asp:ListItem Text="Math" Value="Math" />
                                <asp:ListItem Text="Textbook" Value="Textbook" />
                                <asp:ListItem Text="Science" Value="Science" />
                                <asp:ListItem Text="Travel" Value="Travel" />
                            </asp:ListBox>
                        </div>

                    </div>

                    <div class="row mt-3">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Edition</label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Unit Cost</label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Pages</label>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Actual Stock</label>
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Current Stock</label>
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label class="form-label">Issued Books</label>
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label class="form-label">Book Discription</label>
                            <asp:TextBox ID="TextBox8" class="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-4 d-grid">
                            <asp:Button ID="btnAdd" CssClass="btn btn-success btn-lg" runat="server" Text="Add" />
                        </div>

                        <div class="col-md-4 d-grid">
                            <asp:Button ID="btnUpdate" CssClass="btn btn-primary btn-lg" runat="server" Text="Update" />
                        </div>

                        <div class="col-md-4 d-grid">
                            <asp:Button ID="btnDelete" CssClass="btn btn-danger btn-lg" runat="server" Text="Delete" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7 card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                            <h3>Book Inventroy List</h3>
                        </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
