<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Money1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="contrainer" style="margin-top: 50px; margin-left: 200px; background-color: lightgray; width: 300px;">
        <div class="contrainer" style="margin-top:20px;margin-left:10px;">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="booking_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>

                    <br />
                    ชื่อ:
            <asp:Label ID="C_nameLabel" runat="server" Text='<%# Eval("C_name") %>' />
                    <br />
                    เบอร์โทร:
            <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    <br />
                    ชั้น:
            <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                    <br />
                    ที่นั่ง:
            <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
                    <br />
                    
                    จำนวนคน:
            <asp:Label ID="C_numberLabel" runat="server" Text='<%# Eval("C_number") %>' />
                    <br />
                    เวลา:
            <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
                    <br />
                    ประเภทการจอง:
            <asp:Label ID="type_nameLabel" runat="server" Text='<%# Eval("type_name") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="	SELECT        TOP (200) Booking.booking_id, Booking.C_name, Booking.phone_number, Booking.seat, Booking.floor, Booking.C_number, Booking.book_date_time, Booking.status_id, book_type.type_name
FROM Booking INNER JOIN book_type ON Booking.booking_id_type = book_type.booking_type_id where booking_id = @booking_id ">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="booking_id" QueryStringField="booking_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
            <br />
            <br />
        <div class="text-center">
            <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="กลับหน้าแรก" OnClick="Button2_Click" />
        </div>
    </div>

</asp:Content>

