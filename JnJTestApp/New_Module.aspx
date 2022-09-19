<%@ Page Title="kiosk Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_Module.aspx.cs" Inherits="JnJTestApp.New_Module" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/GSHR Logo2.png" Width="400px" />

    <p>&nbsp;</p>

    <h3>Configuracion de Modulos</h3>

    <form  >
  <div class="form-group">
      <br />
      <br />
    <label for="exampleInputEmail1">Nombre de Modulo</label>
    <input type="text" class="form-control" id="NameModule"  placeholder="Nombre">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Direccion Url</label>
    <input type="url" class="form-control" id="Url"  placeholder="https://www.example.com/">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Imagen</label>
    <input type="file"  class="form-control" id="Image"  >
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Notas</label>
    <input type="text"  class="form-control" id="Nota"  >
  </div>
 
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="Habilitar" >
    <label class="form-check-label" for="exampleCheck1">Habilitar</label>
      <br />
      <br />
  </div>
  <button type="submit" style="width:280px" class="btn btn-primary">Enviar</button>
</form>

</asp:Content>
