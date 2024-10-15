<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement .aspx.cs" Inherits="WebApplication1.Admin_Member_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" style="width: 100px" />
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Go</asp:LinkButton>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-3">
                                <label>Full name </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full name " ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Account Status </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="Textbox21" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success m-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning m-1" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-danger m-1" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                    Date of Birth
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact Number </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox22" runat="server" placeholder="Contact Number" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>
                                    E-mail ID
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-mail ID" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Country</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server" placeholder="Country" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    City
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    Post Code
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Post Code" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Full Adress </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Adress" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                        <center>
                                            <div class="form-group d-grid gap-2">
                                                <asp:Button CssClass="btn btn-danger " ID="Button2" runat="server" Text="Delete user permanantly" OnClick="Button2_Click" />
                                            </div>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <br />

                <a href="homepage.aspx" style="text-align: left !important;">Back to home</a><br />
                <br />
            </div>


            <!-- EI ONGSHO CHANGE KORBOOO  -->
            <!-- _______________________________________________  -->
            <!-- ________________________________________________  -->


            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LIFECLOCKdbConnectionString %>" 
                                    SelectCommand="SELECT * FROM [member_master_tb1]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

</asp:Content>
