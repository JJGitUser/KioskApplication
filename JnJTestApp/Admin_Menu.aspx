<%@ Page Title="Admin Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Menu.aspx.cs" Inherits="JnJTestApp.Admin_Menu" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/GSHR Logo2.png" Width="400px" />
    <h3>Menu Administrador</h3>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

  <form class="px-4 py-3">
    <div class="form-group">
      &nbsp;
  
<%--    <button type="submit" style="width:280px" class="btn btn-primary">Sign in</button>--%>
    <asp:ImageButton ID="Users" runat="server" Height="180px" ImageUrl="~/Pictures/new user.png" OnClick="Users_Click" Width="130px" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="Reports" runat="server" Height="180px" ImageUrl="~/Pictures/reports-removebg-preview.png" OnClick="Reports_Click" Width="130px" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" ImageUrl="~/Pictures/reports-removebg-preview.png" OnClick="Module_Click" Width="130px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="New Users" Font-Bold="true" Font-Size="Large"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Large" Text="Reports"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="New Users" Font-Bold="true" Font-Size="Large"></asp:Label>
        </div>
    <div class="form-group">
  
<%--    <button type=" style="width:280px" class="btn btn-primary">Sign in</button>--%>

  &nbsp;<br />
&nbsp;</div>
  
  </form>


</asp:Content>
