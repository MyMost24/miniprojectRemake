<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" >
        <div class="row">
            <div class="col-lg-6">
                
                    <div class="col-lg-12" style="margin-top : 10px;" >
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ชั้น1" />
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="ปิด" />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/ชั้น1.jpg" Height="550px" Visible="False" Width="500px" />
                    </div>
                    <div class="col-lg-12" style="margin-top : 10px;" >
                         
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ชั้น2"  />
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="ปิด" />
                        <asp:Image ID="Image2" runat="server" Height="550px" ImageUrl="~/img/ชั้น2.jpg" Visible="False" Width="500px" />  
                    </div>
                    <div class="col-lg-12" style="margin-top : 10px;" >
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="ชั้น3" />
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="ปิด" />
                        <asp:Image ID="Image3" runat="server" Height="550px" ImageUrl="~/img/ชั้น3.jpg" Visible="False" Width="500px" />
                    </div>
                
            </div>
                <div class="container" >
                    <div class="row">

            <div class="col-lg-6 fixed-top" style="border-color: #DBDBDB; border-style: groove; margin-top : 20px; background-color: #E8E8E8; font-size: 15px; color: #000000; text-transform: capitalize;">
                   ชื่อ :&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                เบอร์โทร :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                ชั้น :&nbsp;
                <asp:DropDownList ID="DropDownListFloor" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                ที่นั่ง :
                <asp:DropDownList ID="DropDownListSeat" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                จำนวนคน :
                <asp:TextBox ID="TextBox3" runat="server" Width="40px"></asp:TextBox>
                <br />
                <br />
                วันที่ :<asp:Calendar ID="Calendar1" runat="server" Height="158px" Width="296px" BackColor="#666666">
                       <DayHeaderStyle ForeColor="Red" />
                   </asp:Calendar>
                <br />
                เวลา :
                <input id="Text1" type="text" /> น.<br />
                <br />
                รูปแบบการจอง :
                <asp:DropDownList ID="DropDownListBookingType" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <a href="Booking_food.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Next</a>
              
              </div>
                        </div>
    </div>
        
           

        </div>
    
    
   

    </div>
</asp:Content>
