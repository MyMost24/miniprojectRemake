<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViweMore.aspx.cs" Inherits="ViweMore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>รายละเอียด</h1>
    <div class="contrainer row" style="margin-top: 30px;">
        <div class="col-lg-6">
            ชื่อ:<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            เบอร์โทร:<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            ชั้น:<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            ที่นั่ง:<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            จำนวนคน:<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <br />
            วัน-เวลา:<asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            ประเภทการจอง:<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="500" Width="300" />
        </div>
        <div class="col-lg-6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="F_name" HeaderText="F_name" SortExpression="F_name" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="F_price" HeaderText="F_price" SortExpression="F_price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT        TOP (200) Food.F_name, book_food.Amount, Food.F_price
FROM            book_food INNER JOIN
                         Food ON book_food.F_id = Food.F_id
WHERE booking_id = @booking_id">
                <SelectParameters>
                    <asp:QueryStringParameter Name="booking_id" QueryStringField="booking_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

