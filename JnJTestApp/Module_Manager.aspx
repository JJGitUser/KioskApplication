<%@ Page Title="kiosk Module" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module_Manager.aspx.cs" Inherits="JnJTestApp.Module_Manager" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/GSHR Logo2.png" Width="400px" />

    <p>&nbsp;</p>


     
  <div class="col-md-5" style="left: -1px; top: 3px">
           
          <h3>Modulos</h3>


  <div class="form-group">
      <br />
      <br />
    <label for="exampleInputEmail1">Nombre de Modulo</label>
    <input type="text" runat="server" name="ID" class="form-control" id="ID"  placeholder="">
  </div>


  <div class="form-group">
    <label for="exampleInputEmail1">Direccion URL</label>
    <input type="Text" runat="server" name="Name" class="form-control" id="Name" placeholder="https://test_jnj.com/"  >
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Imagen</label>
    <input type="Text" runat="server" name="Pass"  class="form-control" id="Pass"   >
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Descripcion</label>
    <input type="email" runat="server" name="Email"  class="form-control" id="Email" ><br />
&nbsp;</div>
 
        
  
  <button type="submit" runat="server" class="btn btn-primary" style="width:280px"  onserverclick="AddUser_click" >Grabar</button>

      <br />
      <br />
     

       <div class="form-group">
           &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Messagelbl" runat="server" Text="Label" Visible="false" Font-Size="Larger"></asp:Label>

    &nbsp;</div>
  </div>
   
  <div class="col-md-7" >
        



       <asp:GridView ID="GVModule" runat="server" class="table table-hover"  OnPageIndexChanging="GVusers_PageIndexChanging"  AllowPaging="True" PageSize="5" AutoGenerateColumns="False" CellPadding="4" OnRowCancelingEdit="GVusers_RowCancelingEdit" OnRowEditing="GVusers_RowEditing" OnRowUpdating="GVusers_RowUpdating" BackColor="White" GridLines="Horizontal" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" ForeColor="Black">  
            <Columns>  
               
                <asp:TemplateField HeaderText="ID" Visible="false">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Menu_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Name" class="form-control" Width="200px" runat="server" Text='<%#Eval("Menu_Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Direccion">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Path" runat="server" Text='<%#Eval("Menu_Path") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Path" class="form-control" runat="server" Width="200px" Text='<%#Eval("Menu_Path") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Descripcion">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Notes" runat="server" Text='<%#Eval("Notes") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Notes" class="form-control" runat="server" Width="200px" Text='<%#Eval("Notes") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                 <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" class="form-control" runat="server" Text="Editar" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" class="form-control" runat="server" Text="Actualizar" CommandName="Update" OnClientClick="return confirm('Estas seguro de modificar esta informacion?');"  />  

                        <br />

                        <asp:Button ID="btn_Cancel" class="form-control" runat="server" Text="Cancelar" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
     
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#ACACAC" Font-Bold="True" ForeColor="White"  />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" Font-Size="Large" />
            <PagerSettings Mode="NextPrevious"  />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

     
        </asp:GridView>  
  </div>

    <asp:SqlDataSource ID="db"  runat="server" ConnectionString="<%$ ConnectionStrings:DLMConnectionString %>" ></asp:SqlDataSource>


</asp:Content>
