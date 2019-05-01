<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking_food.aspx.cs" Inherits="Booking_food" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row" style="margin-top: 30px;">
        <div class="col-lg-7" style="margin-left: 20px;">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <span style="" class="col-lg-3 text-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("F_img") %>' Width="160" Height="160" />
                        <br />

                        <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        <p class="h3 ; text-body">ราคา :</p>
                        <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
                        <br />
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="รายละเอียดสินค้า" CommandName='viewdetail' CommandArgument='<%# Eval("F_id") %>' />
                        <br />
                        <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="" class="row">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>

            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price], [F_id] FROM [Food]"></asp:SqlDataSource>
        </div>
        <div class="contrainer col-lg-4" style="background-color: white; left: 0px; top: 0px;">
            <p>รายการอาหาร</p>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="413px"  DataKeyNames="F_id"  OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="F_name" HeaderText="ชื่อ" SortExpression="F_name" />
                    <asp:BoundField DataField="Amount" HeaderText="จำนวน" SortExpression="Amount" />
                    <asp:BoundField DataField="F_price" HeaderText="ราคา" SortExpression="F_price" />
                    <asp:CommandField   ShowDeleteButton="true" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="H_id" Value='<%# Eval("F_id") %>'></asp:HiddenField>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                </Columns>

            </asp:GridView>
            <br />
            
            <p>ยอดรวม </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <p>ค่ามัดจำ(50%ของยอดรวม)</p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="Button2_Click" />

            <asp:ListView ID="ListView2" runat="server"></asp:ListView>

        </div>

    </div>


</asp:Content>

