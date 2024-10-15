<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_log_in.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            
            <div class="row">
                
                <div class="col-md-6 mx-auto">
                    <div class="card" style="background-color:antiquewhite">

                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="imgs/user-avatar-with-check-mark.png" style="width: 150px"/>                                 
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
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
                                    <label> Admin Id</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>



                                    </div>
                                    <label>
                                         Password
                                    </label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group d-grid gap-2">
                                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
                    <br />

                    <a href="homepage.aspx" style="text-align: left !important;">Back to home</a><br />
                    <br />
                </div>
               
            </div>

            
        </div>

</asp:Content>
