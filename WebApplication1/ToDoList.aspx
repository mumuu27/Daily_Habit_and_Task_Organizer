<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ToDoList.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card" style="background-color:antiquewhite">
                    <div class="card-header">
                        <h2>To-Do List</h2>
                    </div>
                    <div class="card-body">




                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Task" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                        <asp:Button CssClass="btn btn-success" ID="addTaskButton" runat="server" Text="Add Task" OnClick="addTaskButton_Click" />
                    </div>

                </div>

            </div>


            <div class="col-md-7">
                <div class="card" style="background-color:antiquewhite">
                    <div class="card-header">
                        <center>
                            <h2>Active Tasks</h2>
                            <br />
                        </center>
                    </div>

                    <div class="card-body">

                        <!--Task will be added here after clicking the add task button-->
                        <div class="container">
                            <br />
                            <asp:CheckBoxList ID="taskList" CssClass="list-group" runat="server" AutoPostBack="true" OnSelectedIndexChanged="taskList_SelectedIndexChanged"></asp:CheckBoxList>
                        </div>

                    </div>

                </div>
                <br>
                <div class="card"  style="background-color:antiquewhite">
                    <div class="card-header">
                        <center>
                            <h2>Completed Tasks</h2>
                            <br />
                        </center>
                    </div>

                    <div class="card-body">
                        <div class="container">
                            <br />
                            <asp:CheckBoxList ID="completedTaskList" CssClass="list-group" runat="server" AutoPostBack="true" OnSelectedIndexChanged="completedTaskList_SelectedIndexChanged"></asp:CheckBoxList>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div>


</asp:Content>
