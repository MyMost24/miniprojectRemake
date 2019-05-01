<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <div class="row">
            <div class="col-sm-5">

                <div class="col-lg-12" style="margin-top: 10px;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ชั้น1" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="ปิด" />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/img1.jpg" Height="550px" Visible="False" Width="500px" />
                </div>
                <div class="col-lg-12" style="margin-top: 10px;">

                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ชั้น2" />
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="ปิด" />
                    <asp:Image ID="Image2" runat="server" Height="550px" ImageUrl="~/img/img2.jpg" Visible="False" Width="500px" />
                </div>
                <div class="col-lg-12" style="margin-top: 10px;">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="ชั้น3" />
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="ปิด" />
                    <asp:Image ID="Image3" runat="server" Height="550px" ImageUrl="~/img/img3.jpg" Visible="False" Width="500px" />
                </div>

            </div>

            <div class="col-lg-3">
                <div class="container">


                    <div class="col-sm-4 fixed-top" style="border-color: #DBDBDB; border-style: groove; margin-top: 20px; background-color: #E8E8E8; font-size: 15px; color: #000000; text-transform: capitalize;">
                        <h2>จองโต๊ะ</h2>
                        <br />
                        ชื่อ :&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        เบอร์โทร :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        ชั้น :&nbsp;
                <asp:DropDownList ID="DropDownListFloor" runat="server" OnSelectedIndexChanged="DropDownListFloor_SelectedIndexChanged" AutoPostBack="true">
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
                <asp:DropDownList ID="DropDownListHour" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownListMin" runat="server"></asp:DropDownList>
                        น.
                <br />
                        <br />
                        รูปแบบการจอง :
                <asp:DropDownList ID="DropDownListBookingType" runat="server" DataSourceID="SqlDataSource1" DataTextField="type_name" DataValueField="booking_type_id">
                </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT * FROM [book_type]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="Button2_Click" />

                    </div>

                </div>
            </div>
            <div class="col-sm-3">
                <div style="margin-top:30px;">
                <h1 style="background-position: 20px; background-color: #000000; color: #FFFFFF" class="text-center">โต๊ะที่จองแล้ว</h1>
                </div>
                    <div style="width: auto; height:650px; overflow:scroll; background-color:white;" >
                    <div style="margin-left:30px;margin-top:30px; width: 348556416px;">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" BorderColor="Black" GridLines="Horizontal"  Width="240px" >
                        <ItemTemplate>
                            ชื่อ:
                        <asp:Label ID="C_nameLabel" runat="server" Text='<%# Eval("C_name") %>' />
                            <br />
                            ชั้น:
                        <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                            <br />
                            ที่นั่ง:
                        <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
                            <br />
                            
                        <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [C_name], [floor], [seat], [book_date_time] FROM [Booking]
WHERE booking_id_type = '1'"></asp:SqlDataSource>
                
                    </div>
                </div>
            </div>









        </div>
    </div>
</asp:Content>
