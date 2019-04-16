<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking_food.aspx.cs" Inherits="Booking_food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

        <div class="row" style="margin-top:30px;">
            <div class="col-lg-7">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <td runat="server" style="">F_img:
                            <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                            <br />
                            F_name:
                            <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                            <br />
                            F_price:
                            <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                            <br />
                        </td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="">F_img:
                            <asp:TextBox ID="F_imgTextBox" runat="server" Text='<%# Bind("F_img") %>' />
                            <br />
                            F_name:
                            <asp:TextBox ID="F_nameTextBox" runat="server" Text='<%# Bind("F_name") %>' />
                            <br />
                            F_price:
                            <asp:TextBox ID="F_priceTextBox" runat="server" Text='<%# Bind("F_price") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">F_img:
                            <asp:TextBox ID="F_imgTextBox" runat="server" Text='<%# Bind("F_img") %>' />
                            <br />F_name:
                            <asp:TextBox ID="F_nameTextBox" runat="server" Text='<%# Bind("F_name") %>' />
                            <br />F_price:
                            <asp:TextBox ID="F_priceTextBox" runat="server" Text='<%# Bind("F_price") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="">F_img:
                            <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                            <br />
                            F_name:
                            <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                            <br />
                            F_price:
                            <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
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
                    <SelectedItemTemplate>
                        <td runat="server" style="">F_img:
                            <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                            <br />
                            F_name:
                            <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                            <br />
                            F_price:
                            <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price] FROM [Food]"></asp:SqlDataSource>
            </div>
            <div class="contrainer col-lg-4" style="background-color: white">
                <p>รายการอาหาร</p>
                <hr />
                <div class="row">
                    <p>ยอดรว</p>
                <div class="row contrainer" style="background-color:darkgray;height:150px">
                    <div class="col-sm-6" style="margin-top:5px;">ชื่อ</div> 
                    <div class="col-sm-3">จำนวน</div>       
                    <div class="col-sm-3">ราคา</div>       
                </div>
                    <p>ยอดรวม </p> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <p>ค่ามัดจำ(50%ของยอดรวม)</p> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <a href="Upload_slip.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Next</a>
               
                </div>
                 
                


                
            </div>

        </div>

</asp:Content>

