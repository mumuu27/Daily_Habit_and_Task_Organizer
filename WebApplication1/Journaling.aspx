<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Journaling.aspx.cs" Inherits="WebApplication1.Journaling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .entry {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 20px;
        }

            .entry .date {
                font-weight: bold;
                color: #666;
                margin-bottom: 5px;
            }

            .entry .content {
                white-space: pre-line;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 style="font-family:'Arial Rounded MT'; font-style:oblique; font-weight:bolder; font-size:xx-large; font-palette:dark">Journaling</h1>
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h6>New Entry</h6>
                        <div class="form-group">

                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtEntry" runat="server" placeholder="Write..." TextMode="MultiLine" Rows="10"></asp:TextBox>
                            </div>

                        </div>
                        <asp:Button CssClass="btn btn-primary" ID="btnSaveEntry" runat="server" Text="Save Entry" OnClick="btnSaveEntry_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4>Recent Entries</h4>
                        <asp:Repeater ID="rptEntries" runat="server">
                            <ItemTemplate>
                                <div class="entry">
                                    <div class="date"><%# Eval("Date") %></div>
                                    <div class="content"><%# Eval("Content") %></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
