<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login_Admin.aspx.cs" Inherits="JnJTestApp.Login_Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-4" >
    </div>
      <div class="col-md-5" >

    <h2>&nbsp;</h2>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/GSHR Logo2.png" Width="400px" />
<%--    <h3>Bienvenido Kiosko</h3>--%>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

<%--  <form class="px-4 py-3">--%>
    <div class="form-group">
      <label for="WWID">WWID</label>
      <input type="Text" class="form-control" id="WWID" runat="server" name="WWID" placeholder="WWID">
    </div>
    <div class="form-group">
      <label for="exampleDropdownFormPassword1">Password</label>
      <input type="password" class="form-control" id="Pass" runat="server" name="Pass" placeholder="Password"><br />
&nbsp;</div>
    <div class="form-group">
           &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Messagelbl" runat="server" Text="Label" Visible="false" Font-Size="Larger"></asp:Label>

    &nbsp;</div>
  
    <button type="submit" runat="server" class="btn btn-primary" style="width:280px"  onserverclick="Verify_User" >Sign in</button>

<%--  </form>--%>
</div>
        <asp:SqlDataSource ID="db"  runat="server" ConnectionString="<%$ ConnectionStrings:DLMConnectionString %>" ></asp:SqlDataSource>


</asp:Content>
