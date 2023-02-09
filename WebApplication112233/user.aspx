<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebApplication112233.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome!</h1>

    <asp:Panel ID="Panel1" runat="server">
        <h3>Offer</h3>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
            CssClass="table"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="Data Source=DESKTOP-AHIL4K3\\SQLEXPRESS;Initial Catalog=Oruzarnica;Integrated Security=True"
            SelectCommand="SELECT naziv,serijskiBroj,serijskiBrojMunicije FROM Oruzje ORDER BY serijskiBroj DESC"></asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <h3>Price</h3>

        <asp:GridView ID="GridView2" runat="server"
            CssClass="table" 
            DataSourceID="SqlDataSource2"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="Data Source=DESKTOP-AHIL4K3\\SQLEXPRESS;Initial Catalog=Oruzarnica;Integrated Security=True"
            SelectCommand="SELECT naziv,vrsta,m FROM cenaOruzja ORDER BY m DESC"></asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <h3>Insert impressions</h3>

        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Impressions:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Insert impressions" CssClass="btn btn-primary" OnClick="Button1_Click" />
        <br />
        <br />

        <asp:Label ID="Label3" runat="server" Text="" Font-Bold="true" ForeColor="Green"></asp:Label>
    </asp:Panel>
</asp:Content>