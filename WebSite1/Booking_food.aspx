﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking_food.aspx.cs" Inherits="Booking_food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

        <div class="row" style="margin-top:30px;">
            <div class="col-lg-7" style="margin-left:20px;">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    
                    
                    <ItemTemplate>
                        <td runat="server" class="text-center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("F_img") %>' Height="150" Width="150" />
                            <br />
                            
                            <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                            <br />
                            ราคา :
                            <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                            <br />
                            <asp:TextBox  ID="Numitem" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Add" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price] FROM [Food]"></asp:SqlDataSource>
            </div>
            <div class="contrainer col-lg-4" style="background-color: white; left: 0px; top: 0px; height: 456px;">
                <p>รายการอาหาร</p>
                <hr />
                <div class="row">
                    <p>ยอดรวม</p>
                <div class="row contrainer" style="background-color:#ECFFFF; height:150px">
                    <div class="col-sm-6" style="margin-top:5px;">ชื่อ</div> 
                    <div class="col-sm-3">จำนวน</div>       
                    <div class="col-sm-3" style="left: 0px; top: 0px">ราคา</div>       
                </div>
                    <p>ยอดรวม </p> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <p>ค่ามัดจำ(50%ของยอดรวม)</p> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <a href="Upload_slip.aspx" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" style="background-color: #C0C0C0">Next</a>
               
                </div>
                 
                


                
            </div>

        </div>

</asp:Content>

