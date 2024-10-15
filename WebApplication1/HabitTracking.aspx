<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HabitTracking.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-5">
            <!-- creating habit -->

            <div class="card">
                <div class="card-body">
                    <h2>Create New Habit</h2>

                    <div class="form-group">
                        <label for="txtHabitName">Habit Name:</label>
                        <input type="text" class="form-control" id="txtHabitName" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="txtDescription">Description:</label>
                        <textarea class="form-control" id="txtDescription" rows="3" runat="server"></textarea>
                    </div>
                    <div class="form-group d-grid gap-2">
                        <asp:Button CssClass="btn btn-info" ID="Button3" runat="server" Text="Create Habit" OnClick="Button3_Click" />

                    </div>
                </div>

            </div>
        </div>
        <!-- list of habits -->

        <br />
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>List of Habits</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LIFECLOCKdbConnectionString2 %>" SelectCommand="SELECT * FROM [Habits]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="HabitName" HeaderText="HabitName" SortExpression="HabitName" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />

        <a href="homepage.aspx" style="text-align: left !important;">Back to home</a>
        <br />
    </div>

</asp:Content>
