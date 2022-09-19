<%@ Page Title="Visitas Kiosko" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kiosk_log.aspx.cs" Inherits="JnJTestApp.Kiosk_log" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/GSHR Logo2.png" Width="400px" />

    <p>&nbsp;</p>

    <h3>Historial de Visitas</h3>
    <p>&nbsp;</p>
    <p>
         <label for="exampleInputEmail1">Estacion</label>
    </p>
    <div class="col-md-5" style="left: 0px; top: 0px">
                <label for="exampleInputEmail1">Modulo</label>

        <asp:DropDownList ID="Module_ddl" CssClass="form-control" AppendDataBoundItems="true"  runat="server" Height="34px" Width="280px">
           <asp:ListItem Value="99">-All Modules-</asp:ListItem>

        </asp:DropDownList>


     <p>
         <label for="exampleInputEmail1">Estacion</label>

    <asp:DropDownList ID="Station_ddl" CssClass="form-control" AppendDataBoundItems="true"  runat="server" Height="34px" Width="280px">
           <asp:ListItem Value="99">-All Stations-</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
         <label  for="exampleInputEmail1" >Filtro por Fechas</label>

<%--        <input type="date" runat="server" class="form-control" id="Date1" name="StartDate" > --%>
        <asp:CheckBox ID="Filter_chck" runat="server"  OnCheckedChanged="Filter_chck_CheckedChanged" AutoPostBack="true" />
        
<br />
<%--         <label for="exampleInputEmail1">Fecha de Inicio </label>--%>
        <asp:Label ID="Startlbl" runat="server" Font-Bold="true" Text="Fecha de Inicio" Visible="false"></asp:Label>
<input type="date" runat="server" id="StartDate" name="StartDate" Class="form-control" visible="false" />
       
    </p>

     <p>
<%--         <label for="exampleInputEmail1" >Fecha de Termino</label>--%>
         <asp:Label ID="Endlbl" runat="server" Font-Bold="true" Text="Fecha de Termino" Visible="false"></asp:Label>

    <input type="date" runat="server" class="form-control" id="EndDate" name="EndDate" visible="false"  >

         
     </p>
    <p>

         &nbsp;</p>

        <button type="submit" style="width:280px" class="btn btn-primary btn-lg active" runat="server" onserverclick="Search_Click" >Buscar</button>

  
    </div>
        <div class="col-md-7" >
        
      <table width="90%">
          <tr>
        <td align="right">
              <asp:ImageButton ID="btnExport" runat="server"  CssClass ="btn btn-secundary"  OnClick = "ExportToExcel" Width="50px" Height="30px" ToolTip="Exportar a Excel" ImageUrl="~/Pictures/excel.png" />

            </td>
              </tr>
          <tr>
        <td>
    <asp:GridView ID="GvVisitas" runat="server" HorizontalAlign="Center" HeaderStyle-CssClass="GridHeader" AutoGenerateColumns="False" class="table table-hover" DataKeyNames="Menu_id,Date_Start,Date_End " AllowPaging="True" OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
    <Columns>
        <asp:TemplateField>
            <FooterTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/Pictures/excel.png" Width="32px" OnClick = "ExportToExcel"/>
            </FooterTemplate>
            <ItemTemplate>
                <img alt="" style="cursor: pointer; width: 20px; height: 20px;" src="Pictures/plus-20.png" />
                <asp:Panel ID="pnlVisitas" runat="server" Style="display: none" ScrollBars="Auto">
                    <asp:GridView ID="gvDetails" runat="server" HeaderStyle-CssClass="GridHeader" AutoGenerateColumns="false" class="ChildGrid" BackColor="White" GridLines="Horizontal" BorderColor="#FFFFFF" BorderStyle="None" BorderWidth="0px" ForeColor="Black">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="Modulo" HeaderText="Modulo" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="Hostname" HeaderText="Estacion" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="Location_Name" HeaderText="Locacion" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="Date" HeaderText="Fecha" />
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
                     
                        </asp:Panel>
                    </ItemTemplate>
                 </asp:TemplateField>
                <asp:BoundField ItemStyle-Width="150px" DataField="Menu_Id" HeaderText="Menu" Visible="false" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
                <asp:BoundField ItemStyle-Width="300px" DataField="Visitas" ControlStyle-ForeColor="Red" HeaderText="Visitas"  ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center" >
<ControlStyle ForeColor="Red"></ControlStyle>

<FooterStyle HorizontalAlign="Center"></FooterStyle>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="300px"></ItemStyle>
        </asp:BoundField>
               <asp:BoundField ItemStyle-Width="300px" DataField="Modulo" ControlStyle-ForeColor="Red" HeaderText="Modulo" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<ControlStyle ForeColor="Red"></ControlStyle>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="300px"></ItemStyle>
        </asp:BoundField>
            </Columns>
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"  />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" Font-Size="Large" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            </td>
              </tr>
            <tr>
            <td align="right">
                &nbsp;</td>
         </tr>

            <tr>
            <td align="right">
                &nbsp;</td>
         </tr>

      </table>  

        </div>
    

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--            <asp:ImageButton ID="btnExport" runat="server" BackColor="YellowGreen" CssClass ="btn btn-primary btn-lg active" Text="Export To Excel" OnClick = "ExportToExcel" Width="150px" Height="40px" />--%>
  

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "Pictures/minus-20.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "Pictures/plus-20.png");
        $(this).closest("tr").next().remove();
    });
</script>

<%--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#chkPassport").click(function () {
            if ($(this).is(":checked")) {
                $("#StartDate").removeAttr("disabled");
                $("#StartDate").focus();
            } else {
                $("#StartDate").attr("disabled", "disabled");
            }
        });
    });
</script>--%>

    <script type="text/javascript">
        $('#chkPassport').change(function() {
                if($(this).is(":checked")) {
                    $('#End').prop('disabled',false);
                }
              else
        {  $('#End').prop('disabled',true);} 
            });
    </script>



<br />

  

    <style type="text/css">

    .GridHeader
    {
        text-align:center !important;   
    }
   </style>

    <asp:SqlDataSource ID="db" runat="server" ConnectionString="<%$ ConnectionStrings:DLMConnectionString %>" ></asp:SqlDataSource>
</asp:Content>
