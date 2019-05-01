<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Q_Booking.aspx.cs" Inherits="Q_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 20px" >
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">

            <ItemTemplate>
                <td runat="server" style="">C_name:
                    <asp:Label ID="C_nameLabel" runat="server" Text='<%# Eval("C_name") %>' />
                    <br />
                    phone_number:
                    <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    <br />
                    floor:
                    <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                    <br />
                    seat:
                    <asp:Label ID="seatLabel" runat="server" Text='<%# Eval("seat") %>' />
                    <br />
                    C_number:
                    <asp:Label ID="C_numberLabel" runat="server" Text='<%# Eval("C_number") %>' />
                    <br />
                    book_date_time:
                    <asp:Label ID="book_date_timeLabel" runat="server" Text='<%# Eval("book_date_time") %>' />
                    <br />
                    booking_id_type:
                    <asp:Label ID="booking_id_typeLabel" runat="server" Text='<%# Eval("booking_id_type") %>' />
                    <br />
                    status_id:
                    <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                    <br />
                    <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Clear" CommandName="Clear_Button" CommandArgument='<%# Eval("booking_id") %>' />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [C_name], [phone_number], [floor], [seat], [C_number], [book_date_time], [booking_id_type], [status_id], [booking_id] FROM [Booking] WHERE ([status_id] = @status_id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="status_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

