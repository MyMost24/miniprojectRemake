<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Q_Booking.aspx.cs" Inherits="Q_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 20px" >
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">

           <ItemTemplate>
                <span style="" class="col-lg-3">ชื่อ:
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
                วัน-เวลา:
                <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
                <br />
                ประเภทการจอง:
                <asp:Label ID="type_nameLabel" runat="server" Text='<%# Eval("type_name") %>' />
                <br />               
                <br />
                <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Viwe More" CommandName="Viwe_Button" CommandArgument='<%# Eval("booking_id") %>' />
                <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Clear" CommandName="Clear_Button" CommandArgument='<%# Eval("booking_id") %>' />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div style="" id="itemPlaceholderContainer" runat="server">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="" class="row">
                </div>
            </LayoutTemplate>


        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT        TOP (200) Booking.booking_id, Booking.C_name, Booking.phone_number, Booking.floor, Booking.seat, Booking.C_number, Booking.book_date_time, Booking.status_id, book_type.type_name, Booking.booking_id_type
FROM            Booking INNER JOIN
                         book_type ON Booking.booking_id_type = book_type.booking_type_id
WHERE status_id = '1'">
        </asp:SqlDataSource>
    </div>
</asp:Content>

