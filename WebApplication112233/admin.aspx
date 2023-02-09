<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication112233.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h1> Ratings and Rated weapons</h1>
    <asp:Panel ID="Panel1" runat="server">

        <asp:GridView ID="GridView1" runat="server"
            CssClass="table"
            AutoGenerateSelectButton="true"
            SelectedRowStyle-BackColor="LightGreen"
            SelectedRowStyle-Font-Bold="true"
            SelectedRowStyle-ForeColor="DarkGreen"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>

        <br />

        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor="Brown"></asp:Label>

        <br />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Label ID="Label3" runat="server" Text="Ratings:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Update weapon" CssClass="btn btn-warning" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Delete selected weapon" CssClass="btn btn-danger" OnClick="Button2_Click" />
        
        <br />
        <br />

        <asp:Label ID="Label4" runat="server" Text="" Font-Bold="true" ForeColor="Green"></asp:Label>
    </asp:Panel>

    </asp:Content>