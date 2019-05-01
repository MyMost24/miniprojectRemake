<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="OrderBill.aspx.cs" Inherits="OrderBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="contrainer">
        <div class=" row" style="margin-top: 30px;">
            <div class="col-lg-6 ">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <span style="">C_name:
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
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_money_slip") %>' Width="300" Height="500" />
                            <br />
                            <br />
                        </span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>

                </asp:ListView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT        TOP (200) Booking.C_name, Booking.phone_number, Booking.seat, Booking.floor, Booking.C_number, Booking.book_date_time, book_type.type_name, Booking.img_money_slip
FROM            Booking INNER JOIN
                         book_type ON Booking.booking_id_type = book_type.booking_type_id
WHERE        (Booking.booking_id = @booking_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="booking_id" QueryStringField="booking_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT        TOP (200) Food.F_name, book_food.Amount, Food.F_price
FROM            book_food INNER JOIN
                         Food ON book_food.F_id = Food.F_id
WHERE        (book_food.booking_id = @booking_id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="booking_id" QueryStringField="booking_id" />
                </SelectParameters>
            </asp:SqlDataSource>


            <div class="col-lg-6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="F_name" HeaderText="F_name" SortExpression="F_name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="F_price" HeaderText="F_price" SortExpression="F_price" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

