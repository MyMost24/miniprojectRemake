<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" >
        <div class="row">
            <div class="col-lg-6" style=" background-color:darkgray;">
                
                    <div class="col-lg-12" style="margin-top : 10px;" >
                        <img src="img/ชั้น1.jpg" width="400" height="300" style="width: 500px; height: 400px;">
                    </div>
                    <div class="col-lg-12" style="margin-top : 10px;" >
                        <img src="img/ชั้น2.jpg" width="400" height="300" style=" height: 400px; width: 500px;">
                    </div>
                    <div class="col-lg-12" style="margin-top : 10px;" >
                        <img src="img/ชั้น3.jpg" width="400" height="300" style="width: 500px; height: 400px;">
                    </div>
                
            </div>

            <div class="col-lg-6 fixed-top" style="margin-top : 20px ;">
                   ชื่อ :&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                เบอโทร :
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
                วันที่ :<asp:Calendar ID="Calendar1" runat="server" Height="158px" Width="296px"></asp:Calendar>
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
                <br />
                <a href="Booking_food.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Next</a>
              
              </div>
    </div>
        
           

        </div>
    
    
   

</asp:Content>
