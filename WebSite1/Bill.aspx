<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Money1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  
    <table class="nav-justified" style="height: 456px; margin-bottom: 0px; width: 58%; margin-left: 298px;">
        <tr>
            <td style="height: 384px; width: 653px">

            <img src="img/img01.jpg" class="circle" alt="Cinque Terre" width="445" height="316" >
                  <td style="border-style: groove; border-color: #000000; height: 384px; margin-left: 40px; background-color: #E8E8E8; color: #000000;">ชื่อ :
                เบอโทร :
                <asp ID="TextBox2" runat="server"></asp>
                <br />
                <br />
                ชั้น :
                ที่นั่ง :
                <br />
                <br />
                จำนวนคน :
               
                วันที่ :<br />
                <br />
                เวลา : ............ น.
               
                รูปแบบการจอง :
                <br />
                <br />
                ชื่ออาหารที่สั่ง :
               ราคา :
                <br />
                <br />
                <div class="col-sm-4" style="margin-left:50px">
                 <asp:Image ID="Image1" runat="server" Height="200px" Width="150px" BackColor="White" />
                </div>
                </td>
       
    </table>
     <br />
      <br />
      <a href="Booking.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Back</a>
      <a href="Succeed.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Next</a>
</asp:Content>

