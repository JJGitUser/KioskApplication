<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JnJTestApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <script language="javascript" type="text/javascript">

        function openNewWin(url) {

            var top = window.screen.height - 300;
            top = top > 0 ? top / 2 : 0;

            var left = window.screen.width - 400;
            left = left > 0 ? left / 2 : 0;

            var x = window.open(url, 'mynewwin',"Upload Chapter content", "width=1000,height=300" + ",top=" + top + ",left=" + left);
            x.moveTo(left, top);
            x.focus();
        }
    </script>

     <div class="col-md-2">
         <table style="width: 100%;">
             <tr>
                 <td >
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td >
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Image ID="Image4" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="40px" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Image ID="Image5" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="40px" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Image ID="Image6" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="40px" />
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td >
                <asp:ImageButton ID="ImageButton7" CssClass="btn-secundary" Width="170px" Height="120px" ImageUrl="~/Pictures/workday-logo.jpg" runat="server" OnClick="Module1_Click" />
                 </td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="150px" />
                 </td>
                 <td class="modal-sm" style="width: 400px">
                     <asp:Image ID="Image2" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="150px" />
                 </td>
                 <td>&nbsp;</td>
                 <td>
                 <asp:ImageButton ID="ImageButton3" runat="server" CssClass="btn-secundary" Width="93px" Height="78px" ImageUrl="~/Pictures/5bc65f76383961cc1500000d_EHScudo.png" OnClick="Module1_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                <asp:ImageButton ID="ImageButton4" CssClass="btn-secundary" Width="96px" Height="91px" ImageUrl="~/Pictures/5bc64ef6383961cc1500000c_regalo antiguedad.png" runat="server" OnClick="Module2_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                <asp:ImageButton ID="ImageButton5" CssClass="btn-secundary" Width="110px" Height="72px" ImageUrl="~/Pictures/5bc64af5383961cc1500000b_3ee.png" runat="server" OnClick="Module3_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                <asp:ImageButton ID="ImageButton1" CssClass="btn-secundary" Width="101px" Height="89px" ImageUrl="~/Pictures/5e4b18c1cadf70d809000001_promociones.png" runat="server" OnClick="Module4_Click" />
                 </td>
             </tr>
             <tr>
                 <td >
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                     &nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text="Good Saves"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="Label2" runat="server" Text="Premios por Anttiguedad"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="JE Portal"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="Label4" runat="server" Text="Programa Crece"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td >
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                     &nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td >
                <asp:ImageButton ID="ImageButton8" CssClass="btn-primary" Width="170px" Height="120px" ImageUrl="~/Pictures/Kronos.png" runat="server" OnClick="Module5_Click" />
                 </td>
                 <td>
                     <asp:Image ID="Image3" runat="server" ImageUrl="~/Pictures/Blank_button.JPG" Width="60px" />
                 </td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                 <asp:ImageButton ID="ImageButton10" runat="server" CssClass="btn-secundary" Width="93px" Height="78px" ImageUrl="~/Pictures/5bc65f76383961cc1500000d_EHScudo.png" OnClick="Module1_Click" />
                 </td>
                 <td>&nbsp;</td>
                 <td>
                <asp:ImageButton ID="ImageButton11" CssClass="btn-secundary" Width="96px" Height="91px" ImageUrl="~/Pictures/5bc64ef6383961cc1500000c_regalo antiguedad.png" runat="server" OnClick="Module2_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                <asp:ImageButton ID="ImageButton12" CssClass="btn-secundary" Width="101px" Height="89px" ImageUrl="~/Pictures/5e4b18c1cadf70d809000001_promociones.png" runat="server" OnClick="Module4_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td >
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label5" runat="server" Text="Good Saves"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label6" runat="server" Text="Premios por Anttiguedad"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="Label7" runat="server" Text="Programa"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                <asp:ImageButton ID="ImageButton9" CssClass="btn-primary" Width="170px" Height="120px" ImageUrl="~/Pictures/AskGS.png" runat="server" OnClick="Module5_Click" />
                 </td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">
                    

                         <video  loop ="loop"  controls="controls" autoplay="autoplay" style="height: 224px; width: 350px; position: relative; top: -200px; left: 32px; ">
                         <source src="Pictures/Medical%20Devices%20Touching%20People's%20Lives%20Everyday.mp4" type="video/mp4" /></video>
                    
                 
                 <td class="modal-sm" style="width: 400px">
                     <br>

                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
<%--                <asp:ImageButton ID="ImageButton2" CssClass="btn-primary" Width="170px" Height="120px" runat="server" OnClick="Module5_Click" />--%>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td>
<%--                <asp:ImageButton ID="ImageButton6" CssClass="btn-primary" Width="170px" Height="120px" runat="server" OnClick="Module6_Click"  />--%>
                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td class="modal-sm" style="width: 400px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>

            <p>
                 &nbsp;</p>
        </div>


        <asp:SqlDataSource ID="db" runat="server" ConnectionString="<%$ ConnectionStrings:DLMConnectionString %>" ></asp:SqlDataSource>
   
    <asp:HiddenField ID="Hidden_ModuleID" runat="server" />
    <asp:HiddenField ID="Hidden_Url" runat="server" />


</asp:Content>
