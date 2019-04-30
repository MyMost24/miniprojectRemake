<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Q_Booking.aspx.cs" Inherits="Q_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 20px" >
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <td runat="server" style="margin-right: 20px;">ชื่อ :
                <asp:Label ID="C_nameLabel" runat="server" Text='<%# Eval("C_name") %>'  />
                    <br />
                    เบอร์โทร :
                <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    <br />
                    ชั้น :
                <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                    <br />
                    ที่นั่ง :
                <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
                    <br />
                    จำนวนคน :
                <asp:Label ID="C_numberLabel" runat="server" Text='<%# Eval("C_number") %>' />
                    <br />
                    วันที่-เวลา :
                <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
                    <br />
                    ประเภทการจอง :
                <asp:Label ID="booking_id_typeLabel" runat="server" Text='<%# Eval("booking_id_type") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="0" style="">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="">
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [C_name], [phone_number], [floor], [seat], [C_number], [book_date_time], [booking_id_type] FROM [Booking]"></asp:SqlDataSource>
    </div>
</asp:Content>

