<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Money1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="booking_id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            booking_id:
            <asp:Label ID="booking_idLabel" runat="server" Text='<%# Eval("booking_id") %>' />
            <br />
            C_name:
            <asp:Label ID="C_nameLabel" runat="server" Text='<%# Eval("C_name") %>' />
            <br />
            phone_number:
            <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
            <br />
            seat:
            <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
            <br />
            floor:
            <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
            <br />
            C_number:
            <asp:Label ID="C_numberLabel" runat="server" Text='<%# Eval("C_number") %>' />
            <br />
            book_date_time:
            <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
            <br />
            type_name:
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
    <br />
    <br />
    <a href="Booking.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Back</a>
    <a href="Succeed.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Confirm</a>
</asp:Content>

